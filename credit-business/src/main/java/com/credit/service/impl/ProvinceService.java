package com.credit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.credit.dao.CityDao;
import com.credit.dao.ProvinceDao;
import com.credit.pojo.City;
import com.credit.pojo.Province;
import com.credit.service.IProvinceService;


@Service
public class ProvinceService implements IProvinceService {

	
	@Autowired
	private ProvinceDao provinceDao;
	@Autowired
	private CityDao cityDao;

	@Override
	public List<Province> findall() {
		System.out.println(provinceDao.findall().isEmpty()+"11111111");
		return provinceDao.findall();
	}
	@Override
	public List<City> findallbyfather(String father) {
		// TODO Auto-generated method stub
		return cityDao.findallbyfather(father);
	}
	@Override
	public Province findallbypname(String name) {
		// TODO Auto-generated method stub
		return provinceDao.findallbypname(name);
	}
	@Override
	public City findallbycname(String name) {
		// TODO Auto-generated method stub
		return cityDao.findallbycname(name);
	}


}
