package com.ustore.products.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.products.dto.StockDto;

@Mapper
public interface StockDao {

	ArrayList<StockDto> list();

	Object stock_insert(String proNum);

	void stock_insert2(StockDto dto);

}
