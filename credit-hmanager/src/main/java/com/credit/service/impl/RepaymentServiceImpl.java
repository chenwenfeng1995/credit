package com.credit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.credit.dao.RepayDao;
import com.credit.pojo.Repayment;
import com.credit.service.RepayService;
@Service
public class RepaymentServiceImpl implements RepayService {

	@Autowired
	private RepayDao repayDao;

	@Override
	public Repayment FindRepayById(Integer userid) {
		return repayDao.FindRepayById(userid);
	}
	

}
