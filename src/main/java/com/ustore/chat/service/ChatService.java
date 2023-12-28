package com.ustore.chat.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public void saveChat(ChatDto chat) {
		// 발신 히스토리 쌓기
		//chatDao.insertSendMsg();
		// 수신 히스토리 쌓기
		//chatDao.insertReMsg();
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
		chatRoomDto.setIsIndividual(list.size()>1 ? "Y":"N");
		chatRoomDto.setIsIndividual(list.size()>1 ? "N":"Y");
		//만든 후 채팅방 생성
		chatDao.insertChatRoom(chatRoomDto);
		int roomIdx = chatRoomDto.getChatRoomIdx();
		for(Participant chatParticipants : list) {
			chatDao.insertChatParticipants(roomIdx, chatParticipants.getEmpIdx());			
		} 
		chatDao.insertChatParticipants(roomIdx, name);	
		
	}
	
//	private List<ChatRoomDto> getChatList(String name) {
//		return 
//	}

}
