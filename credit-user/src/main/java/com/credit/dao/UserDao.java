package com.credit.dao;



import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.credit.pojo.Users;

@Mapper
public interface UserDao {
	
	//登录
	public Users login(String mobile);

	//注册
	public Boolean register(Users user);
	
	//通过limit查询user
	public List<Users> checkbylimit(String limit);
}
