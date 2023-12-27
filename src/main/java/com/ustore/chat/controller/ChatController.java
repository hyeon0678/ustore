package com.ustore.chat.controller;

import java.security.Principal;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.ustore.chat.dto.ChatDto;
import com.ustore.chat.dto.ChatRoomDto;
import com.ustore.chat.service.ChatService;

@Controller
public class ChatController {
	Logger logger = LoggerFactory.getLogger(getClass());

	private SimpMessageSendingOperations messageTemplete;
	private ChatService chatService;
	
	public ChatController(SimpMessageSendingOperations messageTemplete, ChatService chatService) {
		this.chatService = chatService;
		this.messageTemplete = messageTemplete;
	}
	
	@MessageMapping("/chat")
	public void message(ChatDto chat) {
		logger.info("{}, {}, {}",chat.getRoomNum(), chat.getSender(), chat.getData());
		chatService.saveChat(chat);
		messageTemplete.convertAndSend("/topic/chat/"+chat.getRoomNum(), chat.getData());
	}
	
	@PostMapping("/chat/makeRoom")
	public void makeRoom(ChatRoomDto chatRoomDto, Principal principal) {
		// 누가 만든건지 세션에서 가져와야함 
		logger.info("{}, {}, {}",chatRoomDto.getChatRoomIdx(), chatRoomDto.getChatRoomName(), principal.getName());
		chatService.makeRoom(chatRoomDto);
	}
	
}
