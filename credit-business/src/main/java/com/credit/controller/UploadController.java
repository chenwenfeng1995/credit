package com.credit.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.aliyuncs.http.HttpRequest;
import com.credit.pojo.Credit;
import com.credit.pojo.Users;
import com.credit.service.UploadService;
import com.credit.service.UserService;

@Controller
@RequestMapping("nc")
public class UploadController {

	@Autowired
	private UploadService uploadservice;
	@Autowired
	private UserService userService;

	private String stong = "";

	@RequestMapping("uploading")
	public String uploading(HttpSession session,@RequestParam("fileselect[]") MultipartFile fileselect[]) {
		String imgPath = "D:\\last\\MyCredit\\credit-hmanager\\src\\main\\resources\\public\\";
		for (MultipartFile f : fileselect) {
			// 图片的名字用毫秒数+图片原来的名字拼接
			try {
				System.out.println(f.getBytes());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String imgName = System.currentTimeMillis() + f.getOriginalFilename();
			System.out.println(f.getOriginalFilename());
			// 上传文件
			try {
				uploadFileUtil(session,f.getBytes(), imgPath, imgName);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return "forward:/nc/imgsplit";
	}

	/*
	 * 上传
	 * 
	 */
	public void uploadFileUtil(HttpSession session,byte[] fileselect, String imgPath, String imgName) throws Exception {
		Users users = (Users) session.getAttribute("users");
		System.out.println("11111"+users.getUserid());
		System.out.println("=======================");
		System.out.println("uploadFileUtil的userid:"+users.getUserid());
		System.out.println("=======================");
		File targetFile = new File(imgPath);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		FileOutputStream out = new FileOutputStream(imgPath + imgName);

		stong = imgName + "," + stong;
		Credit credit = new Credit();
		credit.setUserid(users.getUserid());
		credit.setUpload(stong);
		uploadservice.updateupload(credit);
		Users user = new Users();
		user.setUserid(users.getUserid());
		user.setLimit("三审中");
		userService.updatelimit(user);
		out.write(fileselect);
		out.flush();
		out.close();
	}

	@RequestMapping("imgsplit")
	public String imgsplit(HttpSession session, Model model, HttpServletRequest request) {
		Users users = (Users) session.getAttribute("users");
		System.out.println("imgsplit的userid:"+users.getUserid());
		Credit credit = new Credit();
		credit.setUserid(users.getUserid());
		Credit queryUpload = uploadservice.queryUpload(credit);

		String img = queryUpload.getUpload();
		System.out.println(img);
		String[] splitStrings = img.split(",");
		for (String string : splitStrings) {
			System.out.println(string);
		}
		System.out.println("---------------------------");
		List<String> list = Arrays.asList(splitStrings);
		model.addAttribute("list", list);

		return "waitfors";
	}

	/*
	 * @RequestMapping("houtai") public String tiaozhuan() {
	 * System.out.println("进入跳转方法tiaozhuan"); return "tiaozhuan"; }
	 */
	@RequestMapping("insertCredit")
	public String insertCredit(HttpSession session, Credit credit) {
		Users users = (Users) session.getAttribute("users");
		System.out.println(credit.toString());

		Integer userid = uploadservice.countuserid();
		userid = (userid == null ? 1 : (userid + 1));

		credit.setCid(userid);
		credit.setUserid(users.getUserid());
		uploadservice.insertincredit(credit);
		return "upload";
	}

}
