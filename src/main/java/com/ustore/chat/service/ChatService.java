package com.ustore.chat.service;

import java.sql.Timestamp;
import java.util.Collections;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ustore.chat.dao.ChatDao;
import com.ustore.chat.dto.ChatDto;
import com.ustore.chat.dto.ChatRoomDto;
import com.ustore.chat.dto.Participant;
import com.ustore.config.WebSocketConfig;


@Service
public class ChatService {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	private final ChatDao chatDao;
	private final WebSocketConfig config;
	private final SimpMessageSendingOperations messageTemplete;
	
	
	
	public ChatService(ChatDao chatDao, WebSocketConfig config, SimpMessageSendingOperations messageTemplete) {
		super();
		this.chatDao = chatDao;
		this.config = config;
		this.messageTemplete = messageTemplete;
	}

	@Transactional
	public ChatDto saveChat(ChatDto chat) {
		
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		chat.setSendDate(timestamp);
		int row = chatDao.insertSendMsg(chat);
		
		List<String> receiveMembers = chatDao.selectReceiveMember(chat.getRoomNum(), chat.getSender());
		for(String member : receiveMembers) {
			chat.setReceiver(member);
			if(chat.getSender().equals("system")) {
				chat.setRead("Y");
			}else {
				chat.setRead("N");
			}
			logger.info("room_num : "+chat.getRoomNum());
			row += chatDao.insertReceivedMsg(chat);	
		}
		
		if(row<1) {
			chat = new ChatDto();
			chat.setSender("server");
			chat.setData("FAIL");
			return chat;
		}
		return chat;
	}
	
	@Transactional
	public String makeRoom(List<Participant> list, String emp_idx) {
		String roomemp_idx="";
		int row = 0;
		logger.info(roomemp_idx);
		
		if(list.size()==1 && isExsitIndividualRoom(list, emp_idx)>0) {
			return "EXIST";
		}
		
		ChatRoomDto chatRoomDto = new ChatRoomDto();
		chatRoomDto.setChatRoomName(roomemp_idx);
		chatRoomDto.setRegBy(emp_idx);
		chatRoomDto.setIsIndividual(list.size()>1 ? "N":"Y");
		//만든 후 채팅방 생성
		row+=chatDao.insertChatRoom(chatRoomDto);
		int roomIdx = chatRoomDto.getChatRoomIdx();
		for(Participant chatParticipants : list) {
			row+=chatDao.insertChatParticipants(roomIdx, chatParticipants.getEmpIdx());			
		} 
		if(!list.contains(emp_idx)) {
			row+=chatDao.insertChatParticipants(roomIdx, emp_idx);	
		}
		
		ChatDto wellcomMsg = new ChatDto();
		wellcomMsg.setRoomNum(Integer.toString(roomIdx));
		wellcomMsg.setSender("system");
		wellcomMsg.setData("");
		saveChat(wellcomMsg);
		
		if(row>0) {
			return "SUCCESS";
		}
		
		return "FAIL";
	}
	
	public int isExsitIndividualRoom(List<Participant> list,String emp_idx) {
		List<Integer> myIndividualRoomList = chatDao.selectIndividual(emp_idx);
		String orderIdx = list.get(0).getEmpIdx();
		int row = 0;
		for(int i : myIndividualRoomList) {
			row = chatDao.selectIndividualRoomExsit(i,orderIdx);
		}
		logger.info("-----------------------------selectIndividualRoomCount : {}", row);
		return row;
	}
	
	public List<ChatRoomDto> getChatRoomList(String emp_idx) {
		List<ChatRoomDto> list = chatDao.selectChatRoomList(emp_idx);
		List<Participant> participant = null;
		for(ChatRoomDto dto : list) {
			participant = chatDao.selectParticipants(dto.getChatRoomIdx());
			String roomName = setRoomName(participant, dto.getIsIndividual(), emp_idx);
			dto.setChatRoomName(roomName);
		}
	
		for(ChatRoomDto dto : list) {
			int i = dto.getMaxSentDate().compareTo(dto.getMaxReceivedDate());
			long maxSentDate = dto.getMaxSentDate().getTime();
			long maxReceivedDate =  dto.getMaxReceivedDate().getTime();
			if(i>0) {
				dto.setLastMsgTime(maxSentDate);
			}else if(i<0) {
				logger.info("lastMsgTime"+dto.getMaxReceivedDate().getTime());
				dto.setLastMsgTime(maxReceivedDate);
			}else {
				dto.setLastMsgTime(maxSentDate);
			}
		}
		
		Collections.sort(list);
		config.printSubscription();
		return list;
	}

	
	public String setRoomName(List<Participant> participant, String isIndividual, String emp_idx) {
		String roomName = "";
		if(isIndividual.equals("Y")) {
			for(int i=0; i<participant.size(); i++) {
				if(!participant.get(i).getEmpIdx().equals(emp_idx)) {
					return participant.get(i).getEmpInfo();
				}
			}
		}else {
			for(int i=0; i<participant.size(); i++) {
				if(i == 3) {
					break;
				}
				roomName+=participant.get(i).getEmpInfo();					
				if(i != 2) {
					roomName+=",";
				}
			}
			
		}
		if(participant.size()>3) {
			roomName+=" 외 "+(participant.size()-3)+"명";
		}
		return roomName;
	}
	
	
	public List<ChatDto> getChatData(int roomNum, String emp_idx) {
		chatDao.updateToRead(roomNum, emp_idx);
		List<ChatDto> chatList = chatDao.selectChatHistory(roomNum,emp_idx);
		return chatList;
	}
	
	
	public List<Participant> getParticipantLists(int roomNum) {
		List<Participant> participants = chatDao.selectParticipants(roomNum);
		return participants;
	}

	
	public String quitRoom(int roomNum, String name) {
		
		int row = chatDao.deleteParticipants(roomNum,name);
		logger.info("-------------------------------------deleteParticipants {}", row);
		if(row>0) {
			String userInfo = chatDao.selectUserInfo(name);
			ChatDto leaveMsg = new ChatDto();
			leaveMsg.setRoomNum(Integer.toString(roomNum));
			leaveMsg.setSender("system");
			leaveMsg.setData(userInfo+"님이 채팅방을 나가셨습니다");
			saveChat(leaveMsg);
			messageTemplete.convertAndSend("/topic/chat/"+roomNum,leaveMsg);
			
		}
		return "SUCCESS";
	}

	public void setRead(int roomNum, int chatIdx, String name) {
		chatDao.setRead(roomNum, chatIdx, name);
	}

}
