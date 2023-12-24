package com.ustore.fileSystem.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.ustore.fileSystem.dto.FileDto;

@Mapper
public interface FileDao {
	int saveFile(FileDto params);
}
