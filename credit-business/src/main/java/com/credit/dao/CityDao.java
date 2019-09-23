package com.credit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.credit.pojo.City;



@Mapper
public interface CityDao {

	public List<City>findallbyfather(String father);
	
	public City findallbycname(String name);
}
