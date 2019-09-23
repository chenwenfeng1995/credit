package com.credit.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.credit.pojo.City;
import com.credit.pojo.Province;
import com.credit.service.IProvinceService;


@Controller
@RequestMapping("provinces")
public class ProvinceController {

	@Autowired
	private IProvinceService provinceService;
	
	@RequestMapping("province")
	public String findprovince(Model model) {
		List<Province> provinceList=provinceService.findall();
		model.addAttribute("provinceList", provinceList);
		return "userdata";
	}
	
	@RequestMapping("city")
	@ResponseBody
	public List<City> findcity(String father) {
		List<City>cityList=provinceService.findallbyfather(father);
		return cityList;
	}
	
}
