package com.credit.dao;

import org.apache.ibatis.annotations.Mapper;

import com.credit.pojo.Users;


@Mapper
public interface UserDao {

	public Boolean insertusers(Users user);
	
	public Users checkall(Integer  id);
	
	public Boolean updatelimit(Users user);
	
}
