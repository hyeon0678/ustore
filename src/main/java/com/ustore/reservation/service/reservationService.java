package com.ustore.reservation.service;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustore.reservation.dao.reservationDao;
import com.ustore.reservation.dto.reservationDto;
import com.ustore.utils.DateCalculator;

@Service
public class reservationService {
	@Autowired reservationDao reservationDao;
	Logger logger=LoggerFactory.getLogger(getClass());
	
	public boolean addResource(HashMap<String, String> params) {
		int row = reservationDao.addResource(params);
		if(row !=1) {
			return false;
		}
		else {
			return true;
		}
	}

	public ArrayList<reservationDto> resourceInfo() {
		return reservationDao.resourceInfo();
	}

	public boolean delResource(String resourceIdx, String empIdx) {
		
		int row =reservationDao.delResource(resourceIdx,empIdx);
		if(row!=1) {
			return false;
		}else {
			return true;
		}
	}

}
