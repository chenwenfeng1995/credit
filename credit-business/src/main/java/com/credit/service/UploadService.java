package com.credit.service;

import java.util.List;

import com.credit.pojo.Credit;

public interface UploadService {
	public boolean updateupload(Credit credit);
	
	public Credit queryUpload(Credit credit);
	
	public Integer countuserid();
	
	public Boolean insertincredit(Credit credit);
}
