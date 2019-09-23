package com.credit.service;

import com.credit.pojo.FirstApply;

public interface IFirstApplyService {
	//将问卷信息插入数据库
	public boolean insertApply(FirstApply firstApply);
	//得到最大的id
	public Integer getMaxId();
}
