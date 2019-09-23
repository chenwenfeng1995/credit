<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt_rt"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<title>还款账单</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/all.js"></script>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
<!-- end  -->
<div class="notic_con_wper">
	  <div class="notic_con px1000">
	  	     <div class="notic_ban">
	  	     	 <img src="images/notic_ban01.png" alt="">
	  	     </div>
	  	     <div class="notic_section clearfix">
	  	     	  <div class="notic_sec_l fl">
	  	     	  	  <h3><img src="images/notic_pic01.png" alt=""></h3>
	  	     	  	  <ul class="notic_secl_ul">
	  	     	  	  	   <li class="notic_curli">注册与登录 </li>
	  	     	  	  	   <li>账户与安全 </li>
	  	     	  	  	   <li>充值与提现 </li>
	  	     	  	  	   <li><a href="paybacked.jsp">投资与还款</a> </li>
	  	     	  	  	   <li>充值与提现 </li>
	  	     	  	  </ul>
	  	     	  </div>
	  	     	  <!-- end l -->
	  	     	  <div class="notic_sec_r fl">
	  	     	  	    <h2 class="notic_secr_tit">贷款还款</h2>
	  	     	  	    <p style="font-size: 18px;">申请金额:50000.00元,申请期限:12个月</p>
	  	     	  	    <table style="text-align: center;font-size: 25px;margin-left: 100px;" cellpadding="0" border="1" width="550px" height="550px">
	  	     	  	    	<tr style="font-size: 30px;">
	  	     	  	    		<td colspan="2">本期应还:300.00元</td>
	  	     	  	    	</tr>
	  	     	  	    	<tr>
	  	     	  	    		<td>贷款分期</td>
	  	     	  	    		<td>3/12期</td>
	  	     	  	    	</tr>
	  	     	  	    	<tr>
	  	     	  	    		<td>当前还款状态</td>
	  	     	  	    		<td>待还款</td>
	  	     	  	    	</tr>
	  	     	  	    	<tr>
	  	     	  	    		<td>最后还款期限</td>
	  	     	  	    		<td>2019-09-20</td>
	  	     	  	    	</tr>
	  	     	  	    	<tr>
	  	     	  	    		<td>银行卡</td>
	  	     	  	    		<td>
	  	     	  	    			<select>
										<option value="国家开发银行">国家开发银行</option>
							            <option value="中国进出口银行">中国进出口银行</option>
							            <option value="中国农业发展银行">中国农业发展银行</option>
							            <option value="中国银行">中国银行</option>
							            <option value="中国工商银行">中国工商银行</option>
							            <option value="中国建设银行">中国建设银行</option>
							            <option value="中国农业银行">中国农业银行</option>
									</select>
	  	     	  	    		</td>
	  	     	  	    	</tr>
	  	     	  	    	<tr>
	  	     	  	    		<td>还款方式</td>
	  	     	  	    		<td style="font-size: 15px;">还款日当天0:00-24:00自动扣款或当天0:00-24:00主动还款</td>
	  	     	  	    	</tr>
	  	     	  	    	<tr>
	  	     	  	    		<td colspan="2"><input type="button" value="立即还款" onclick="pay();"/></td>
	  	     	  	    	</tr>
	  	     	  	    	
	  	     	  	    </table>
	  	     	  </div>
	  	     </div>
	  </div>
</div>
</body>
</html>