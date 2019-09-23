<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>易网贷-登录</title>
<!-- 1. 导入CSS的全局样式 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- 2. jQuery导入，建议使用1.9以上的版本 -->
<script src="js/jquery-2.1.0.min.js"></script>
<!-- 3. 导入bootstrap的js文件 -->
<script src="js/bootstrap.min.js"></script>
<style>
* {
	padding: 0px;
	margin: 0px;
}

td, th {
	padding: 20px;
	padding-left: 10px;
}

#maindiv {
	padding: 100px;
}

#btn {
	text-align: center;
}

body {
	background-color: beige;
}

label {
	font-size: 25px;
	font-family: "微软雅黑";
}

a {
	text-decoration: none;
	font-size: 20px;
	font-family: "微软雅黑";
	color: black;
	padding-left: 10px;
}

.form-control {
	height: 45px;
}

button {
	width: 350px;
	color: gray;
}
</style>
<script type="text/javascript">
	function doLogin(){
			
			var mobile=$("#mobile").val();
			var password=$("#password").val();
					
			if(mobile=="" || password==""){
				$("#error").html("<d>请输入用户名或者密码 </d>");
	 			setTimeout('myrefresh()',500); 
			}else{
				$.post("user/login",{"mobile":mobile,"password":password},function(data){
					console.log(data=="");
					if(data==true){
						location.href="http://localhost:8082/index.jsp";
					}else{
						$("#error").html("<d>用户不存在或者密码错误</d>");
			 			setTimeout('myrefresh()',1000); 
						location.href="login.jsp";
					}
						
				},"json")
			}
					
			
    }
	
	function myrefresh(){
		window.location.reload();
	}
			
	function Reg(){
		location.href="register.jsp";
	}
</script>
</head>

<body>

	<div id="maindiv" align="center">

		<div style="height: 80px;">
			<h1 style="padding-bottom: 20px;">易贷网登录</h1>
			<span style="color: red;" id="error"></span>
		</div>

		<div id="logdiv" class="form-inline">

			<table border="0">
				<tr>
					<td><label for="exampleInputName2">用户名:</label></td>
					<td><input type="text" class="form-control" id="mobile"
						placeholder="请输入手机"></td>
				</tr>
				<tr>
					<td><label for="exampleInputName2">密码:</label></td>
					<td><input type="password" class="form-control" id="password"
						placeholder="请输入密码"></td>
				</tr>
				<tr>
					<td id="btn" colspan="2">
						<button class="btn btn-default" onclick="doLogin()">登录</button> <br />
						<button class="btn btn-default" onclick="Reg()">注册</button>
					</td>
				</tr>

			</table>

		</div>
	</div>

</body>

</html>