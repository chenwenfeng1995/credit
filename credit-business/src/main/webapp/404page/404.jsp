<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="stylesheet" href="/404page/css/main.css" type="text/css" media="screen, projection" /> <!-- main stylesheet -->
<link rel="stylesheet" type="/404page/text/css" media="all" href="css/tipsy.css" /> <!-- Tipsy implementation -->

<!--[if lt IE 9]>
	<link rel="stylesheet" type="text/css" href="css/ie8.css" />
<![endif]-->

<script type="text/javascript" src="/404page/scripts/jquery-1.7.2.min.js"></script> <!-- uiToTop implementation -->
<script type="text/javascript" src="/404page/scripts/custom-scripts.js"></script>
<script type="text/javascript" src="/404page/scripts/jquery.tipsy.js"></script> <!-- Tipsy -->

<script type="text/javascript">

$(document).ready(function(){
			
	universalPreloader();
						   
});

$(window).load(function(){

	//remove Universal Preloader
	universalPreloaderRemove();
	
	rotate();
    dogRun();
	dogTalk();
	
	//Tipsy implementation
	$('.with-tooltip').tipsy({gravity: $.fn.tipsy.autoNS});
						   
});

</script>


<title>404 - Not found</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<meta name="author" content="www.xmoban.cn">
<meta name="copyright" content="Copyright www.xmoban.cn">
<body>

<!-- Universal preloader -->
<div id="universal-preloader">
    <div class="preloader">
        <img src="/404page/images/universal-preloader.gif" alt="universal-preloader" class="universal-preloader-preloader" />
    </div>
</div>
<!-- Universal preloader -->

<div id="wrapper">
<!-- 404 graphic -->
	<div class="graphic"></div>
<!-- 404 graphic -->
<!-- Not found text -->
	<div class="not-found-text">
    	<h1 class="not-found-text"><!-- File not found, sorry! -->找不到文件，对不起！</h1>
    </div>
<!-- Not found text -->

<!-- search form -->
<!-- <div class="search">
	 <form name="search" method="get" action="#" />
        <input type="text" name="search" value="Search ..." />
        <input class="with-tooltip" title="Search!" type="submit" name="submit" value="" />
    </form>
</div> -->
<!-- search form -->

<!-- top menu -->
<div class="top-menu">
	<a href="#" class="with-tooltip" title="Return to the home page" style="color:#FBBC33;font-size:20px;">回到首页</a>
	 <!-- | <a href="#" class="with-tooltip" title="Navigate through our sitemap">Sitemap</a> 
	 		| <a href="#" class="with-tooltip" title="Contact us!">Contact</a> 
	 		| <a href="#" class="with-tooltip" title="Request additional help">Help</a> -->
</div>
<!-- top menu -->

<div class="dog-wrapper">
<!-- dog running -->
	<div class="dog"></div>
<!-- dog running -->
	
<!-- dog bubble talking -->
	<div class="dog-bubble">
    	
    </div>
    
    <!-- The dog bubble rotates these -->
    <div class="bubble-options">
    	<p class="dog-bubble">
        	<!-- Are you lost, bud? No worries, I'm an excellent guide! -->
        	你迷路了吗？别担心，我是个优秀的导游！
        </p>
    	<p class="dog-bubble">
	        <br />
        	<!-- Arf! Arf! -->汪!汪!
        </p>
        <p class="dog-bubble">
        	<br />
        	<!-- Don't worry! I'm on it! -->
        	别担心！我明白了！
        </p>
        <p class="dog-bubble">
        	<!-- I wish I had a cookie -->我希望我有饼干<br /><img style="margin-top:8px" src="/404page/images/cookie.png" alt="cookie" />
        </p>
        <p class="dog-bubble">
        	<br />
        	<!-- Geez! This is pretty tiresome! -->哎呀！这太讨厌了！
        </p>
        <p class="dog-bubble">
        	<br />
        	<!-- Am I getting close? -->我快到了吗？
        </p>
        <p class="dog-bubble">
        	<!-- Or am I just going in circles? Nah... -->或者我只是在兜圈子？不。。。
        </p>
        <p class="dog-bubble">
        	<br />
            <!-- OK, I'm officially lost now... -->好吧，我现在正式迷路了…
        </p>
        <p class="dog-bubble">
        	<!-- I think I saw a -->我想我看到了<br /><img style="margin-top:8px" src="images/cat.png" alt="cat" />
        </p>
        <p class="dog-bubble">
        	<!-- What are we supposed to be looking for, anyway? @_@ -->我们到底要找什么？@_@
        </p>
    </div>
    <!-- The dog bubble rotates these -->
<!-- dog bubble talking -->
</div>

<!-- planet at the bottom -->
	<div class="planet"></div>
<!-- planet at the bottom -->
</div>


</body>
</html>