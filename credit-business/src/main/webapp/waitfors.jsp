<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<title>公告列表</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<!-- <link rel="stylesheet/less" type="text/css" href="css/style.less" /> -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/all.js"></script>

</head>
<body>
<!-- header start -->
<div class="zxcf_top_wper">
	<div class="zxcf_top px1000 clearfix">
		 <div class="zxcf_top_l fl">
		    <img src="${pageContext.request.contextPath}/images/zxcf_phone.png" alt="">
		    400-027-0101(工作时间9:00-17:30)
		    <a href="#"><img src="${pageContext.request.contextPath}/images/zxcf_weixin.png" alt=""></a>
		    <a href="#"><img src="${pageContext.request.contextPath}/images/zxcf_sina.png" alt=""></a>
		    <a href="#"><img src="${pageContext.request.contextPath}/images/zxcf_qq.png" alt=""></a>
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

<jsp:include page="head.jsp"/>

<!-- end  -->
<div class="notic_con_wper">
	  <div class="notic_con px1000">
	  	     <div class="notic_ban">
	  	     	 <img src="${pageContext.request.contextPath}/images/notic_ban01.png" alt="">
	  	     </div>
	  	     <div class="notic_section clearfix">
	  	     	  <!-- <div class="notic_sec_l fl">
	  	     	  	  <h3><img src="images/notic_pic01.png" alt=""></h3>
	  	     	  	  
	  	     	  </div> -->
	  	     	  <!-- end l -->
	  	     	  <div class="notic_sec_r fl">
	  	     	  	   <h3 class="notic_secr_tit">上传成功</h3>
						<div style="margin-left: 350px; font-size: 20px">管理员正在审核中，请稍等。。。</div>
	  	     	  	   <div class="hc_zjwt ">
	 	    	   		
	 	    	   	  
	 	    	   	   </div>
	 	    	   	  

	 	    	   </div>
	  	     	  	     
	  	     	  </div>
	  	     </div>
	  </div>
</div>

<!-- footer start -->
<div class="zscf_aboutus_wper">
	  <div class="zscf_aboutus px1000 clearfix">
	  	    <div class="zscf_aboutus_l fl">
	  	    	   <ul class="zscf_aboutus_lul clearfix">
	  	    	   	  <li class="pt10"><a href="#"><img src="${pageContext.request.contextPath}/images/app.png" alt=""></a>
	  	    	   	  </li>
	  	    	   	  <li>
	  	    	   	  <p class="pb20">服务热线</p>
	  	    	   	  <strong>400-027-0101</strong>
	  	    	   	  </li>
	  	    	   	  <li>
	  	    	   	  	  <p class="pb10 linkpic">
	  	    	   	  	     <a href="#"><img src="${pageContext.request.contextPath}/images/ft_sina.png" alt=""></a>
	  	    	   	  	     <a href="#"><img src="${pageContext.request.contextPath}/images/ft_weixin.png" alt=""></a>
	  	    	   	  	     <a href="#"><img src="${pageContext.request.contextPath}/images/ft_erji.png" alt=""></a>
	  	    	   	  	  </p>
	  	    	   	  	  <p><a href="#">kefu@zhongxincaifu.com</a></p>
	  	    	   	  </li>
	  	    	   </ul>
	  	    </div>
	  	    <!-- end left -->
	  	    <div class="zscf_aboutus_r fl clearfix">
	  	    	 <a href="#" class="fl ft_ewm"><img src="${pageContext.request.contextPath}/images/ft_erweima.png" alt=""></a>
	  	    	 <ul class="fl clearfix">
	  	    	 	<li><a href="#">联系我们</a></li>
	  	    	 	<li><a href="#">我要融资</a></li>
	  	    	 	<li><a href="problem.html">帮助中心</a></li>
	  	    	 	<li><a href="#">友情链接</a></li>
	  	    	 	<li><a href="#">招贤纳士</a></li>
	  	    	 	<li><a href="#">收益计算器</a></li>
	  	    	 </ul>
	  	    </div>
	  	    <!-- end right -->

	  </div>
</div>

<div class="zscf_bottom_wper">
	<div class="zscf_bottom px1000 clearfix">
		  <p class="fl">© 2014 zhongxincaifu &nbsp;  &nbsp;&nbsp;   中兴财富金融信息服务股份有限公司 &nbsp;&nbsp;&nbsp;    来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
		  <p class="fr">
		    <a href="#"><img src="${pageContext.request.contextPath}/images/360.png" alt=""></a>
		    <a href="#"><img src="${pageContext.request.contextPath}/images/kexin.png" alt=""></a>
		    <a href="#"><img src="${pageContext.request.contextPath}/images/norton.png" alt=""></a>
		  </p>
	</div>
</div>
<!-- footer end -->
</body>
</html>