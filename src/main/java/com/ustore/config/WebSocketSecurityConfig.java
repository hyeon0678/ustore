package com.ustore.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.security.config.annotation.web.messaging.MessageSecurityMetadataSourceRegistry;
import org.springframework.security.config.annotation.web.socket.AbstractSecurityWebSocketMessageBrokerConfigurer;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;

//@Configuration
//@EnableWebSocketMessageBroker
public class WebSocketSecurityConfig extends AbstractSecurityWebSocketMessageBrokerConfigurer {
	
Logger logger = LoggerFactory.getLogger(getClass());
	
	
	@Override
	public void registerStompEndpoints(StompEndpointRegistry registry) {
		registry.addEndpoint("/ws").setAllowedOrigins("localhost").withSockJS();
		
	}
	
  @Override
    protected boolean sameOriginDisabled() {
        return true;
    }

	@Override
	public void configureMessageBroker(MessageBrokerRegistry registry) {
		registry.enableSimpleBroker("/queue", "/topic", "/alarm");
		registry.setApplicationDestinationPrefixes("/app");
		registry.setUserDestinationPrefix("/user");
	}

	@Override
	protected void configureInbound(MessageSecurityMetadataSourceRegistry messages) {
		messages.simpMessageDestMatchers("/user/**").authenticated();
	}	
	
	
}
