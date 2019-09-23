package com.credit.service;

import java.util.List;
import java.util.Map;

import com.credit.pojo.Credit;

public interface FinalService {
	public Credit Queryimgpath (Integer userid);
	
	public List<Credit> QueryLike(Map<String, Object> map);
	
	public Credit Queryfinal(Integer userid);//三审后台详情查询
}
