<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>borrow</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/all.js"></script>


</head>
<body>

	<!-- header -->

	<jsp:include page="head.jsp" />

	<div class="bor_con_wper">
		<div class="bor_con px1000">
			<div class="bor_detail">
				<h2 class="bor_detail_tit">
					<span class="bor_decurspan">信用贷款</span> <span>车辆抵押</span> <span>房产抵押</span>
					<span>零首付车贷</span>
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
								<li><img src="images/bor_pic01.png" alt="">年满18周岁以上的公民
								</li>
								<li><img src="images/bor_pic03.png" alt="">个人或企业银行征信记录良好
								</li>
								<li><img src="images/bor_pic04.png" alt=""> 无现有诉讼记录</li>

							</ul>
							<h3 class="bor_onel_tit">
								<span>提交资料</span>
							</h3>
							<ul class="bor_onel_ul">
								<li>&nbsp;<img src="images/bor_pic05.png" alt="">身份证
								</li>
								<li><img src="images/bor_pic06.png" alt="">申请资料</li>
								<li><img src="images/bor_pic07.png" alt="">其他</li>


							</ul>
						</div>
						<!-- end l -->
						<div class="bor_det_oner fl">
							<form>
								<fieldset>
									<div>
										<label>申请人</label> <input type="">
									</div>
									<div class="mt15">
										<label>*手机号</label> <input type=""> <img
											class="hidden" src="images/success.png" width="20"
											height="20"> <a href="#" class="btn_less">点击验证</a>
									</div>
									<div class="mt15">
										<label>*身份证</label> <input type=""> <img
											src="images/success.png" width="20" height="20"> <a
											href="#" class="btn_less">点击验证</a>
									</div>
									<div class="mt15">
										<label>*银行卡</label> <input type=""> <img
											src="images/success.png" width="20" height="20"> <a
											href="#" class="btn_less">点击验证</a>
									</div>
									<div class="mt15">
										<label>*学历</label> <select>
											<option>小学</option>
											<option>中学</option>
											<option>专科</option>
											<option>本科</option>
											<option>硕士</option>
											<option>博士</option>
										</select>
									</div>
									<div class="mt15">
										<label>*婚姻状况</label> <input type="radio" class="input3">
										未婚 <input type="radio" class="input3"> 已婚
									</div>
									<div class="mt15">
										<label>*通讯地址</label> <input type="">
									</div>
									<div class="mt15">
										<label>*月收入</label> <select>
											<option>低于1000</option>
											<option>1000-3000</option>
											<option>3000-6000</option>
											<option>6000-1万</option>
											<option>1-3万</option>
											<option>3万以上</option>
										</select>
									</div>
									<div class="mt15 guarmethod clearfix">
										<label class="guarmethod_l fl">*所在地区</label>
										<div class="fl">
											<select class="bor_inputbg03 input2">
												<option>广东</option>
											</select> <select class="bbor_inputbg04 input2">
												<option>深圳</option>
											</select>
										</div>
									</div>
									<div class="mt30">
										<label></label> <a href="#" class="bor_btn">提交材料</a>
									</div>
								</fieldset>
							</form>
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