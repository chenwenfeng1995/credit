<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basepath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/member.css">
<link rel="stylesheet" href="css/css.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/font-awesome-ie7.css">
</head>
<body class="rel">
	<div class="header">
		<div class="header-t">
			<div class="w1200 auto">
				<img src="images/logo.png" alt="" class="mt10 l"><span
					class="logo-r l mt10 ml20">管理员后台</span> <span class="r logo-rr">
					<a href="javascript:(0);" class="selected">${admin.adminname }.欢迎您登录!</a></span>
			</div>
		</div>
		<div class="header-b">
			<div class="w1200 auto">
				<div class="nav">
					<ul class="auto">
						<li class="selected"><a href="javascript:"><span class="icn1"></span><i>审核信息</i></a></li>
						<li><a href="user/loan"><span class="icn2"></span><i>借款信息</i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="w1200 auto contant rel">
		<div class="breadcrumbs">
			<a >管理员后台</a> > <a>我的工作台</a> > <a>待处理审核</a>
		</div>
		<!-- 左侧start -->
		<div class="c-left">
			<div class="about-t">
				<span class="f20 g6 ml30 mt15 dib">审核</span>
			</div>
			<div class="l-menu">
				<ul class="nav_li">
					<li class="selected"><a href="user/findall">初步审核</a></li>
					<li><a href="user/limittwice">二次审核</a></li>
					<li><a href="final/Querycredit">最终审核</a></li>
				</ul>
			</div>
		</div>
		<!-- 左侧end -->
		<!-- 右侧start -->
		<div class="c-right c-right1">
			<!-- 搜索列表 -->
			<!-- 搜索列表 -->
			<form action="user/findall" method="post">
				<div class="search-member">
					<dl>
						<dd>
							<label for="">
								<p class="mt5">申请人：</p> <input type="text"
								class="input02 w200 h30 cus1" name="clientName" />
							</label> <label for="">
								<p class="mt5">手机号：</p> <input type="text"
								class="input02 w200 h30 cus1" name="mobile" />
							</label> <span class="search-b"> <input type="submit" value="搜 索">
								<i></i>
							</span>
						</dd>
					</dl>
				</div>
			</form>
			<span><font color=red id="info" size="3">*说明:性别:男(F),女(M);Y(是),N(否)</font></span>
			<div class="lib-tab5 xg-fb">
				<table width="100%">
					<thead>
						<tr>
							<th width="10%">申请人</th>
							<th width="10%">性别</th>
							<th width="10%">年龄</th>
							<th width="10%">是否有公积金</th>
							<th width="10%">是否有满6个月房贷</th>
							<th width="10%">是否有缴费为两年的保单</th>
							<th width="10%">电话号码</th>
							<th width="20%">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${applylist }" var="al">
							<tr>
								<td>${al.clientName }</td>
								<td>${al.sex }</td>
								<td>${al.age }</td>
								<td>${al.pubFundFlag }</td>
								<td>${al.mortgageFlag }</td>
								<td>${al.policyFlag }</td>
								<td>${al.mobile }</td>
								<td>
									<a href="user/udatelimit?userid=${al.userid}" class="dj-read">审核通过</a>
									<a href="user/udatelimit2?userid=${al.userid}" class="dj-read">审核未通过</a>
								</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				<!-- page -->
				<div class="list-page">
					<ul>
						<li><c:if test="${pagemsg.hasPreviousPage}">
								<a href="${pageContext.request.contextPath}/user/findall?cp=${pagemsg.pageNum-1}" class="prev-listPage">上一页</a>
							</c:if>
						</li>
						<c:forEach items="${pagemsg.navigatepageNums}" var="nums">
							<c:if test="${nums==pagemsg.pageNum}">
								<li>
									<a style="color: red" href="${pageContext.request.contextPath}/user/findall?cp=${nums}">${nums}</a>
								</li>
							</c:if>
							<c:if test="${nums!=pagemsg.pageNum}">
								<li>
									<a href="${pageContext.request.contextPath}/user/findall?cp=${nums}">${nums}</a>
								</li>
							</c:if>
						</c:forEach>
						<li><c:if test="${pagemsg.hasNextPage}">
								<a href="${pageContext.request.contextPath}/user/findall?cp=${pagemsg.pageNum+1}" class="next-listPage">下一页</a>
							</c:if>
						</li>
						<li><a>第${pagemsg.pageNum}页 </a></li>
						<li><a>共${pagemsg.pages}页 </a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 左侧end -->
	</div>
	<div class="footer">
		<span class="f14 g3 mt25 dib">© 2019 深圳市易贷网有限公司 版权所有</span>
	</div>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
	<script type="text/javascript" src="js/jquery.popup_box.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>