package com.credit.service;

import java.util.List;

import com.credit.pojo.Users;

public interface UserService {

	//登录
	public Users login(String mobile);
	
	//注册
	public Boolean register(Users user);
	
	public List<Users> checkbylimit(String limit);
}
