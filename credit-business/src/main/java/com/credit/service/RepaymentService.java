package com.credit.service;

import java.util.List;

import com.credit.pojo.Bankreduce;
import com.credit.pojo.Repayment;


public interface RepaymentService {
	public  List<Repayment> getRepaymentByUserid(Integer userid);
	 
	public Bankreduce getPeriodsNo(Bankreduce bankreduce);
	
	public Repayment getRepaymentByRid(Integer rid);
}
