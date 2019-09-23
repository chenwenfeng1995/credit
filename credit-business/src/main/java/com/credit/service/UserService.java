package com.credit.service;

import com.credit.pojo.Users;

public interface UserService {

	public Boolean insertusers(Users user);
	
	public Users checkall(Integer id);
	
	public Boolean updatelimit(Users user);
}
