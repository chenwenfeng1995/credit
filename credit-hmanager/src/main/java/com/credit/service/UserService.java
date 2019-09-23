package com.credit.service;

import java.util.List;
import java.util.Map;

import com.credit.pojo.Users;

public interface UserService {
	
	//二审查询
	public List<Users> checkbylimit(Map map);
	//通过userid查所有
	public Users checkallbyuserid(Integer userid);
	//通过userid修改limit
	public Boolean updatelimit(Map map);
	//查询全部
	public List<Users> findall();
	
	//根据id查询user,三审后台详情
	public Users queryByidUsers(Integer userid);
	
	//修改后台三审通过
	public boolean updatefinal(Users users);
}
