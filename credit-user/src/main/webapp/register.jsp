<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>易网贷-注册</title>
<!-- 1. 导入CSS的全局样式 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- 2. jQuery导入，建议使用1.9以上的版本 -->
<script src="js/jquery-2.1.0.min.js"></script>
<!-- 3. 导入bootstrap的js文件 -->
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.7.2.min.js"></script>
<style>
* {
	padding: 0px;
	margin: 0px;
}

body {
	background-color: beige;
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

#btn {
	width: 350px;
}
</style>

<script type="text/javascript">
	
		var InterValObj; //控制时间
		var count=60; //间隔函数，1s执行
		var curCount; //当前剩余秒数
		
		function myrefresh(){
			window.location.reload();
		}
		
		//获取验证码
		function getCode(){
			
			//获取手机号码
			var mobile=$("#mobile").val();
			
			curCount=count;
			//开始计时
			$("#btnCode").attr('disabled','true');
			$("#btnCode").html(curCount+"s后发送 ");
			InterValObj=window.setInterval(SetRemainTime,1000);
			
			if(mobile==""){
				$("#error").html("<d>请输入手机号</d>");
				$("#btnCode").html("发送验证码");
	 			setTimeout('myrefresh()',300); 
			}else{
				var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
				if(!myreg.test(mobile)){
					$("#error").html("<d>请输入有效手机号</d>");
		 			setTimeout('myrefresh()',300); 
		 			
				}else{
					$.post("/user/getCode",{"mobile":mobile},function(data){
		 				
		 				if(data==true){
		 					alert("短信发送成功 ");
		 				}
		 			},"json");
				}
			}
			
		}
		
		//定义定时器 
		function SetRemainTime(){
			
			if(curCount==0){
				//停止计时器
				window.clearInterval(InterValObj);
				$("#btnCode").removeAttr("disabled");
				$("#btnCode").html("发送验证码");
			}else{
				curCount--;
				$("#btnCode").html(curCount+"s后发送 ");
			}
			
		}
		
		
		function doReg(){
			//获取手机号
			var mobile=$("#mobile").val();
			//获取输入的验证码
			var checkCode=$("#checkCode").val();
			//获取密码
	 		var password=$("#password").val();
	 		var password2=$("#password2").val();
	 		
	 		if(password!=password2){
	 			$("#error").html("<d>两次密码不一致,请重新输入</d>");
	 			setTimeout('myrefresh()',300); 
	 		}else{
	 			if(mobile=="" || checkCode=="" || password=="" || password2==""){
	 				$("#error").html("<d>请输入完整信息再进行注册</d>");
		 			setTimeout('myrefresh()',300); 
	 			}else{
	 				$.post("user/reg",{"mobile":mobile,"password":password,"checkCode":checkCode},function(data){
			 			
			 			if(data=="true"){
			 				location.href="login.jsp";
			 				mobile.clear();
			 				
			 			}else{
			 				$("#error").html("<d>验证码输入错误,请重新输入</d>");
			 				location.href="register.jsp";
			 			}
			 			
			 		},"text");
	 			}
	 			
	 		}
	 		
	 		
		}
		
		
	
	</script>



</head>

<body>

	<div id="maindiv" align="center">

		<div style="height: 80px;">
			<h1 style="padding-bottom: 10px;">易贷网-注册</h1>
			<span style="color: red;" id="error"></span>
		</div>
		<div class="form-inline">
			<table>
				<tr>
					<td><label for="exampleInputName2">手机号码:</label></td>
					<td><input type="text" class="form-control" id="mobile"
						name="mobile" placeholder="请输入手机"></td>
				</tr>
				<tr>
					<td><label for="exampleInputName2">动态密码:</label></td>
					<td><input type="text" class="form-control" id="checkCode"
						placeholder="请输入手机验证码">&nbsp;&nbsp;
						<button class="btn btn-default" id="btnCode" onclick="getCode()">发送验证码</button>
					</td>
				</tr>
				<tr>
					<td><label for="exampleInputName2">设置密码:</label></td>
					<td><input type="password" class="form-control" id="password"
						name="password" placeholder="请输入密码"></td>
				</tr>
				<tr>
					<td><label for="exampleInputName2">确认密码:</label></td>
					<td><input type="password" class="form-control" id="password2"
						placeholder="请再次输入密码"></td>
				</tr>
				<tr>
					<td id="btn" colspan="2">
						<button class="btn btn-default" id="btn" onclick="doReg()">注册</button>
					</td>
				</tr>

			</table>
		</div>
	</div>

</body>

</html>