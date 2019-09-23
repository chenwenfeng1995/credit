package com.credit.dao;

import org.apache.ibatis.annotations.Mapper;

import com.credit.pojo.FirstApply;
@Mapper
public interface FirstApplyDao {
	//将问卷信息插入数据库
	public boolean insertApply(FirstApply firstApply);
	//得到最大的id
	public Integer getMaxId();
}
