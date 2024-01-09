package com.ustore.request.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.pos.dto.PosDto;

@Mapper
public interface RequestDao {

	int pay(HashMap<String, String> params);

	int updatePoints(int point, String string2);

	ArrayList<PosDto> payCart(String string);

	void inPaymentsDetail(Map<String, Object> map);

	void stockDown(String productId, String quantity);

	void delCart(String string);

	void refund(String iamportIdx, int findDefindCode);

	ArrayList<PosDto> refundPaymentsDetail(String iamportIdx);

	void stockUp(String productId, String quantity);

	HashMap<String, String> refundPointSelect(String iamportIdx);

	void refundUpdatePoint(HashMap<String, String> map);


}
