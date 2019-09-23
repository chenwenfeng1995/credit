<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/client/user/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>borrow</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css">
<!-- <link rel="stylesheet/less" type="text/css" href="css/style.less" /> -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/all.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jsp/jquery/jquery-1.8.3.min.js"></script>
</head>
<body>
	<!-- header start -->
	<div class="zxcf_top_wper">
		<div class="zxcf_top px1000 clearfix">
			<div class="zxcf_top_l fl">
				400-027-0101(工作时间9:00-17:30) <a href="#"><img
					src="${pageContext.request.contextPath}/images/zxcf_weixin.png"
					alt=""></a> <a href="#"><img
					src="${pageContext.request.contextPath}/images/zxcf_sina.png"
					alt=""></a> <a href="#"><img
					src="${pageContext.request.contextPath}/images/zxcf_qq.png" alt=""></a>
			</div>
			<div class="zxcf_top_r fr">
				<a href="login.html" class="curspan">立即登录</a> <span>|</span> <a
					href="register.html">免费注册</a> <span>|</span> <a href="problem.html">常见问题</a>
			</div>
		</div>
	</div>
	<!-- end top -->
	<div class="zxcf_nav_wper">
		<div class="zxcf_nav clearfix px1000">
			<div class="zxcf_nav_l fl">
				<img src="${pageContext.request.contextPath}/images/zxcf_logo.png"
					alt="">
			</div>
			<div class="zxcf_nav_r fr">
				<img
					src="${pageContext.request.contextPath}/images/zxcf_perinfo.png"
					alt=""> <span>我的账户 <img
					src="${pageContext.request.contextPath}/images/zxcf_icon01.png"
					alt=""></span>
				<ul class="zxcf_perinfo" style="display: none;">
					<li><a href="#">111</a></li>
					<li><a href="#">111</a></li>
					<li><a href="#">111</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="zxcf_menu_wper">
		<div class="zxcf_menu px1000">
			<a href="index.html" class="zm_cura">首页</a> <a href="invest.html">我要投资</a>
			<a href="borrow.html">我要借款</a> <a href="#">实时财务</a> <a
				href="noticelist.html">新手指引</a> <a href="#" style="margin-right: 0;">关于我们</a>
		</div>
	</div>
	<!-- end  -->
	<div class="bor_banner01"></div>
	<!-- end banner -->
	<div class="bor_con_wper">
		<div class="bor_con px1000">
			<div class="bor_detail">
				<h2 class="bor_detail_tit" align=center>
					<font size="5" color="#ffa800">提交成功，请耐心等待审核。。。。</font><br><br>
	                <font size="5" color="#ffa800">以下为您的个人信息，如果想返回主页请点击：</font>
	                <a href="" ><font size="5" color="#ffa800"><u>主页</u></font></a>
				</h2>
				<div class="bor_detail_box">
					<div class="bor_det_one clearfix pt30 pb30">
						<div class="bor_det_onel fl">
							<p class="bor_p1">平台的借款功能旨在帮助借款用户以
								低成本获得借款。用户需要填写完整个人信息，对身份证以及银 行卡进行验证。</p>
							<p class="bor_p2">基本信息填写与验证身份证、银行卡之后，业
								务员会与您联系，您可以在提交之后点击业务查询对系统业务进行 初步了解，到时候业务员会与您作一个更为详细的介绍！</p>
							<h3 class="bor_onel_tit">
								<span>申请条件</span>
							</h3>
							<ul class="bor_onel_ul">
								<li><img
									src="${pageContext.request.contextPath}/images/bor_pic01.png"
									alt="">年满18周岁以上的公民</li>
								<li><img
									src="${pageContext.request.contextPath}/images/bor_pic03.png"
									alt="">个人或企业银行征信记录良好</li>
								<li><img
									src="${pageContext.request.contextPath}/images/bor_pic04.png"
									alt=""> 无现有诉讼记录</li>

							</ul>
							<h3 class="bor_onel_tit">
								<span>提交资料</span>
							</h3>
							<ul class="bor_onel_ul">
								<li>&nbsp;<img
									src="${pageContext.request.contextPath}/images/bor_pic05.png"
									alt="">身份证
								</li>
								<li><img
									src="${pageContext.request.contextPath}/images/bor_pic06.png"
									alt="">申请资料</li>
								<li><img
									src="${pageContext.request.contextPath}/images/bor_pic07.png"
									alt="">其他</li>


							</ul>
						</div>
						<!-- end l -->
						<div class="bor_det_oner fl">
							
	  	    	   	    	  	     	  <fieldset>
	  	    	   	    	  	     	  	   <div>
	  	    	   	    	  	     	  	   	   <label>申请人:</label><span style="display: inline;">
	  	    	   	    	  	     	  	   	  <font size="3">${user.realname}</font></span>
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	   <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>账号:</label>
	  	    	   	    	  	     	  	   	    <span style="display: inline;">
	  	    	   	    	  	     	  	   	  <font size="3">${user.username}</font></span>
	  	    	   	    	  	     	  	   </div>
                                               <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>银行卡:</label>
	  	    	   	    	  	     	  	   	    <span style="display: inline;">
	  	    	   	    	  	     	  	   	  <font size="3">${user.bankcard}</font></span>
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	   <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>身份证:</label>
	  	    	   	    	  	     	  	   	    <span style="display: inline;">
	  	    	   	    	  	     	  	   	  <font size="3">${user.idcard}</font></span>
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	    <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>婚姻状况:</label>
	  	    	   	    	  	     	  	   	    <span style="display: inline;">
	  	    	   	    	  	     	  	   	  <font size="3">${user.married}</font></span>
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	   <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>教育状况:</label>
	  	    	   	    	  	     	  	   	    <span style="display: inline;">
	  	    	   	    	  	     	  	   	  <font size="3">${user.education}</font></span>
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	   <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>地址:</label>
	  	    	   	    	  	     	  	   	    <span style="display: inline;">
	  	    	   	    	  	     	  	   	  <font size="3">${user.city} ${user.address}</font></span>
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	   <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>收入:</label>
	  	    	   	    	  	     	  	   	    <span style="display: inline;">
	  	    	   	    	  	     	  	   	  <font size="3">${user.income}</font></span>
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	   <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>提交时间:</label>
	  	    	   	    	  	     	  	   	   <span style="display: inline;">
	  	    	   	    	  	     	  	   	  <font size="3"><fmt:formatDate value="${user.updatetime}" pattern="yyyy-MM-dd HH:mm:ss"/></font></span>
	  	    	   	    	  	     	  	   	
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  </fieldset>
	  	    	   	    	  	     
						</div>
					</div>
					<!-- end 房产抵押 -->
					<div class="bor_det_one" style="display: none;">2</div>
					<!-- end  -->
					<div class="bor_det_one" style="display: none;">3</div>
					<!-- end  -->
					<div class="bor_det_one" style="display: none;">4</div>
					<!-- end  -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>