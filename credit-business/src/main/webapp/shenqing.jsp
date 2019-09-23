<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!-- saved from url=(0112)https://b.pingan.com.cn/loan/loanh5/newoneloanPagePC/html/index.html?source=PABKWEB&channelSource=PC_20180426_T1 -->
<html lang="zh-CN">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="renderer" content="webkit">

<title>电子申请PC</title>
<meta name="description" content="中国平安">
<meta name="keywords" content="中国平安">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/style.css">
<script type="text/javascript" async=""
	src="static/saved_resource.js"></script>
<style type="text/css">
.tuna_calendar {
	width: 362px;
	font-size: 12px;
	font-family: tahoma, Arial, Helvetica, simsun, sans-serif;
	position: absolute;
	z-index: 1000;
	background-color: #fff;
	border: solid 1px #999;
	-moz-box-shadow: 3px 4px 5px #ccc; -
	webkit-box-shadow: 3px 4px 5px #ccc;
	box-shadow: 3px 4px 5px #ccc;
	margin: 0;
	padding: 5px 6px 4px
}

.tuna_calendar dt, .tuna_calendar dd {
	margin: 0;
	padding: 0
}

.tuna_calendar dl, .tuna_calendar dt, .tuna_calendar dd {
	margin: 0;
	padding: 0;
}

.tuna_calendar .select_day, .tuna_calendar dd a:hover, .tuna_calendar .calendar_title01 a,
	.tuna_calendar .calendar_title02 a, .tuna_calendar .today {
	background: #FFF url(img/un_bg_calender110117.png) no-repeat
}

.tuna_calendar a {
	color: #005ead;
	font-weight: bold;
	text-decoration: none !important
}

.tuna_calendar dl {
	float: left;
	width: 175px;
	padding: 6px 0 0
}

.tuna_calendar #calendar_month2 {
	position: absolute;
	top: 28px;
	left: 186px;
	z-index: 2;
	padding-bottom: 5px;
	padding-left: 6px;
	border-left: 2px solid #999
}

.tuna_calendar dt {
	float: left;
	width: 25px;
	height: 22px;
	background: #ececec;
	font-weight: normal;
	color: #666;
	font-size: 12px;
	line-height: 20px;
	text-align: center;
	cursor: default
}

.tuna_calendar .day0, .tuna_calendar .day6 {
	color: #f90;
	font-weight: bold
}

.tuna_calendar .day6 {
	width: 24px
}

.tuna_calendar dd {
	clear: both;
	padding-top: 1px;
	display: inline-block
}

.tuna_calendar dd a {
	font-size: 11px;
	text-align: center;
	height: 24px;
	width: 22px;
	line-height: 24px;
	float: left;
	outline-width: 0;
	background-color: #fff;
	padding: 0 2px 1px 1px
}

.tuna_calendar dd a:hover {
	background-color: #fff;
	background-position: -26px -48px
}

.tuna_calendar .today {
	font-weight: bold;
	background-position: 0 -74px;
}

.tuna_calendar .today:hover {
	
}

.tuna_calendar .select_day, .tuna_calendar .select_day:hover {
	color: #fff;
	background-color: #629be0;
	background-position: 0 -48px
}

.tuna_calendar .blank_day, .tuna_calendar .over_day {
	color: #dbdbdb;
	font-weight: normal;
	cursor: default
}

.tuna_calendar .blank_day:hover, .tuna_calendar .over_day:hover {
	background-color: #fff;
	background-image: none
}

.tuna_calendar div {
	float: left;
	width: 181px;
	color: #fff;
	font-weight: bold;
	height: 23px;
	background: #004fb8
}

.tuna_calendar div a {
	cursor: pointer;
	width: 40px;
	line-height: 20px
}

.tuna_calendar .calendar_title01 span, .tuna_calendar .calendar_title02 span
	{
	float: left;
	width: 143px;
	text-align: center;
	line-height: 23px
}

.tuna_calendar .calendar_title01 span {
	padding-right: 14px
}

.tuna_calendar .calendar_title02 span {
	padding-left: 14px
}

.tuna_calendar .calendar_title01 a, .tuna_calendar .calendar_title02 a {
	background-color: #2d7fdd;
	float: left;
	width: 23px;
	height: 23px;
	overflow: hidden;
	text-indent: -10em
}

.tuna_calendar .calendar_title01 a {
	float: left
}

.tuna_calendar .calendar_title02 a {
	background-position: right 0;
	float: right
}

