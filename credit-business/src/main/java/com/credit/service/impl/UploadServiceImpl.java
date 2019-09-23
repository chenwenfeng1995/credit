package com.credit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.credit.dao.UploadDao;
import com.credit.pojo.Credit;
import com.credit.service.UploadService;
@Service
public class UploadServiceImpl implements UploadService {
	
	@Autowired
	private UploadDao uploaddao;
	@Override
	public boolean updateupload(Credit credit) {
	
		return uploaddao.updateupload(credit);
	}
	@Override
	public Credit queryUpload(Credit credit) {
		
		return uploaddao.queryUpload(credit);
	}
	@Override
	public Integer countuserid() {
		// TODO Auto-generated method stub
		return uploaddao.countuserid();
	}
	@Override
	public Boolean insertincredit(Credit credit) {
		// TODO Auto-generated method stub
		return uploaddao.insertincredit(credit);
	}
	
	

}
