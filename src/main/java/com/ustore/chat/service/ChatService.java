package com.ustore.chat.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ustore.chat.dao.ChatDao;
import com.ustore.chat.dto.ChatDto;
import com.ustore.chat.dto.ChatRoomDto;


@Service
public class ChatService {

	@Autowired
	ChatDao chatDao;
	
	public void saveChat(ChatDto chat) {
		// 발신 히스토리 쌓기
		//chatDao.insertSendMsg();
		// 수신 히스토리 쌓기
		//chatDao.insertReMsg();
	}
	
	@Transactional
	public void makeRoom(ChatRoomDto chatRoomDto) {
		//예외 처리 하기
		chatDao.insertChatRoom(chatRoomDto);
		int roomIdx = chatRoomDto.getChatRoomIdx();
		for(String chatParticipants : chatRoomDto.getParticipaintList()) {
			chatDao.insertChatParticipants(roomIdx, chatParticipants);			
		} 
	}

}