.tuna_calendar .calendar_title01 a:hover {
	background-color: #4895ec;
	background-position: 0 -24px
}

.tuna_calendar .calendar_title02 a:hover {
	background-color: #4895ec;
	background-position: right -24px
}

.tuna_calendar b, .tuna_calendar i {
	background-color: #fff;
	display: block;
	width: 372px;
	height: 1px;
	border-right: 1px solid #c3c3c3;
	border-left: 1px solid #c3c3c3;
	overflow: hidden;
	position: absolute;
	left: 0;
	z-index: 1
}

.tuna_calendar i {
	border-top: 1px solid #999;
	top: -2px
}

.tuna_calendar b {
	border-bottom: 1px solid #999;
	bottom: -2px;
	_bottom: -3px
}

address_hot li, .address_hot_abb, .address_hot_adress {
	list-style: none;
	margin: 0;
	padding: 0
}

.address_hot_adress a {
	text-decoration: none
}

#tuna_address {
	font-family: Arial, Simsun;
	font-size: 12px;
}

#tuna_address #address_warp {
	background: none repeat scroll 0 0 #FFFFFF;
	border: 1px solid #7F9DB9;
	margin: 0;
	min-height: 305px;
	padding: 0 0 4px;
	text-align: left;
	width: 220px;
}

* html #tuna_address #address_warp {
	height: 305px;
}

#tuna_address #address_message {
	background-color: #67A1E2;
	border: medium none;
	color: #FFFFFF;
	display: block;
	font-family: Simyou;
	height: 1.7em;
	line-height: 20px;
	overflow: hidden;
	padding: 2px 0 2px 9px;
	width: auto;
	word-wrap: break-word;
}

#tuna_address #address_list {
	margin: 0;
	min-height: 277px;
	padding: 0;
}

* html #tuna_address #address_list {
	height: 277px;
}

#tuna_address #address_list span {
	float: right;
	font: 10px/22px verdana;
	margin: 0;
	overflow: hidden;
	padding: 0;
	text-align: right;
	white-space: nowrap;
	width: 110px;
}

#tuna_address #address_list a {
	border-bottom: 1px solid #FFFFFF;
	border-top: 1px solid #FFFFFF;
	color: #0055AA;
	cursor: pointer;
	display: block;
	height: 22px;
	line-height: 22px;
	min-height: 22px;
	overflow: hidden;
	padding: 1px 9px 0;
	text-align: left;
	text-decoration: none;
}

* html #tuna_address #address_list a {
	height: 22px;
}

#tuna_address #address_list a:hover {
	background: none repeat scroll 0 0 #E8F4FF;
	border-bottom: 1px solid #7F9DB9;
	border-top: 1px solid #7F9DB9;
}

#tuna_address .address_selected {
	background: none repeat scroll 0 0 #FFE6A6;
	color: #FFFFFF;
	height: 22px;
}

#tuna_address .address_pagebreak {
	display: none;
	line-height: 25px;
	margin: 0;
	padding: 0;
	text-align: center;
}

#tuna_address .address_pagebreak a {
	color: #0055AA;
	font-family: Arial, Simsun, sans-serif;
	font-size: 14px;
	margin: 0;
	padding: 0 4px;
	text-align: center;
	text-decoration: underline;
	width: 15px;
}

#tuna_address #address_arrowl, #tuna_address #address_arrowr {
	color: #0055AA;
}

#tuna_address a.address_current {
	color: #000000;
	text-decoration: none;
}

.address_hot {
	background-color: #FFFFFF;
	font-size: 12px;
	width: 550px;
}

.address_hotcity {
	background-color: #67A1E2;
	border-color: #2C7ECF;
	border-style: solid;
	border-width: 1px 1px 0;
	color: #CEE3FC;
	height: 24px;
	line-height: 24px;
	padding-left: 10px;
}

.address_hotcity strong {
	color: #FFFFFF;
}

.address_hotlist {
	border-color: #999999;
	border-style: solid;
	border-width: 0 1px 1px;
	overflow: hidden;
	padding: 5px;
}

.address_hot_abb {
	border-bottom: 1px solid #5DA9E2;
	padding-bottom: 20px;
}

.address_hot_abb li {
	color: #005DAA;
	cursor: pointer;
	float: left;
	height: 20px;
	line-height: 20px;
	list-style-type: none;
	text-align: center;
}

.address_hot_abb li span {
	padding: 0 8px;
}

