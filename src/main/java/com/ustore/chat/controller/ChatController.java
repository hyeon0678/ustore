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
import org.springframework.web.bind.annotation.CrossOrigin;
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
import com.ustore.config.WebSocketConfig;
import com.ustore.handler.MyWebSocketHandler;

@Controller
@RequestMapping("/chat")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class ChatController {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	private ChatService chatService;
	private WebSocketConfig config;
	
	
	public ChatController(ChatService chatService, WebSocketConfig config) {
		this.chatService = chatService;
		this.config = config;
	}
	
	@GetMapping()
	public String chatForm() {
		return "chat/chat";
	}
	
	@GetMapping("/chatRoomList.ajax")
	@ResponseBody
	public HashMap<String, Object> chatRoomList(Principal principal) {
		logger.info(principal.getName());
		MyWebSocketHandler handler = new MyWebSocketHandler();
		logger.info(handler.getActiveSessions().toString());
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
		
		String msg = chatService.makeRoom(list, principal.getName());
		HashMap<String, Object> result = new HashMap<String, Object>();
		result.put("result", msg);
		return result;
	}
	
	@GetMapping("/chatList.ajax")
	@ResponseBody
	public HashMap<String, Object> chatList(@RequestParam int roomNum, Principal principal) {
		logger.info(principal.getName());
		logger.info("entered roomNum : "+roomNum);
		config.printSubscription();
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<ChatDto> chatList = chatService.getChatData(roomNum, principal.getName());
		result.put("chatdata", chatList);
		
		return result;
	}
	
	@GetMapping("/participant.ajax")
	@ResponseBody
	public HashMap<String, Object> participantList(@RequestParam int roomNum, Principal principal) {
		logger.info(principal.getName());
		logger.info("entered roomNum : "+roomNum);
		HashMap<String, Object> result = new HashMap<String, Object>();
		List<Participant> participants = chatService.getParticipantLists(roomNum);
		result.put("participants", participants);
		return result;
	}
	
	@GetMapping("/quitRoom.ajax")
	@ResponseBody
	public HashMap<String, Object> quitRoom(@RequestParam int roomNum, Principal principal){
		logger.info("quitRoom : {}, {}",principal.getName(), roomNum);
		HashMap<String, Object> result = new HashMap<String, Object>();
		String msg = chatService.quitRoom(roomNum, principal.getName());
		
		result.put("result", msg);
		return result;
	}
	
	@GetMapping("/setRead.ajax")
	@ResponseBody
	public HashMap<String, Object> setRead(@RequestParam int roomNum, @RequestParam int chatIdx, Principal principal){
		HashMap<String, Object> result = new HashMap<String, Object>();
		chatService.setRead(roomNum, chatIdx, principal.getName());
		return result;
	}
	
}
