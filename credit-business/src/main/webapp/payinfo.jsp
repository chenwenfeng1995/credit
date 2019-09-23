<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<title>公告列表</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/all.js"></script>
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
				400-027-0101(工作时间9:00-17:30) <a href="#"><img
					src="images/zxcf_weixin.png" alt=""></a> <a href="#"><img
					src="images/zxcf_sina.png" alt=""></a> <a href="#"><img
					src="images/zxcf_qq.png" alt=""></a>
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
				<img src="images/zxcf_logo.png" alt="">
			</div>
			<div class="zxcf_nav_r fr">
				<img src="images/zxcf_perinfo.png" alt=""> <span>我的账户 <img
					src="images/zxcf_icon01.png" alt=""></span>
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
	<div class="notic_con_wper">
		<div class="notic_con px1000" style="margin-top: -10px">
			<div class="notic_ban">
				<img src="images/notic_ban01.png" alt="">
			</div>
		</div>
	</div>
		<!-- end  -->
		<div class="notic_con_wper">
			  <div class="notic_con px1000">
			  	     <div class="notic_ban">
			  	     	 <img src="img/notic_ban01.png" alt="">
			  	     </div>
			  	     <div class="notic_section clearfix">
			  	     	  <!-- end l -->
			  	     	<div class="notic_sec_r fl" style="margin-left: 260px;">
			  	     	  <table style="text-align: center;font-size: 25px;width: 400px;height: 400px;" border="1">
			  	     	  	<tr>
			  	     	  		<td colspan="2"><strong>本期还款:￥${result.bankisue}元</strong></td>
			  	     	  	</tr>
			  	     	  	<tr>
			  	     	  		<td>贷款分期</td>
			  	     	  		<td>第${result.periodsNo}期</td>
			  	     	  	</tr>
			  	     	  	<tr>
			  	     	  		<td>当前还款状态</td>
			  	     	  		<td>${result.statu}</td>
			  	     	  	</tr>
			  	     	  	<tr>
			  	     	  		<td>还款时间</td>
			  	     	  		<td><fmt_rt:formatDate value="${result.reduceTime}" pattern="yyyy-MM-dd"/></td>
			  	     	  	</tr>
			  	     	  	<tr>
			  	     	  		<td>还款方式</td>
			  	     	  		<td>自动扣款</td>
			  	     	  	</tr>
			  	     	  	<tr>
			  	     	  		<td>银行卡号</td>
			  	     	  		<td>
			  	     	  			 ${fn:substring(result.bankCard,0,4) }****${fn:substring(result.bankCard,14,18) }
			  	     	  		</td>
			  	     	  	</tr>
			  	     	  </table>
						</div>
			  	     </div>
			  </div>
</div>
</body>
</html>
