package com.credit.controller;

import java.awt.image.RenderedImage;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.credit.pojo.Admin;
import com.credit.pojo.Users;
import com.credit.service.IAdminService;
import com.credit.service.UserService;
import com.util.CodeUtil;


@Controller
@RequestMapping("/ac")
public class AdminController {
	
	@Autowired
	private IAdminService adminservice;
	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping(value="login")
	public Integer islogin(Admin am,HttpServletRequest request,HttpServletResponse response) throws IOException {
		Admin admin = adminservice.chcekAdmin(am);
		request.getSession().setAttribute("admin", admin);
		Integer i =0;
        // 验证验证码
		String code = request.getParameter("code");
        String sessionCode = request.getSession().getAttribute("code").toString();
        //返回值判断，前端根据返回值显示内容
		if(admin==null) {
			i=1;//账号密码错误
		}else {
			i=2;//账号密码正确
		}        
        if (code != null && !"".equals(code) && sessionCode != null && !"".equals(sessionCode)) {
            if (code.equalsIgnoreCase(sessionCode)) {
  
            } else {
            	 i=3;//验证码错误
            }
        } else {
        	 i=3;//验证码错误
        } 
		return i;
	}
	

	
	//生成验证码
	@RequestMapping("get")
    protected void get(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   	   // 调用工具类生成的验证码和验证码图片
       Map<String, Object> codeMap = CodeUtil.generateCodeAndPic();
       // 将四位数字的验证码保存到Session中。
       HttpSession session = req.getSession();
       session.setAttribute("code", codeMap.get("code").toString());
       // 禁止图像缓存。
       resp.setHeader("Pragma", "no-cache");
       resp.setHeader("Cache-Control", "no-cache");
       resp.setDateHeader("Expires", -1);
       resp.setContentType("image/jpeg");
       // 将图像输出到Servlet输出流中。
       ServletOutputStream sos;
       try {
           sos = resp.getOutputStream();
           ImageIO.write((RenderedImage) codeMap.get("codePic"), "jpeg", sos);
           sos.close();
       } catch (IOException e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
       }
   }
}
