package com.ustore.utils;

import java.security.SecureRandom;

public class MakeRandomPw {
	private static final char[] rndAllCharacters = new char[]{
	        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
	        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
	        'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
	        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
	        'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
	        '@', '$', '!', '%', '*', '?', '&'
	};
	
	public String makeRandomPw() {
		  SecureRandom random = new SecureRandom();
		    StringBuilder stringBuilder = new StringBuilder();

		    int rndAllCharactersLength = rndAllCharacters.length;
		    for (int i = 0; i < 12; i++) {
		        stringBuilder.append(rndAllCharacters[random.nextInt(rndAllCharactersLength)]);
		    }

		    return stringBuilder.toString();
	}

}
