package com.credit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.credit.pojo.Province;


@Mapper
public interface ProvinceDao {

	public List<Province> findall();
	
	public Province findallbypname(String pname);
}
