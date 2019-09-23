package com.credit.config;

import javax.servlet.Filter;
import com.credit.filter.CheckLoginFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CheckLoginFilterCnfig {
	@Autowired
	private CheckLoginFilter checkLoginFilter;
	public FilterRegistrationBean<Filter> filterRegistrationBean(){
		FilterRegistrationBean<Filter> filterRegistrationBean=new FilterRegistrationBean<Filter>();
		filterRegistrationBean.setFilter(checkLoginFilter);
		filterRegistrationBean.addUrlPatterns("/*");
		
		filterRegistrationBean.setName("checkLoginFilter");
		return filterRegistrationBean;
	}
}
