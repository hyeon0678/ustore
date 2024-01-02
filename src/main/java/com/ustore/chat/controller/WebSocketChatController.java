package com.ustore.chat.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.stereotype.Controller;

import com.ustore.chat.dto.ChatDto;
import com.ustore.chat.service.ChatService;

@Controller
public class WebSocketChatController {
	
	Logger logger = LoggerFactory.getLogger(getClass());

	private SimpMessageSendingOperations messageTemplete;
	private ChatService chatService;
	
	public WebSocketChatController(SimpMessageSendingOperations messageTemplete, ChatService chatService) {
		this.chatService = chatService;
		this.messageTemplete = messageTemplete;
	}
	
	@MessageMapping("/chat")
	public void message(ChatDto chat) {
		logger.info(chat.toString());
		logger.info("{}, {}, {}",chat.getRoomNum(), chat.getSender(), chat.getData());
		ChatDto chatData = chatService.saveChat(chat);
		messageTemplete.convertAndSend("/topic/chat/"+chat.getRoomNum(), chatData);
	}
}
