package com.credit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.credit.pojo.Credit;
@Mapper
public interface UploadDao {
	 	public boolean updateupload(Credit credit);
	 	
	 	public Credit queryUpload(Credit credit);
	 	
	 	public Integer countuserid();
	 	
	 	public Boolean insertincredit(Credit credit);
}
