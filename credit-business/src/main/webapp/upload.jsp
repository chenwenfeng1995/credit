<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>borrow</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<!-- <link rel="stylesheet/less" type="text/css" href="css/style.less" /> -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
<!-- <script type="text/javascript" src="js/all.js"></script> -->


<link rel="stylesheet" href="${pageContext.request.contextPath}/control/css/zyUpload.css" type="text/css">

<!-- 引用核心层插件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/core/zyFile.js"></script>
<!-- 引用控制层插件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/control/js/zyUpload.js"></script>
<!-- 引用初始化JS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/demo.js"></script>
</head>
<body>
	<!-- header start -->
	<div class="zxcf_top_wper">
		<div class="zxcf_top px1000 clearfix">
			<div class="zxcf_top_l fl">
				<img src="${pageContext.request.contextPath}/images/zxcf_phone.png" alt="">
				400-027-0101(工作时间9:00-17:30) <a href="#"><img
					src="${pageContext.request.contextPath}/images/zxcf_weixin.png" alt=""></a> <a href="#"><img
					src="${pageContext.request.contextPath}/images/zxcf_sina.png" alt=""></a> <a href="#"><img
					src="${pageContext.request.contextPath}/images/zxcf_qq.png" alt=""></a>
			</div>
			<div class="zxcf_top_r fr">
				<a href="login.html" class="curspan">立即登录</a> <span>|</span> <a
					href="register.html">免费注册</a> <span>|</span> <a href="problem.html">常见问题</a>
			</div>
		</div>
	</div>
	<!-- end top -->
	
	<jsp:include page="head.jsp"/>
	
	<!-- end  -->
	<div class="bor_banner01"></div>
	<!-- end banner -->
	<div class="bor_con_wper">
		<div class="bor_con px1000">
			<div class="bor_detail">
				<h2 class="bor_detail_tit">
					<span class="bor_decurspan">房产抵押</span> <span>车辆抵押</span> <span>信用贷款</span>
					<span>零首付车贷</span>
				</h2>
				<div class="bor_detail_box">
					<div class="bor_det_one clearfix pt30 pb30">
				
				
				
					
						<h1 style="text-align: center;">文件凭证上传</h1>
						<div id="demo" class="demo"></div>
						<div
							style="text-align: center; margin: 50px 0; font: normal 14px/24px 'MicroSoft YaHei';">
						</div>
						<span style="color: #FF0000;">用户须知</span><br>
						<span style="color: #ff7200;">申请条件:</span>
						<span style="color: #0f0e0e">1.年满18周岁以上的公民 2.需要北京房产或车产抵押 3.个人或企业银行征信记录良好 4.无现有诉讼记录。</span><br>
						<span style="color: #ff7200;">申请材料:</span>
						<span style="color: #0f0e0e">1.第二代身份证复印件 2.收入证明、资产证明等 3.贷款用途证明等 4.企业经营材料等（自雇人士适用）</span>
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