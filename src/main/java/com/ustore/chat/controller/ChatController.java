package com.ustore.chat.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ustore.chat.dto.ChatDto;
import com.ustore.chat.dto.Participant;
import com.ustore.chat.service.ChatService;

@Controller
@RequestMapping("/chat")
public class ChatController {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	private ChatService chatService;
	
	public ChatController(SimpMessageSendingOperations messageTemplete, ChatService chatService) {
		this.chatService = chatService;
	}
	
	@GetMapping()
	public String chatForm() {
		return "chat/chat";
	}
	
	@GetMapping("/chatRoomList.ajax")
	@ResponseBody
	public HashMap<String, Object> chatRoomList(Principal principal) {
		logger.info(principal.getName());
		HashMap<String, Object> result = new HashMap<String, Object>();
		result.put("list", chatService.getChatRoomList(principal.getName()));
		return result;
	}
	
	@PostMapping("/makeRoom.ajax")
	@ResponseBody
	public HashMap<String, Object> makeRoom(@RequestParam Map param, Principal principal) throws JsonMappingException, JsonProcessingException {
		logger.info(param.get("particList").toString());
		String json = param.get("particList").toString();
		ObjectMapper mapper = new ObjectMapper();
		List<Participant> list = mapper.readValue(json, new TypeReference<ArrayList<Participant>>(){});
		
		// 누가 만든건지 세션에서 가져와야함 
		chatService.makeRoom(list, principal.getName());
		return null;
	}
	
	@GetMapping("/chatList.ajax")
	@ResponseBody
	public HashMap<String, Object> chatList(@RequestParam int roomNum, Principal principal) {
		logger.info(principal.getName());
		logger.info("entered roomNum : "+roomNum);
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<ChatDto> chatList = chatService.getChatData(roomNum, principal.getName());
		result.put("chatdata", chatList);
		return result;
	}
	
}
