<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basepath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/member.css">
<link rel="stylesheet" href="css/css.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/font-awesome-ie7.css">
</head>
<body class="rel">
	<div class="header">
		<div class="header-t">
			<div class="w1200 auto">
				<img src="images/logo.png" alt="" class="mt10 l"><span
					class="logo-r l mt10 ml20">管理员后台</span> <span class="r logo-rr"><a
					href="" class="selected">${admin.adminname }.欢迎您登录!</a></span>
			</div>
		</div>
		<div class="header-b">
			<div class="w1200 auto">
				<div class="nav">
					<ul class="auto">
						<li class="selected"><a href="javascript:"><span class="icn1"></span><i>审核信息</i></a></li>
						<li><a href="user/loan"><span class="icn2"></span><i>借款信息</i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="w1200 auto contant rel">
		<div class="breadcrumbs">
			<a href="javascript:">管理员后台</a> > <a href="javascript:">我的工作台</a> > <a>待处理审核</a>
		</div>
		<div class="c-left">
			<div class="about-t">
				<span class="f20 g6 ml30 mt15 dib">审核</span>
			</div>
			<div class="l-menu">
				<ul class="nav_li">
					<li><a href="user/findall">初步审核</a>
						</li>
					<li class="selected"><a href="user/limittwice">二次审核</a></li>
					<li><a href="final/Querycredit">最终审核</a></li>
				</ul>
			</div>
		</div>
		<!-- 左侧end -->
		<!-- 右侧start -->
		<div class="c-right c-right1">
			<div class="member-main">
				<!-- 基本资料 -->
				<div class="member-column">

					<div class="member-tit">
						<p>一审资料</p>
					</div>
					<div class="member-con">
						<div class="controls">
							<p>昵称：</p>
							<div class="basic-name">${apply.clientName}</div>
						</div>
						<div class="controls">
							<p>性别</p>
							<div class="basic-name">${apply.sex}</div>
						</div>
						<div class="controls">
							<p>年龄：</p>
							<div class="basic-tel">${apply.age}</div>
						</div>
						<div class="controls">
							<p>是否有公积金：</p>
							<div class="basic-name">${apply.pubFundFlag}</div>
						</div>
						<div class="controls">
							<p>是否满六个月的房贷：</p>
							<div class="basic-name">${apply.mortgageFlag}</div>
						</div>
						<div class="controls">
							<p>是否有两年的保单：</p>
							<div class="basic-name">${apply.policyFlag}</div>
						</div>
						<div class="controls">
							<p>提交时间：</p>
							<div class="basic-name">
								<fmt:formatDate value="${apply.updatetime}"
									pattern="yyyy-MM-dd HH:mm:ss" />
							</div>
						</div>
					</div>
				</div>
				<div class="member-column">
					<!-- 银行账户信息 -->
					<div class="member-tit">
						<p>二审资料</p>
					</div>
					<div class="member-con">
						<div class="controls">
							<p>用户名：</p>
							<div class="basic-name">${user.username}</div>
						</div>
						<div class="controls">
							<p>昵称：</p>
							<div class="basic-name">${user.realname}</div>
						</div>
						<div class="controls">
							<p>手机号</p>
							<div class="basic-name">${user.mobile}</div>
						</div>
						<div class="controls">
							<p>身份证</p>
							<div class="basic-name">${user.idcard}</div>
						</div>
						<div class="controls">
							<p>银行卡：</p>
							<div class="basic-tel">${user.bankcard}</div>
						</div>
						<div class="controls">
							<p>婚姻状况：</p>
							<div class="basic-name">${user.married}</div>
						</div>
						<div class="controls">
							<p>详细地址：</p>
							<div class="basic-name">${user.city}:${user.address}</div>
						</div>
						<div class="controls">
							<p>收入情况：</p>
							<div class="basic-name">${user.married}</div>
						</div>
						<div class="controls">
							<p>提交时间：</p>
							<div class="basic-name">
								<fmt:formatDate value="${user.updatetime}"
									pattern="yyyy-MM-dd HH:mm:ss" />
							</div>
						</div>

					</div>
				</div>
				<div class="controls qt-zj" style="padding-bottom: 20px;center;">
					<a href="/user/twicechange?userid=${user.userid}&&limit=二审通过"
						class="btn02 l mr20" style="width: 190px;" >审核通过</a> <a
						href="/user/twicechange?userid=${user.userid}&&limit=二审不通过"
						class="btn10 l mr20 sh-no" style="color: red">审核不通过</a>
				</div>
			</div>
		</div>
		<!-- 左侧end -->
	</div>
	<div class="footer">
		<span class="f14 g3 mt25 dib">© 2019 深圳市易贷网有限公司 版权所有</span>
	</div>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
	<script type="text/javascript" src="js/jquery.popup_box.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>