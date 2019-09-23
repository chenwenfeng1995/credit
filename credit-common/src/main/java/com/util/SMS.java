package com.util;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;

public class SMS {

	public static Boolean getCode(HttpServletRequest httpServletRequest,String mobile) {
		try {
			//生成6位验证码
			String verifyCode = String.valueOf(new Random().nextInt(899999) + 100000);
			System.out.println(verifyCode);
			System.out.println(mobile);
			//设置超时时间(不必修改)
			System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
			//(不必修改)
			System.setProperty("sun.net.client.defaultReadTimeout", "10000");
			//初始化ascClient，("***"分别填写自己的AccessKey ID和Secret)
			IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAI4Fgcs6aaFQ8tkMA5a6hm", "erIaLF6d5oCqoFp5fXhHavEEKmPvEn");
			//(不必修改)
			DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", "Dysmsapi", "dysmsapi.aliyuncs.com");
			//(不必修改)
			IAcsClient acsClient = new DefaultAcsClient(profile);
			//组装请求对象(不必修改)
			SendSmsRequest request = new SendSmsRequest();
			//****处填写接收方的手机号码
			request.setPhoneNumbers(mobile);
			//****填写已申请的短信签名
			request.setSignName("CRM系统");
			//****填写获得的短信模版CODE
			request.setTemplateCode("SMS_174021344");
			//笔者的短信模版中有${code}, 因此此处对应填写验证码
			request.setTemplateParam("{\"code\":\""+verifyCode+"\"}");
			//不必修改
			SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);

			//将生成的验证码和创建时间放到session中，后面验证从session中取
			HttpSession session = httpServletRequest.getSession();
			session.setAttribute("verifyCode",verifyCode);
			session.setAttribute("verifyCodeCreateTime",System.currentTimeMillis());
			System.out.println("verifyCode:"+verifyCode);
			
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			
			return false;
		}
	}

}
