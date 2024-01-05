package com.ustore.request.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Base64;
import org.springframework.stereotype.Component;
import org.json.JSONObject;

@Component
public class UtilToken {
	
	
	// 이 부분은 프로그램이 실행될 때 호출되는 메서드 이다.
	// 지정된 API 키와 시크릿 키를 사용하여 토큰을 얻고, 얻은 토큰을 콘솔에 출력하는 단순한 테스트를 수행
	public static boolean main(String iamportIdx) {
		try {
			String apiKey="2843387763527221";
			String secretKey = "AeZSe3vvfDiUfjxsG1rSCMTOJeNcQk7E55VSZcWtptuRx2vnzNH7UhMFu5CPxpg6fildq2ddsnAbU5rK";
			
			String token = getToken(apiKey, secretKey);
			System.out.println("토큰 확인"+token);
			return list(token,iamportIdx);
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
	
	// getToken 메서드는 아임포트 API에 대한 토큰을 얻는 역할
	// HttpURLConnection을 이용하여 API에 POST 요청을 보내고, 응답을 읽어서 토큰을 추출하여 반환
	private static String getToken(String apiKey, String secretKey) throws IOException {
		URL url = new URL("https://api.iamport.kr/users/getToken");       // URL 객체 생성
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();   //openConnection 메서드를 호출하여 URL 객체로부터 HttpURLConnection 객체를 얻어 HTTP 연결을 나타낸다.

        conn.setRequestMethod("POST");  // HTTP 요청 방식을 post로 설정
        conn.setDoOutput(true);  // 출력 스트림 사용여부를 나타낸다. get 방식에서는 필요가 없지만 post 방식의 데이터를 보낼때는 필요하다.
        									// post 요청을 보낼때 요청 바디에 데이터를 쓸 수 있게 한다.


        conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");   // HTTP 요청 헤더에 "Content-Type"을 설정
         																													//  하고 여기서는 폼 데이터를 전송하고 있으므로 "application/x-www-form-urlencoded"로 설정
        
        conn.setRequestProperty("Authorization", createBasicAuthHeader(apiKey, secretKey));  // HTTP 요청 헤더에 "Authorization"을 설정
        																														   // 이는 Basic Authentication을 사용하여 API 키와 시크릿 키를 전달하는 부분입니다.

        
        // OutputStream을 사용하여 요청 바디에 데이터를 쓴다.. 여기서는 API 키와 시크릿 키를 포함한 데이터를 전송
        String data="imp_key=" + apiKey + "&imp_secret=" + secretKey;
        try (OutputStream os = conn.getOutputStream()) {
            os.write(data.getBytes("UTF-8"));
        }
        

        String response = readResponse(conn); // readResponse 메서드를 호출하여 HTTP 연결에서 응답을 읽어온다. 이 응답은 문자열 형태로 반환
        System.out.println("response HTTP 연결 응답 : "+response);
        
        String token = extractTokenFromResponse(response); // 응답 문자열에서 토큰을 추출하기 위해 extractTokenFromResponse 메서드를 호출
        return token;
	}
	
	
	
	// extractTokenFromResponse 메서드는 API 응답에서 토큰을 추출
	// JSONObject 클래스를 사용하여 JSON 형식의 응답을 파싱하고, 특정 필드를 추출
	private static String extractTokenFromResponse(String response) {
		 try {
		        JSONObject jsonResponse = new JSONObject(response);  //  주어진 문자열 response를 사용하여 JSON 형식의 응답을 파싱하여 JSONObject를 생성
		        
		        String token = jsonResponse.getJSONObject("response").getString("access_token");  // "response" 키의 값에서 "access_token" 키의 값을 가져와서 문자열로 저장
		        return token;
		    } catch (Exception e) {
		    	
		    	// 예외가 발생시 오류처리 코드 작성
		        e.printStackTrace(); 
		        return null;
		    }
	}
	
	
	
	
	// readResponse 메서드는 HTTP 연결에서 응답을 읽어와서 문자열로 반환
	// BufferedReader를 사용하여 한 줄씩 읽어와서 StringBuilder에 추가한 후 최종적으로 문자열로 변환하여 반환
	private static String readResponse(HttpURLConnection conn) throws IOException {
		  StringBuilder response = new StringBuilder();  // StringBuilder 객체를 생성하여 응답을 저장할 준비

		  	// try-with-resources 구문을 사용하여 BufferedReader를 생성
		    try (BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()))) {
		        String line;  // BufferedReader를 사용하여 한 줄씩 읽어와서 StringBuilder에 추가
		        while ((line = reader.readLine()) != null) {
		            response.append(line);
		        }
		    }
		    // StringBuilder에 저장된 응답을 문자열로 변환하여 반환
		    return response.toString();
	}
	
	
	
	
	// createBasicAuthHeader 메서드는 API 키와 시크릿 키를 사용하여 Basic Authentication 헤더를 생성
	// API 키와 시크릿 키를 연결한 후 Base64로 인코딩하여 Basic Authentication 헤더 값을 반환
	private static String createBasicAuthHeader(String apiKey, String secretKey) {
		String credentials = apiKey + ":" + secretKey;  // API 키와 시크릿 키를 콜론(:)으로 이어붙여 하나의 문자열로 만듬
		
        byte[] credentialsBytes = credentials.getBytes();  // 문자열을 바이트 배열로 변환
        
        // Base64 인코딩을 사용하여 바이트 배열을 문자열로 변환
        String encodedCredentials = Base64.getEncoder().encodeToString(credentialsBytes);
        
     // Basic 인증 헤더의 형식에 맞게 문자열을 생성하여 반환
        return "Basic " + encodedCredentials;
	}
	
	
	public static boolean list(String accessToken, String iamportIdx) {
        try {
            String impUid = iamportIdx; // 취소할 결제의 imp_uid로 변경
            String apiEndpoint = "https://api.iamport.kr/payments/cancel";
            // 결제 취소 요청
            String cancellationResult = cancelPayment(apiEndpoint, accessToken, impUid);
            System.out.println("결제 취소 결과: " + cancellationResult);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static String cancelPayment(String apiEndpoint, String accessToken, String impUid) throws IOException {
        // 결제 취소 요청을 위한 HTTP 요청 설정
        URL url = new URL(apiEndpoint);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
        conn.setDoOutput(true);

        // 결제 취소 요청 바디 작성
        String requestBody = "imp_uid=" + impUid;
        try (OutputStream os = conn.getOutputStream()) {
            os.write(requestBody.getBytes("UTF-8"));
        }

        // 응답을 읽어오기
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()))) {
            StringBuilder response = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                response.append(line);
            }
            return response.toString();
        }
    }
    
    
	
}
