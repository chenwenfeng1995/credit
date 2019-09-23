<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
					class="logo-r l mt10 ml20">管理员后台</span> <span class="r logo-rr"><a
					href="" class="selected">${admin.adminname }.欢迎您登录!</a></span>
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
					<li><a href="user/findall">初步审核</a>
					<li class="selected"><a href="user/limittwice">二次审核</a></li>
					<li><a href="final/Querycredit">最终审核</a></li>
				</ul>
			</div>
		</div>
		<!-- 左侧end -->
		<!-- 右侧start -->
		<div class="c-right c-right1">
			<!-- 搜索列表 -->
			<!-- 搜索列表 -->
			<div class="search-member">
				<dl>
					<dd>
					<form action="" method="post">
						<label for="">
							<p class="mt5">申请人：</p> <input type="text"  name="name"
							class="input02 w200 h30 cus1">
						</label> <label for="">
							<p class="mt5">手机号：</p> <input type="text" name="mobile"
							class="input02 w200 h30 cus1">
						</label> <span class="search-b"> <input type="submit" value="搜 索">
							<i></i>
						</span>
					</form>
					</dd>
				</dl>
			</div>
<span><font color=red id="info"  size="3"  >*说明:性别:男(F),女(M);Y(是),N(否)</font></span>
			<div class="lib-tab5 xg-fb">
				<table width="100%">

					<tr>
						<th width="10%">登录名</th>
						<th width="10%">姓名</th>
						<th width="10%">手机</th>
						<th width="10%">城市</th>
						<th width="10%">收入</th>

						<th width="10%">操作</th>
					</tr>



					<c:forEach items="${userList}" var="user">
						<tr>
							<td>${user.username}</td>
							<td>${user.realname}</td>
							<td>${user.mobile}</td>
							<td>${user.city}</td>
							<td>${user.income}</td>
							<td class="c-z">
							<a href="/user/twiceDetail?userid=${user.userid}">详情</a> 
							<a href="/user/twiceAudit?userid=${user.userid}">审核</a>
							</td>
						</tr>
					</c:forEach>


				</table>
				<!-- page -->
						<div class="list-page">
					<ul>
						<li><c:if test="${pagemsg.hasPreviousPage}">
								<a href="${pageContext.request.contextPath}/user/limittwice?cp=${pagemsg.pageNum-1}" class="prev-listPage">上一页</a>
							</c:if>
						</li>
						<c:forEach items="${pagemsg.navigatepageNums}" var="nums">
							<c:if test="${nums==pagemsg.pageNum}">
								<li>
									<a style="color: red" href="${pageContext.request.contextPath}/user/limittwice?cp=${nums}">${nums}</a>
								</li>
							</c:if>
							<c:if test="${nums!=pagemsg.pageNum}">
								<li>
									<a href="${pageContext.request.contextPath}/user/limittwice?cp=${nums}">${nums}</a>
								</li>
							</c:if>
						</c:forEach>
						<li><c:if test="${pagemsg.hasNextPage}">
								<a href="${pageContext.request.contextPath}/user/limittwice?cp=${pagemsg.pageNum+1}" class="next-listPage">下一页</a>
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