package com.credit.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.credit.dao.IFirstApplyDAO;
import com.credit.pojo.FirstApply;
import com.credit.pojo.Users;
import com.credit.service.IFirstApplyService;

@Service
public class FirstApplyServiceImpl implements IFirstApplyService {
	
	@Autowired
	private IFirstApplyDAO applydao;

	@Override
	public List<FirstApply> findallApply(Map map) {
		// TODO Auto-generated method stub
		return applydao.findallApply(map);
	}

	@Override
	public FirstApply checkallbyuserid(Integer userid) {
		// TODO Auto-generated method stub
		return applydao.checkallbyuserid(userid);
	}

	@Override
	public List<FirstApply> findallApply(FirstApply firstApply) {
		// TODO Auto-generated method stub
		System.out.println(firstApply.getClientName());
		
		return applydao.findallApply(firstApply);
	}

	
}
