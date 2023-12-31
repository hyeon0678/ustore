package com.ustore.chat.handler;

import org.springframework.context.ApplicationListener;
import org.springframework.messaging.simp.broker.BrokerAvailabilityEvent;
import org.springframework.messaging.simp.stomp.StompBrokerRelayMessageHandler;

public class WebSocketSubscribeHandler implements ApplicationListener<BrokerAvailabilityEvent>{

	@Override
	public void onApplicationEvent(BrokerAvailabilityEvent event) {
		System.out.println("broker event");
		System.out.println(event.getSource());
		
	}
	

}
