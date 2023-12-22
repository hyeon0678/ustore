package com.ustore.utils.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.utils.dto.FileDto;

@Mapper
public interface FileDao {
	int saveFile(FileDto params);
}
