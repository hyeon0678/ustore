package com.ustore.config;

import java.nio.channels.Channel;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.Message;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.simp.config.ChannelRegistration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.messaging.support.ChannelInterceptor;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;

import com.ustore.handler.MyWebSocketHandler;

@Configuration
@EnableWebSocketMessageBroker
public class StompWebSocketConfig implements WebSocketMessageBrokerConfigurer{
	Logger logger = LoggerFactory.getLogger(getClass());
	
	
	@Override
	public void registerStompEndpoints(StompEndpointRegistry registry) {
		registry.addEndpoint("/ws").setAllowedOrigins("localhost").withSockJS();
		
	}

	@Override
	public void configureMessageBroker(MessageBrokerRegistry registry) {
		registry.enableSimpleBroker("/queue", "/topic", "/alarm");
		registry.setApplicationDestinationPrefixes("/app");
	}

//	@Override
//	public void configureClientInboundChannel(ChannelRegistration registration) {
//		registration.interceptors(new ChannelInterceptor() {
//
//			@Override
//			public Message<?> preSend(Message<?> message, MessageChannel channel) {
//				logger.info(message.getHeaders().toString());
//				logger.info(""+message.getPayload());
//				logger.info("=================="+channel.toString());
//				return ChannelInterceptor.super.preSend(message, channel);
//			}
//			
//		});
//		WebSocketMessageBrokerConfigurer.super.configureClientInboundChannel(registration);
//	}
	
	

}
