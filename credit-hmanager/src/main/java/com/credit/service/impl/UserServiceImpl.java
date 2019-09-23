package com.credit.service.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.credit.dao.UserDao;
import com.credit.pojo.Users;
import com.credit.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	
	@Autowired
	private UserDao userDao;
	

	@Override
	public List<Users> checkbylimit(Map map) {
		// TODO Auto-generated method stub
		return userDao.checkbylimit(map);
	}


	@Override
	public Users checkallbyuserid(Integer userid) {
		// TODO Auto-generated method stub
		return userDao.checkallbyuserid(userid);
	}


	@Override
	public Boolean updatelimit(Map map) {
		// TODO Auto-generated method stub
		return userDao.updatelimit(map);
	}


	@Override
	public List<Users> findall() {
		// TODO Auto-generated method stub
		return userDao.findall();
	}




	@Override
	public Users queryByidUsers(Integer userid) {
		return userDao.queryByidUsers(userid);
	}


	@Override
	public boolean updatefinal(Users users) {
		return userDao.updatefinal(users);
	}

}
