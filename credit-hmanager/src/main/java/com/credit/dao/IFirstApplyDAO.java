package com.credit.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.credit.pojo.FirstApply;
import com.credit.pojo.Users;

@Mapper
public interface IFirstApplyDAO {
	
	//通过多个条件查询对象
	public List<FirstApply> findallApply(Map map);

	//通过userid查所有
	public FirstApply checkallbyuserid(Integer userid);
	
	//通过多个条件查询对象
	public List<FirstApply> findallApply(FirstApply firstApply);
	
}
