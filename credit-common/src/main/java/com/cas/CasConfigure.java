package com.cas;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Configuration;

import net.unicon.cas.client.configuration.CasClientConfigurerAdapter;
import net.unicon.cas.client.configuration.EnableCasClient;

@Configuration
@EnableCasClient
public class CasConfigure extends CasClientConfigurerAdapter {

	@Override
	public void configureAuthenticationFilter(FilterRegistrationBean authenticationFilter) {
		super.configureAuthenticationFilter(authenticationFilter);
		
		authenticationFilter.getInitParameters().put("authenticationRedirectStrategyClass","com.patterncat.CustomAuthRedirectStrategy");

		
	}
	
}
