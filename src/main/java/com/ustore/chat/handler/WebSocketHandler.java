package com.ustore.chat.handler;

import java.util.HashSet;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.AbstractWebSocketHandler;

@Component
public class WebSocketHandler extends AbstractWebSocketHandler{
	Logger logger = LoggerFactory.getLogger(getClass());
	private Set<WebSocketSession> activeSessions = new HashSet<>();

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
    	logger.info("session connect : "+session.toString());
        activeSessions.add(session);
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        activeSessions.remove(session);
    }

    // 추가적인 로직이 필요하다면 여기에 구현...

    // 연결된 세션 확인 함수
    public Set<WebSocketSession> getActiveSessions() {
        return activeSessions;
    }
}
