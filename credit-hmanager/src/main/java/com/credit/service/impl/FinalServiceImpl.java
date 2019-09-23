package com.credit.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.credit.dao.FinalDao;
import com.credit.pojo.Credit;
import com.credit.service.FinalService;
@Service
public class FinalServiceImpl implements FinalService {

	@Autowired
	private FinalDao finaldao;
	

	@Override
	public List<Credit> QueryLike(Map<String, Object> map) {
		return finaldao.QueryLike(map);
	}


	@Override
	public Credit Queryimgpath(Integer userid) {
		return finaldao.Queryimgpath(userid);
	}


	@Override
	public Credit Queryfinal(Integer userid) {
		return finaldao.Queryfinal(userid);
	}



}
