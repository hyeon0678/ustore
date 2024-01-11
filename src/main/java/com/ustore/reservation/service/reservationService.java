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

	public boolean addBooking(HashMap<String, String> params) {
		int row =reservationDao.addBooking(params);
		if(row != 1) {			
			return false;
		}else {
			return true;
		}
	}

	public ArrayList<reservationDto> bookingInfo(String param, String string, String resourceType) {
		return reservationDao.bookingInfo(param,string,resourceType);
	}

	public ArrayList<reservationDto> infoBooking(String bookingIdx) {
		return reservationDao.infoBooking(bookingIdx);
	}

	public boolean infoBookingDel(String bookingIdx) {
		int row = reservationDao.infoBookingDel(bookingIdx);
		if(row != 1) {			
			return false;
		}else {
			return true;
		}
	}



}
