<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>订单详情</title>
<link rel="stylesheet" href="css/style.css" />
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- header start -->
<div class="zxcf_top_wper">
	<div class="zxcf_top px1000 clearfix">
		 <div class="zxcf_top_l fl">
		    <img src="images/zxcf_phone.png" alt="">
		    400-027-0101(工作时间9:00-17:30)
		    <a href="#"><img src="images/zxcf_weixin.png" alt=""></a>
		    <a href="#"><img src="images/zxcf_sina.png" alt=""></a>
		    <a href="#"><img src="images/zxcf_qq.png" alt=""></a>
		 </div>
		 <div class="zxcf_top_r fr">
		 	<a href="login.html" class="curspan">立即登录</a>
		 	<span>|</span>
		 	<a href="register.html">免费注册</a>
		 	<span>|</span>
		 	<a href="problem.html">常见问题</a>
		 </div>
	</div>
</div>
<!-- end top -->
<div class="zxcf_nav_wper">
	<div class="zxcf_nav clearfix px1000">
		 <div class="zxcf_nav_l fl"><img src="images/zxcf_logo.png" alt=""></div>
		 <div class="zxcf_nav_r fr">
		 	<img src="images/zxcf_perinfo.png" alt="">
		 	<span>我的账户
		 	<img src="images/zxcf_icon01.png" alt=""></span>
		 	<ul class="zxcf_perinfo" style="display:none;">
		 		<li><a href="#">111</a></li>
		 		<li><a href="#">111</a></li>
		 		<li><a href="#">111</a></li>
		 	</ul>
		 </div>
	</div>
</div>
<div class="zxcf_menu_wper">
	<div class="zxcf_menu px1000">
		  <a href="index.html" class="zm_cura">首页</a>
		  <a href="invest.html">我要投资</a>
		  <a href="borrow.html">我要借款</a>
		  <a href="#">实时财务</a>
		  <a href="noticelist.html">新手指引</a>
		  <a href="#" style="margin-right:0;">关于我们</a>
	</div>
</div>
<div class="notic_con_wper">
	  <div class="notic_con px1000">
	  	     <div class="notic_ban">
	  	     	 <img src="images/notic_ban01.png" alt="">
	  	     </div>
	  	     <div class="notic_section clearfix">
	  	     	  <!-- end l -->
	  	     	<div class="notic_sec_r fl" style="margin-left: 260px;">
	  	     	 <div class="container">
						<c:if test="${msg!=null}">
							<h3>${msg }</h3>
						</c:if>
						<c:if test="${list!=null}">
					  	<table class="table" style="width: 700px;height: auto;font-size: 23px">
					    <tbody>
					    <c:forEach items="${list}" var="repayment">
					      <tr>
					      	<td>贷款期数:${repayment.periods}</td>
					        <td>已还:${repayment.alreadper}期</td>
					        <td>每期应还:${repayment.eachisue}元</td>
					        <td><a href="/getBill?rid=${repayment.rid}" target="_blank">查看详情</a></td>
					      </tr>
					    </c:forEach>
					    </tbody>
					  </table>
					  </c:if>
					</div>
				</div>
	  	     </div>
	  </div>
</div>
</body>
</html>