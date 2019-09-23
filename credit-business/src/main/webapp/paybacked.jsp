<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
		<div class="notic_con px1000">
			<div class="notic_ban">
				<img src="images/notic_ban01.png" alt="">
			</div>
			<div class="notic_section clearfix">
				<div class="notic_sec_l fl">
					<h3>
						<img src="images/notic_pic01.png" alt="">
					</h3>
					<ul class="notic_secl_ul">
						<li class="notic_curli">注册与登录</li>
						<li>账户与安全</li>
						<li>充值与提现</li>
						<li>投资与还款</li>
						<li>充值与提现</li>
					</ul>
				</div>
				<!-- end l -->
				<div class="notic_sec_r fl">
					<h2 class="notic_secr_tit" style="margin-left: 200px">全部账单</h2>
					<form action="getBill" method="post">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>期数/贷款分期</th>
									<th>还款金额</th>
									<th>还款时间</th>
									<th>状态</th>
								</tr>
							</thead>
							<c:forEach var="i" begin="0" end="${size-1}" step="1">
								<tr>
									<td>${start+i+1}/${repayment.periods}期</td>
									<td>${repayment.eachisue}元</td>
									<td>
										<fmt_rt:formatDate value="${arrspilt[i]}" pattern="yyyy-MM-dd" />
									</td>
									<c:if test="${(start+i+1)<=repayment.alreadper}">
										<td class="greenFont">
										<button type="button" class="btn btn-success" >
										<a href="getPeriodsNo?rid=${repayment.rid}&periodsNo=${start+i+1}" target="_blank">已还清</a>
										</button>
										</td>
									</c:if>
									<c:if test="${(start+i+1)>repayment.alreadper}">
										<td><button type="button" class="btn btn-danger">未还清</button></td>
									</c:if>
								</tr>
							</c:forEach>
						</table>
						<%-- <c:if test=""> --%>
							<button ${pageNum==1?"disabled":"" }>
								<a href="/getBill?pageNum=${(pageNum-1)<1?1:(pageNum-1)}&rid=${repayment.rid}">上一页</a>
							</button>
						<%-- </c:if> --%>
						<span>${pageNum }</span>/<span>${pageCount}页</span>
						<button
							${pageNum>=pageCount?"disabled":"" }>
							<a href="/getBill?pageNum=${pageNum>=pageCount?pageCount:(pageNum+1)}&rid=${repayment.rid}">下一页</a>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