.address_hot_abb li .hot_selected {
	display: block;
	padding: 0 7px;
	background-color: #FFFFFF;
	border-color: #5DA9E2;
	border-style: solid;
	border-width: 1px 1px 0;
	color: #000000;
	font-weight: bold;
}

.address_hot_adress {
	padding-top: 4px;
	width: 100%;
}

.address_hot_adress li {
	float: left;
	height: 24px;
	overflow: hidden;
	width: 67px;
}

.address_hot_adress li a {
	border: 1px solid #FFFFFF;
	color: #000000;
	display: block;
	height: 22px;
	line-height: 22px;
	padding-left: 5px;
}

.address_hot_adress li a:hover {
	background-color: #E8F4FF;
	border: 1px solid #ACCCEF;
	text-decoration: none;
}

.span_fest {
	text-indent: -9999px
}

.yuan_dan span, .chu_xi span, .chun_jie span, .yuan_xiao span,
	.qing_ming span, .lao_dong span, .duan_wu span, .zhong_qiu span,
	.guo_qing span {
	display: block;
	height: 24px;
	background-image: url(img/icon_festival.png);
	background-repeat: no-repeat;
}

.tuna_calendar .yuan_dan:hover, .tuna_calendar .chu_xi:hover,
	.tuna_calendar .chun_jie:hover, .tuna_calendar .yuan_xiao:hover,
	.tuna_calendar .qing_ming:hover, .tuna_calendar .lao_dong:hover,
	.tuna_calendar .duan_wu:hover, .tuna_calendar .zhong_qiu:hover,
	.tuna_calendar .guo_qing:hover {
	background-image: url(img/icon_festival.png);
	background-repeat: no-repeat;
	background-position: 0 -400px;
	cursor: pointer;
}

.tuna_calendar .festival_select, .tuna_calendar .festival_select:hover {
	background-image: url(img/icon_festival.png);
	background-repeat: no-repeat;
	background-position: 0 -360px;
}

.yuan_dan span {
	background-position: 0 6px;
}

.chu_xi span {
	background-position: 0 -35px;
}

.chun_jie span {
	background-position: 0 -74px;
}

.yuan_xiao span {
	background-position: 0 -114px;
}

.qing_ming span {
	background-position: 0 -155px;
}

.lao_dong span {
	background-position: 0 -194px;
}

.duan_wu span {
	background-position: 0 -234px;
}

.zhong_qiu span {
	background-position: 0 -274px;
}

.guo_qing span {
	background-position: 0 -314px;
}
</style>
</head>

