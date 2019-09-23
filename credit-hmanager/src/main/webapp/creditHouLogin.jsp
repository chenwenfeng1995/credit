<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basepath %>" />
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/member.css">
	<link rel="stylesheet" href="css/css.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/font-awesome-ie7.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jsp/jquery/jquery-1.8.3.min.js"></script>

<script type="text/javascript">
	function check(){
		var adminname = $("#adminname").val();
		var adminpassword = $("#adminpassword").val();
		var code=$("#code").val();
		if (adminname=="" || adminpassword==""||code=="")  {
			$("#info").html("用户名、密码与验证码不能为空 ")
		}else{
			$.post("ac/login",{"adminname":adminname,"adminpassword":adminpassword,"code":code},
			function(data){
				if (data==1) {
					$("#info").html("帐号或密码错误，请重新输入");
				}else if(data==3){
					$("#info").html("验证码错误，请重新输入 ");
				}else{
					location.href="user/findall";
				}
			},"json")
		}
	}
</script>
</head>
<body style="width:100%; height:100%">
    <div class="log-body">
        <div class="w1200 auto">
        <div class="mt70 l cl">
           <img src="images/logo.png" alt="" class="mt10 l">
        <span class="logo-r l mt10 ml20 g91ceff">易贷网管理后台</span>
        </div>
        <div class="log-b l cl">
            <div class="log-b-r">
                <div class="tit">后台登录</div>
                <p align=center><font color=red id="info"  size="3"  ></font></p>
                <dl>
                    <dt>用户名：</dt>
                    <dd><input type="text" name="adminname" id="adminname" value="zhangsan"><i class="fa fa-lg fa-user gc"></i></dd>
                </dl>
                <dl>
                    <dt>密 码：</dt>
                    	<dd><input type="password" name="adminpassword" id="adminpassword" value="123"><i class="fa fa-lg fa-lock gc"></i></dd>
                	 
                </dl>
                <dl>
                    <dt>验证码：</dt>
                    <dd><input type="text" class="yzm l" name="code" id="code">
                    <img id="imgObj" alt="验证码" src="${pageContext.request.contextPath}/ac/get">
			        <button onclick="changeImg()">换一张</button><br/>
                    </dd>
                </dl>
                <div class="ml120 mt30 l">
                    <input type="submit" class="sub-but" value="提交" onclick="check();">
                    <input type="button" class="sub-but" value="重置">
                </div>
            </div>
        </div>
    </div>
    </div>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="js/jquery.popup_box.js"></script>
<script type="text/javascript" src="js/main.js"></script>
</body>
<script type="text/javascript">
    $(function() {

    });

    function changeImg() {        
        var imgSrc = $("#imgObj");    
        var src = imgSrc.attr("src");        
        imgSrc.attr("src", chgUrl(src));
    }
    
    // 时间戳
    // 为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳
    function chgUrl(url) {
        var timestamp = (new Date()).valueOf();
        url = url.substring(0, 20);
        if ((url.indexOf("&") >= 0)) {
            url = url + "×tamp=" + timestamp;
        } else {
            url = url + "?timestamp=" + timestamp;
        }
        return url;
    }

</script>
</html>