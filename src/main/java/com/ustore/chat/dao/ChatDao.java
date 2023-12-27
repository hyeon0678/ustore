package com.ustore.chat.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.chat.dto.ChatRoomDto;

@Mapper
public interface ChatDao {

	void insertChatRoom(ChatRoomDto chatRoomDto);
	void insertChatParticipants(int chatRoomIdx, String chatParticipants);

}
