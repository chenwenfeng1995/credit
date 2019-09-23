<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path=request.getContextPath();
	String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/client/user/";
%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<title>borrow</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<!-- <link rel="stylesheet/less" type="text/css" href="css/style.less" /> -->
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/all.js"></script>
<!--[if IE 6]> 
<script src="./js/iepng.js" type="text/javascript"></script> 
<script type="text/javascript">
   EvPNG.fix('div, ul, img, li, input,span, p');
</script>
<![endif]-->
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
<!-- end  -->
<div class="bor_banner01">
	 
</div>
<!-- end banner -->
<div class="bor_con_wper">
	  <div class="bor_con px1000">
	  	    <div class="bor_detail">
	  	    	   <h2 class="bor_detail_tit">
	  	    	   	  <span class="bor_decurspan">信用贷款</span>
	  	    	   	  <span>车辆抵押</span>
	  	    	   	  <span>房产抵押</span>
	  	    	   	  <span>零首付车贷</span>
	  	    	   </h2>
	  	    	   <div class="bor_detail_box">
	  	    	   	    <div class="bor_det_one clearfix pt30 pb30">
	  	    	   	    	  <div class="bor_det_onel fl">
	  	    	   	    	  	       <p class="bor_p1">平台的借款功能旨在帮助借款用户以
										低成本获得借款。用户在需要资金时，可以
										不需要抵押，直接申请，只需提供股沟信息，业务员线下审核
										通过后，根据抵押物的价值融资。</p>
										<p class="bor_p2">用户需填写完整申请信息，方便业务员对您
										的情况进行一个比较全面的了解，按照您的需要提供最为满意的
										业务，祝您愉快！
	                                    </p>
										<h3 class="bor_onel_tit"><span>申请条件</span></h3>
										<ul class="bor_onel_ul">
											 <li><img src="images/bor_pic01.png" alt="">年满18周岁以上的公民
											 </li>
											 <li><img src="images/bor_pic03.png" alt="">个人或企业银行征信记录良好
											 </li>
											 <li><img src="images/bor_pic04.png" alt="">
											  无现有诉讼记录
											 </li>
											 
										</ul>
										<h3 class="bor_onel_tit"><span>提交资料</span></h3>
										<ul class="bor_onel_ul">
											 <li>&nbsp;<img src="images/bor_pic05.png" alt="">身份证
											 </li>
											 <li><img src="images/bor_pic06.png" alt="">申请资料
											 </li>
											 <li><img src="images/bor_pic07.png" alt="">其他
											 </li>
											
											 
										</ul>
	  	    	   	    	  </div>  
	  	    	   	    	  <!-- end l -->
	  	    	   	    	  <div class="bor_det_oner fl">
	  	    	   	    	  	     <form>
	  	    	   	    	  	     	  <fieldset>
	  	    	   	    	  	     	  	   <div>
	  	    	   	    	  	     	  	   	   <label>申请人</label>
	  	    	   	    	  	     	  	   	   <input type="" >
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	   <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>*借款金额</label>
	  	    	   	    	  	     	  	   	   <input type="" class="bor_inputbg01">
	  	    	   	    	  	     	  	   </div>
                                               <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>*借款期限</label>
	  	    	   	    	  	     	  	   	   <input type="" class="bor_inputbg02">
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	   <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>*手机号码</label>
	  	    	   	    	  	     	  	   	   <input type="" >
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	  
	  	    	   	    	  	     	  	   <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>*借款用途</label>
	  	    	   	    	  	     	  	   	   <select>
	  	    	   	    	  	     	  	   	   	  <option>选择借款类别</option>
	  	    	   	    	  	     	  	   	   	  <option>1</option>
	  	    	   	    	  	     	  	   	   </select>
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	    <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>*借款描述</label> 
	  	    	   	    	  	     	  	   	   <textarea></textarea>
	  	    	   	    	  	     	  	   	 
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	   <div class="mt15">
	  	    	   	    	  	     	  	   	   <label>*借款情况</label>
	  	    	   	    	  	     	  	   	   <input type="radio" class="input3">
	  	    	   	    	  	     	  	   	   普通借款
	  	    	   	    	  	     	  	  	   <input type="radio" class="input3">
	  	    	   	    	  	     	  	   	   紧急借款 
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  	   
	  	    	   	    	  	     	  	   <div class="mt30">
	  	    	   	    	  	     	  	   	   <label></label>
	  	    	   	    	  	     	  	   	   <a href="#" class="bor_btn">提交材料</a>
	  	    	   	    	  	     	  	   </div>
	  	    	   	    	  	     	  </fieldset>
	  	    	   	    	  	     </form>
	  	    	   	    	  </div>
	  	    	   	    </div>
	  	    	   	    <!-- end 房产抵押 -->
	  	    	   	    <div class="bor_det_one" style="display:none;">
	  	    	   	    	  2  
	  	    	   	    </div>
	  	    	   	    <!-- end  -->
	  	    	   	    <div class="bor_det_one" style="display:none;">
	  	    	   	    	 3
	  	    	   	    </div>
	  	    	   	    <!-- end  -->
	  	    	   	    <div class="bor_det_one" style="display:none;">
	  	    	   	    	 4
	  	    	   	    </div>
	  	    	   	    <!-- end  -->
	  	    	   </div>
	  	    </div>
	  </div>
</div>
</body>
</html>