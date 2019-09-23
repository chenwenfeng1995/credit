package com.credit.dao;

import org.apache.ibatis.annotations.Mapper;

import com.credit.pojo.Admin;

@Mapper
public interface IAdminDAO {
	
	//检查账号密码是否正确
	public Admin chcekAdmin(Admin admin);

}
