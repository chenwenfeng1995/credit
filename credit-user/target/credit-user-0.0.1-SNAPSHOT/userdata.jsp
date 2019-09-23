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
<script type="text/javascript">
    <!-- 动态查询城市 -->
	function pr(pid) {
		if (pid != 0) {
			$.post("city", {
				"father" : pid
			}, function(data) {
				//console.log(data);

				$("#city option:gt(0)").remove();
				$.each(data, function(i, n) {
					$("#city").append(
							"<option value='"+n.cityID+"'>" + n.city
									+ "</option>")
				})
			}, "json")
		}
	}; 
	
	
	<!--输入限制 -->
	function check() {
        var realname = document.getElementById("realname");
       // var IdCard = document.getElementById("IdCard");
        var bankcard = document.getElementById("bankcard");
        var married=$("input[name=married]:checked").size();
        var address = document.getElementById("address");
        var city = document.getElementById("city");
        if (realname.value == "") {
            $("#span1").text("请输入姓名");
            return false;
        }
       // if (IdCard.value == "") {
        //    $("#span2").text("请输入身份证 ");
        //    return false;
       // }
        if (bankcard.value == "") {
            $("#span3").text("请输入银行卡 ");
            return false;
        }
        
        if (married == 0) {
            $("#span4").text("请选择 ");
            return false;
        }
        if (address.value == "") {
            $("#span6").text("请输入地址");
            return false;
        }
        
        if (city.value == "") {
            $("#span8").text("请选择");
            return false;
        }
        return true;
    };
    
    

	//查询银行卡
       function bank() {
		var cardNo = $('input[name="bankcard"]').val();
		$.ajax({
			type : "POST",
			url : "/UserdataController/CheckBandcard",
			data : {
				cardNo : cardNo
			},
			success : function(validated) {
				if (validated == "true") {
					$(bankeimg).addClass("hidden");
					$(banksimg).removeClass();
				} else {
					
					$(banksimg).addClass("hidden");
					$(bankeimg).removeClass();
					document.getElementById("bankcard").value = "";
				}

			}
		});
	}  
     //实名验证
      function IDcard() {
		var IDcardNo = $('input[name="idcard"]').val();
		var name=$('input[name="realname"]').val();
		$.ajax({
			type : "POST",
			url : "/UserdataController/Checkcardname",
			data : {
				IDcardNo : IDcardNo,
				name : name
			},
			success : function(validated) {
				if (validated == "true") {
					$(cardeimg).addClass("hidden");
					$(cardsimg).removeClass();
				} else {
					
					$(cardsimg).addClass("hidden");
					$(cardeimg).removeClass();
					document.getElementById("idcard").value = "";
				}

			}
		});
	}
	 
	 
</script>

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
							<form action="/UserdataController/insertdata" method="post"
								onsubmit="return check()">
								<fieldset>
									<div>
										<label>*申请人</label> <input type="text" name="realname"
											id="realname"> <span style="display: inline;"><font
											color=red id="span1"></font></span>
									</div>
									<div class="mt15">
										<label>*身份证</label> <input type="text" name="idcard"
											id="idcard" onBlur="IDcard()"> <img class="hidden"
											id="cardsimg"
											src="${pageContext.request.contextPath}/images/success.png"
											width="20" height="20"> <img class="hidden"
											id="cardeimg"
											src="${pageContext.request.contextPath}/images/error.png"
											width="16" height="16"> <span style="display: inline;"><font
											color=red id="span2"></font></span>

									</div>

									<div class="mt15" id="imgdiv">
										<label>*银行卡</label> <input type="text" name="bankcard"
											id="bankcard" onBlur="bank()"> <img class="hidden"
											id="banksimg"
											src="${pageContext.request.contextPath}/images/success.png"
											width="20" height="20"> <img class="hidden"
											id="bankeimg"
											src="${pageContext.request.contextPath}/images/error.png"
											width="16" height="16"> <span style="display: inline;"><font
											color=red id="span3"></font></span>
										<!-- <button type="button" class="btn_less" id="bank">点击验证</button> -->
									</div>
									<div class="mt15">
										<label>*学历</label> <select name="education">
											<option value="小学">小学</option>
											<option value="中学">中学</option>
											<option value="专科">专科</option>
											<option value="本科">本科</option>
											<option value="硕士">硕士</option>
											<option value="博士">博士</option>
										</select>

									</div>
									<div class="mt15">
										<label>*婚姻状况</label> <input type="radio" class="input3"
											value="未婚" name="married" id="married">未婚 <input
											type="radio" class="input3" value="已婚" name="married"
											id="married">已婚 <span style="display: inline;"><font
											color=red id="span5"></font></span>
									</div>
									<div class="mt15">
										<label>*通讯地址</label> <input type="text" name="address"
											id="address"> <span style="display: inline;"><font
											color=red id="span6"></font></span>
									</div>
									<div class="mt15">
										<label>*月收入</label> <select name="income" id="income">
											<option value="低于1000">低于1000</option>
											<option value="1000-3000">1000-3000</option>
											<option value="3000-6000">3000-6000</option>
											<option value="6000-1万">6000-1万</option>
											<option value="1-3万">1-3万</option>
											<option value="3万以上">3万以上</option>
										</select> <span style="display: inline;"><font color=red
											id="span7"></font></span>
									</div>
									<div class="mt15 guarmethod clearfix">
										<label class="guarmethod_l fl">*所在地区</label>
										<div class="fl">
											<select class="bor_inputbg03 input2" name="province"
												id="province" onchange="pr(this.value);">
												<option value="">-请选择-</option>
												<c:forEach items="${provinceList}" var="provinceList">
													<option value="${provinceList.provinceID}">${provinceList.province}</option>
												</c:forEach>
											</select> <select class="bor_inputbg03 input2" name="city" id="city">
												<option value="">-请选择-</option>

											</select> <span style="display: inline;"><font color=red
												id="span8"></font></span>
										</div>
									</div>
									<div class="mt30">
										<label></label>
										<button type="submit" class="bor_btn">提交材料</button>
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