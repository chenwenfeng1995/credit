package com.credit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.credit.dao.RepaymentDao;
import com.credit.pojo.Bankreduce;
import com.credit.pojo.Repayment;
import com.credit.service.RepaymentService;


@Service
public class RepaymentServiceImpl implements RepaymentService {
	@Autowired
	private RepaymentDao repaymentDao;
	
	
	@Override
	public Bankreduce getPeriodsNo(Bankreduce bankreduce) {
		return repaymentDao.getPeriodsNo(bankreduce);
	}
	@Override
	public Repayment getRepaymentByRid(Integer rid) {
		return repaymentDao.getRepaymentByRid(rid);
	}
	@Override
	public List<Repayment> getRepaymentByUserid(Integer userid) {
		return repaymentDao.getRepaymentByUserid(userid);
	}

}
