package com.ustore.member.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.member.dto.MemberDto;

@Mapper
public interface MemberDao {

	int joinnum(HashMap<String, String> params);

	int joinbis(HashMap<String, String> params);

	int cusnum(HashMap<String, String> params);

	ArrayList<HashMap<String, String>> listall(int pageState);

	HashMap<String, String> detail(int idx);

	ArrayList<HashMap<String, String>> cussearch(String keyword, int state);

	HashMap<String, String> update(int idx);

	int updatesave(HashMap<String, String> params);

	int del(int idx);

	int newdate(int idx, int gradeidx);

	HashMap<String, String> filefind(int idx);

	ArrayList<HashMap<String, String>> productlistcall(int memberidx, String startdate, String enddate);

	void pointinsert(int cusnum);

	int cuscount();

	int findnum(int idx);

	ArrayList<HashMap<String, String>> pointlistcall(int memberidx, String startdate, String enddate);

	String sumpoint(int idx);

	ArrayList<HashMap<String, String>> detailbill(String paymentidx);

	HashMap<String, String> billlist(String paymentidx);
	

}
