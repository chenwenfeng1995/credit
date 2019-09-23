package com.credit.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

import com.credit.pojo.Users;
@Component
public class CheckLoginFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request2=(HttpServletRequest)request;
		HttpServletResponse response2=(HttpServletResponse)response;
		HttpSession session=request2.getSession();
		Users user=(Users)session.getAttribute("users");
		if(user!=null) {
			chain.doFilter(request, response);
		}else {
			response2.sendRedirect("http://localhost:8081/login.jsp");
		}
		// TODO Auto-generated method stub

	}

}
