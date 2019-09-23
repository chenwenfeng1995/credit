package com.credit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.credit.dao.FirstApplyDao;
import com.credit.pojo.FirstApply;
import com.credit.service.IFirstApplyService;
@Service
public class FirstApplyService implements IFirstApplyService{
	@Autowired
	private FirstApplyDao firstApplyDao;
	@Override
	public Integer getMaxId() {
		// TODO Auto-generated method stub
		return firstApplyDao.getMaxId();
	}
	@Override
	public boolean insertApply(FirstApply firstApply) {
		// TODO Auto-generated method stub
		return firstApplyDao.insertApply(firstApply);
	}

}
