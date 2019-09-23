package com.credit.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AccountDao {
	
	//根据用户的id查询账户上的钱
	public Double FindMoneyByUserid(Integer userid);
	
	
}
