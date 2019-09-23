package com.credit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.credit.dao.IAdminDAO;
import com.credit.dao.UserDao;
import com.credit.pojo.Admin;
import com.credit.pojo.Users;
import com.credit.service.IAdminService;
@Service
public class AdminServiceImpl implements IAdminService {
	
	@Autowired
	private IAdminDAO admindao;
	
	@Autowired
	private UserDao userDao;

	@Override
	public Admin chcekAdmin(Admin admin) {
		
		return admindao.chcekAdmin(admin);
	}


}