<body class="pec-bgc-fff">
	<section>
		<div class="banner"
			style="background-image: url(img/banner.jpg);"></div>
		<div class="content">
			<ul class="content-left">
				<li class="content-item cf"><i class="icon01"></i>
					<div class="question-item">
						<p class="lable">姓名</p>
						<div class="input-box">
							<input type="text" class="input-ipt" id="clientName" value="">
						</div>
						<div class="freedom-selection-list" id="sex">
							<div class="freedom-selection-item">
								<a class="freedom-btn curr" otype="button" val="M" otitle="男士">男士</a>
							</div>
							<div class="freedom-selection-item">
								<a class="freedom-btn" otype="button" val="F" otitle="女士">女士</a>
							</div>
						</div>
						<p class="warnning-txt js_name">
							<i class="icon-warnning"></i>输入姓名不能为空
						</p>
					</div></li>
				<li class="content-item cf"><i class="icon02"></i>
					<div class="question-item">
						<p class="lable">出生年月</p>
						<div class="freedom-selection-list " id="age">
							<div class="freedom-selection-item">
								<a class="freedom-btn" val="20" otype="button" otitle="23周岁以下">23周岁以下</a>
							</div>
							<div class="freedom-selection-item">
								<a class="freedom-btn curr" val="30" otype="button"
									otitle="23周岁-55周岁">23周岁-55周岁</a>
							</div>
							<div class="freedom-selection-item">
								<a class="freedom-btn" val="60" otype="button" otitle="55周岁以上">55周岁以上</a>
							</div>
						</div>
						<p class="warnning-txt js_birth">
							<i class="icon-warnning"></i>选择出生年月不能为空
						</p>
					</div></li>
				<li class="content-item cf"><i class="icon03"></i>
					<div class="question-item">
						<p class="lable">城市</p>
						<div class="input-box">
							<input type="text" value="" class="input-ipt" size="15"
								id="homecity_name" name="homecity_name" mod="address|notice"
								mod_address_source="hotel"
								mod_address_suggest="@Beijing|北京|53@Shanghai|上海|321@Shenzhen|深圳|91@Guangzhou|广州|80@Qingdao|青岛|292@Chengdu|成都|324@Hangzhou|杭州|383@Wuhan|武汉|192@Tianjin|天津|343@Dalian|大连|248@Xiamen|厦门|61@Chongqing|重庆|394@"
								mod_address_reference="cityid" placeholder="请选择城市"
								autocomplete="off" style="color: gray;"> <input
								id="cityid" name="cityid" type="hidden" value="{$cityid}">
							<!-- <div class="select">上海</div> -->
							<i class="arrow-r"></i>
						</div>
						<p class="warnning-txt js_city">
							<i class="icon-warnning"></i>选择城市不能为空
						</p>
					</div></li>
			</ul>
			<ul class="content-right" id="more">
				<li class="content-item cf"><i class="icon04"></i>
					<div class="question-item">
						<p class="lable">您有缴费期满2年的保单吗?</p>
						<div class="freedom-selection-list " id="policyFlag">
							<div class="freedom-selection-item">
								<a class="freedom-btn" val="Y" otype="button"
									otitle="您有缴费期满2年的保单-有">有</a>
							</div>
							<div class="freedom-selection-item">
								<a class="freedom-btn " val="N" otype="button"
									otitle="您有缴费期满2年的保单-无">无</a>
							</div>
						</div>
						<p class="warnning-txt js_police">
							<i class="icon-warnning"></i>选择保单不能为空
						</p>
					</div></li>
				<li class="content-item cf"><i class="icon05"></i>
					<div class="question-item">
						<p class="lable">您有还款满6个月的房贷吗?</p>
						<div class="freedom-selection-list " id="mortgageFlag">
							<div class="freedom-selection-item">
								<a class="freedom-btn" val="Y" otype="button"
									otitle="您有还款6个月的房贷-有">有</a>
							</div>
							<div class="freedom-selection-item">
								<a class="freedom-btn" val="N" otype="button"
									otitle="您有还款6个月的房贷-无">无</a>
							</div>
						</div>
						<p class="warnning-txt js_mortgage">
							<i class="icon-warnning"></i>选择房贷不能为空
						</p>
					</div></li>
				<li class="content-item cf"><i class="icon06"></i>
					<div class="question-item">
						<p class="lable">您有公积金吗?</p>
						<div class="freedom-selection-list " id="pubFundFlag">
							<div class="freedom-selection-item">
								<a class="freedom-btn" val="Y" otype="button" otitle="您有公积金-有">有</a>
							</div>
							<div class="freedom-selection-item">
								<a class="freedom-btn" val="N" otype="button" otitle="您有公积金-无">无</a>
							</div>
						</div>
						<p class="warnning-txt js_pubFund">
							<i class="icon-warnning"></i>选择公积金不能为空
						</p>
					</div></li>
			</ul>
		</div>
		<div class="content content-shadow">
			<ul class="content-left">
				<li class="content-item cf"><i class="icon07"></i>
					<div class="question-item">
						<p class="lable">手机号</p>
						<div class="input-box">
							<input type="tel" class="input-ipt" id="mobile" value=""
								maxlength="11">
						</div>
						<p class="warnning-txt js_mobile">
							<i class="icon-warnning"></i>输入手机号不能为空
						</p>
					</div></li>
			</ul>
			<ul class="content-right">
				<li class="content-item cf"><i class="icon08"></i>
					<div class="question-item">
						<p class="lable">验证码</p>
						<div class="input-box">
							<input type="tel" class="input-ipt" id="verifyOtp" value=""
								placeholder="请输入验证码">
						</div>
						<a class="btn-code" id="btnSendOpt" otype="button" otitle="获取验证码">获取验证码</a>
						<p class="warnning-txt js_opt">
							<i class="icon-warnning"></i>输入验证码不能为空
						</p>
					</div></li>
			</ul>
		</div>
		<div class="content btn-content">
			<a class="btn-normal" otype="button" otitle="提交">提交</a>
		</div>

		<div class="mask-layer"></div>
		<div class="pop">
			<div class="pop-head">提示</div>
			<div class="pop-content">
				<i></i>
				<p class="title" id="errMes"></p>
				<!-- <p class="txt">请耐心等待客服审核电话短信通知</p> -->
				<a class="btn-normal-line" otype="button" otitle="关闭">关闭</a>
			</div>
		</div>
	</section>
	<div id="jsContainer" class="jsContainer" style="height: 0">
		<div id="tuna_alert"
			style="display: none; position: absolute; z-index: 999; overflow: hidden;"></div>
		<div id="tuna_jmpinfo"
			style="visibility: hidden; position: absolute; z-index: 999;"></div>
		<div style="width: 0px; height: 0px;">
			<div id="tuna_address"
				style="display: none; position: absolute; top: 0; z-index: 120; overflow: hidden; -moz-box-shadow: 2px 2px 5px #333; -webkit-box-shadow: 2px 2px 5px #333;">
				<div id="address_warp">
					<div id="address_message">&nbsp;</div>
					<div id="address_list">
						<a class="a1"
							href="https://b.pingan.com.cn/loan/loanh5/newoneloanPagePC/html/index.html?source=PABKWEB&amp;channelSource=PC_20180426_T1###"><span>&nbsp;</span>&nbsp;</a><a
							class="a1"
							href="https://b.pingan.com.cn/loan/loanh5/newoneloanPagePC/html/index.html?source=PABKWEB&amp;channelSource=PC_20180426_T1###"><span>&nbsp;</span>&nbsp;</a><a
							class="a1"
							href="https://b.pingan.com.cn/loan/loanh5/newoneloanPagePC/html/index.html?source=PABKWEB&amp;channelSource=PC_20180426_T1###"><span>&nbsp;</span>&nbsp;</a><a
							class="a1"
							href="https://b.pingan.com.cn/loan/loanh5/newoneloanPagePC/html/index.html?source=PABKWEB&amp;channelSource=PC_20180426_T1###"><span>&nbsp;</span>&nbsp;</a><a
							class="a1"
							href="https://b.pingan.com.cn/loan/loanh5/newoneloanPagePC/html/index.html?source=PABKWEB&amp;channelSource=PC_20180426_T1###"><span>&nbsp;</span>&nbsp;</a><a
							class="a1"
							href="https://b.pingan.com.cn/loan/loanh5/newoneloanPagePC/html/index.html?source=PABKWEB&amp;channelSource=PC_20180426_T1###"><span>&nbsp;</span>&nbsp;</a><a
							class="a1"
							href="https://b.pingan.com.cn/loan/loanh5/newoneloanPagePC/html/index.html?source=PABKWEB&amp;channelSource=PC_20180426_T1###"><span>&nbsp;</span>&nbsp;</a><a
							class="a1"
							href="https://b.pingan.com.cn/loan/loanh5/newoneloanPagePC/html/index.html?source=PABKWEB&amp;channelSource=PC_20180426_T1###"><span>&nbsp;</span>&nbsp;</a><a
							class="a1"
							href="https://b.pingan.com.cn/loan/loanh5/newoneloanPagePC/html/index.html?source=PABKWEB&amp;channelSource=PC_20180426_T1###"><span>&nbsp;</span>&nbsp;</a><a
							class="a1"
							href="https://b.pingan.com.cn/loan/loanh5/newoneloanPagePC/html/index.html?source=PABKWEB&amp;channelSource=PC_20180426_T1###"><span>&nbsp;</span>&nbsp;</a><a
							class="a1"
							href="https://b.pingan.com.cn/loan/loanh5/newoneloanPagePC/html/index.html?source=PABKWEB&amp;channelSource=PC_20180426_T1###"><span>&nbsp;</span>&nbsp;</a><a
							class="a1"
							href="https://b.pingan.com.cn/loan/loanh5/newoneloanPagePC/html/index.html?source=PABKWEB&amp;channelSource=PC_20180426_T1###"><span>&nbsp;</span>&nbsp;</a>
					</div>
					<div class="address_pagebreak" id="address_p">
						<a id="address_arrowl" href="javascript:;" name="p">&lt;-</a><a
							id="address_p1" href="javascript:;" name="1"
							class="address_current">1</a><a id="address_p2"
							href="javascript:;" name="2">2</a><a id="address_p3"
							href="javascript:;" name="3">3</a><a id="address_p4"
							href="javascript:;" name="4">4</a><a id="address_p5"
							href="javascript:;" name="5">5</a><a id="address_arrowr"
							href="javascript:;" name="n">-&gt;</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/xdomain.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/fixdiv.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/address.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/pab.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/aes.js"></script>
	
	
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/home.js"></script>
	
</body>
</html>`