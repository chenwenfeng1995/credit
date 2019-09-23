package com.credit.service;

import java.util.List;

import com.credit.pojo.City;
import com.credit.pojo.Province;



public interface IProvinceService {

	public List<Province> findall();
	public List<City>findallbyfather(String father);
	
	public Province findallbypname(String name);
	public City findallbycname(String name);
}
