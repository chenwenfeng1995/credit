package com.credit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.credit.pojo.Repayment;

@Mapper
public interface RepayDao {
	public Repayment FindRepayById(Integer userid);
	
}
