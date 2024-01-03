package com.ustore.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.user.SimpUserRegistry;

public class WebSocketConfig {
	
	@Autowired
	SimpUserRegistry userRegistry;
	
	public void printSubscription() {
		userRegistry.getUsers().forEach(user->{
			user.getSessions().forEach(session->{
				System.out.println("===================+"+session.getSubscriptions());
			});
		});
	}

}
