package com.ustore.chat.service;

import java.sql.Timestamp;
import java.util.Collections;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ustore.chat.dao.ChatDao;
import com.ustore.chat.dto.ChatDto;
import com.ustore.chat.dto.ChatRoomDto;
import com.ustore.chat.dto.Participant;


@Service
public class ChatService {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	ChatDao chatDao;
	
	@Transactional
	public void saveChat(ChatDto chat) {
		// 발신 히스토리 쌓기
		int row = chatDao.insertSendMsg(chat);
		// 수신 히스토리 쌓기
		//수신 잘 들어가는 지 확인//ㅈㄷ
		List<String> receiveMembers = chatDao.selectReceiveMember(chat.getRoomNum(), chat.getSender());
		for(String member : receiveMembers) {
			chat.setReceiver(member);
			logger.info("room_num : "+chat.getRoomNum());
			row += chatDao.insertReceivedMsg(chat);	
		}
		
	}
	
	@Transactional
	public void makeRoom(List<Participant> list, String name) {
		//예외 처리 하기
		String roomName="";
		for(int i=0; i<list.size(); i++) {
			if(i==3) {
				break;
			}
			roomName += list.get(i).getName();
			if(i!=2) {
				roomName+=",";
			}
		}
		if(list.size()-3 > 0) {
			roomName += "외"+(list.size()-3)+"명";
		}
		
		logger.info(roomName);
		ChatRoomDto chatRoomDto = new ChatRoomDto();
		chatRoomDto.setChatRoomName(roomName);
		chatRoomDto.setRegBy(name);
		chatRoomDto.setIsIndividual(list.size()>1 ? "N":"Y");
		//만든 후 채팅방 생성
		chatDao.insertChatRoom(chatRoomDto);
		int roomIdx = chatRoomDto.getChatRoomIdx();
		for(Participant chatParticipants : list) {
			chatDao.insertChatParticipants(roomIdx, chatParticipants.getEmpIdx());			
		} 
		chatDao.insertChatParticipants(roomIdx, name);	
		
	}
	
	public List<ChatRoomDto> getChatRoomList(String name) {
// 채팅 룸 sorting하기 읽지 않은 개수 확인하기 또한 보내는건 읽음표시가 되어야한다또한 룸에 들어가있는 사라
//사람들의 읽음표시는 Y여야한다.
		List<ChatRoomDto> list = chatDao.selectChatRoomList(name);
		for(ChatRoomDto dto : list) {
			int i = dto.getMaxSentDate().compareTo(dto.getMaxReceivedDate());
			System.out.println(dto.getMaxSentDate().getTime());
			if(i>0) {
				
				//dto.setLastMsgTime(dto.getMaxSentDate().getNanos());
			}else if(i<0) {
				
			}else {
				
			}
		}
		
		//Collections.sort(list);
		return list;
	}

	
	public List<ChatDto> getChatData(int roomNum, String name) {
		return chatDao.selectChatHistory(roomNum,name);
	}

}
