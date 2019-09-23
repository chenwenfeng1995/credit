package com.credit.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.credit.pojo.Bankreduce;
import com.credit.pojo.Repayment;
import com.credit.pojo.Users;
import com.credit.service.RepaymentService;

@Controller
public class RepaymentController {
	
	@Autowired
	private RepaymentService repaymentService;
	
	
	
	@RequestMapping("getAllRepayment")
	public String getAllRepayment(HttpSession session,Model model) {
		//userid应从session中取出，此处作为测试使用1
		Users users = (Users) session.getAttribute("users");
		System.out.println(users.getUserid());
		List<Repayment>list=repaymentService.getRepaymentByUserid(users.getUserid());
		if(list.size()<=0) {
			model.addAttribute("msg", "您没有账单");
		}else {
			model.addAttribute("list",list);
		}
		return "allpayinfo";
	}
	
	@RequestMapping("getBill")
	public String getBill(Model model,Integer pageNum,Integer rid) {
		
		//userid应从session中取出，此处作为测试使用1
		Repayment repayment=repaymentService.getRepaymentByRid(rid);
		model.addAttribute("repayment", repayment);
		Date startTime=repayment.getPaymentTime();
		Date[] arr=new Date[repayment.getPeriods()];
		arr[0]=startTime;
		Calendar c = Calendar.getInstance();
		c.setTime(startTime);
		//c.getTime();	
		for(int i=1;i<repayment.getPeriods();i++) {
			c.add(Calendar.MONTH, 1);
			Date a=c.getTime();
			arr[i]=a;		
		}
		//分页的逻辑
		//当前页
		if(pageNum==null) {
			pageNum=1;
		}
		//总页数
		Integer pageCount=(repayment.getPeriods()-1)/10+1;
		//那条开始
		Integer start=0;
		//那条结束
		Integer end=0;
		//页面尺寸
		Integer size=10;
		if(pageNum*10>=repayment.getPeriods()) {
			start=(pageNum-1)*10;
			end=repayment.getPeriods()-1;
			size=repayment.getPeriods()-start;
		}else {
			start=(pageNum-1)*10;
			end=start+10;
		}
		Date[] arrspilt=new Date[size];
		for(int index=0;index<size;index++) {
			arrspilt[index]=arr[start+index];
		}
		model.addAttribute("pageNum",pageNum );
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("start", start);
		model.addAttribute("size", size);
		model.addAttribute("arrspilt", arrspilt);
		
		return "paybacked";
	}
	
	@RequestMapping("/getPeriodsNo")
	public String getPeriodsNo(Bankreduce bankreduce,Model model,HttpSession session) {
		//需要从session中取出userid
		Users users = (Users) session.getAttribute("users");
		
		bankreduce.setUserid(users.getUserid());
		Bankreduce result=repaymentService.getPeriodsNo(bankreduce);
		model.addAttribute("result", result);
		return "payinfo";
	}

}
