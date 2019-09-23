package com.credit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.credit.pojo.Bankreduce;
import com.credit.pojo.Repayment;

@Mapper
public interface RepaymentDao {

	public  List<Repayment> getRepaymentByUserid(Integer userid);
	 
	public Bankreduce getPeriodsNo(Bankreduce bankreduce);
	
	public Repayment getRepaymentByRid(Integer rid);
}
