package com.ustore.reservation.dao;

import java.security.Principal;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.reservation.dto.reservationDto;

@Mapper
public interface reservationDao {

	int addResource(HashMap<String, String> params);

	ArrayList<reservationDto> resourceInfo();

	int delResource(String resourceIdx, String empIdx);


}
