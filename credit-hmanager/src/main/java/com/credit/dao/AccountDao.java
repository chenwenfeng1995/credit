package com.credit.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.credit.pojo.Account;
import com.credit.pojo.Credit;
@Mapper
public interface AccountDao {
	
	//通过userid查找账户现有金额
	public Account findMoneyByuserid(Integer userid);
	
	//通过userid修改账户金额:现有金额+借款金额
	public boolean updateMonetyByuserid(Map<String,Object> map);

}
