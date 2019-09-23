package com.credit.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.credit.pojo.Credit;
@Mapper
public interface FinalDao {
	public Credit Queryimgpath (Integer userid);//查询upload的值进行分割
	
	public List<Credit> QueryLike(Map<String, Object> map);
	
	public Credit Queryfinal(Integer userid);//三审后台详情查询
}
