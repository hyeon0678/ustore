package com.ustore.chat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.chat.dto.ChatDto;
import com.ustore.chat.dto.ChatRoomDto;

@Mapper
public interface ChatDao {

	void insertChatRoom(ChatRoomDto chatRoomDto);
	void insertChatParticipants(int chatRoomIdx, String chatParticipants);
	List<ChatRoomDto> selectChatRoomList(String name);
	List<String> selectReceiveMember(String roomNum, String sender);
	int insertReceivedMsg(ChatDto chat);
	int insertSendMsg(ChatDto chat);
	List<ChatDto> selectChatHistory(int roomNum, String name);

}
