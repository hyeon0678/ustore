package com.ustore;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.PropertySource;

@SpringBootApplication
@PropertySource("common.properties")
public class UstoreApplication {

	public static void main(String[] args) {
		SpringApplication.run(UstoreApplication.class, args);
	}

}
