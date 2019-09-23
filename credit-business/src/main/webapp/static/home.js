var urlObj=parseQueryString(location.href),
	/*optURL=PAB.domain.pafa5Domain+"/brmsd/loan/cust/brmsd-loan/pccl/aggregate/sendOtp",
	saveUlr=PAB.domain.pafa5Domain+"/brmsd/loan/cust/brmsd-loan/pccl/aggregate/saveLoanPcllNew",*/
	optURL="/sendOpt",
	saveUlr="/save",
	result={activityFlowId:"",
			activityId:"",
			channelId:"",
			mediaSource:"",
			outerSource:"",
			recNo:"",
			outerId:"",
			cid:"",
			recType:"",
			age:"30",
			sex:"M",
			pubFundFlag:"",
			mortgageFlag:"",
			policyFlag:"",
			channelSource:urlObj.channelSource||"",
			source:urlObj.source||""};
function verify(){
	result.clientName=$("#clientName").val(),result.verifyOtp=$("#verifyOtp").val(),result.workplace=$("#homecity_name").val();
	var e=$("#mobile").val();
	return result.clientName?$(".js_name").hide():$(".js_name").show(),
			result.workplace?($(".js_city").hide(),
			result.workplace=$("#cityid").val()):$(".js_city").show(),
			result.verifyOtp?$(".js_opt").hide():$(".js_opt").show(),
			result.policyFlag?$(".js_police").hide():$(".js_police").show(),
			result.mortgageFlag?$(".js_mortgage").hide():$(".js_mortgage").show(),
			result.pubFundFlag?$(".js_pubFund").hide():$(".js_pubFund").show(),e?/^1[3456789]\d{9}$/.test(e)?$(".js_mobile").hide():$(".js_mobile").html("请输入正确的手机号"):$(".js_mobile").show(),
			result.clientName&&result.workplace&&result.verifyOtp&&result.policyFlag&&result.mortgageFlag&&result.pubFundFlag&&e}
function sendOpt(e){
	if(checkieVersion()){
		var t=$("#mobile").val();
		/*t=Encrypt(t),*/result.mobile=t,e.off().attr("disabled",!0),jQuery.support.cors=!0,
		$.ajax({
			url:optURL,
			dataType:"text",
			contentType:"application/x-www-form-urlencoded; charset=UTF-8",
			type:"post",
			data:{mobile:t},
			success:function(o){
						
						if("success"==o)
						{
								result.mobile=t;
								var r=60;
								window.t=setInterval(function(){
								e.html("重新获取("+r+"s)"),--r<0&&(clearInterval(window.t),
								e.html("获取验证码").removeAttr("disabled").on("click",function(){sendOpt($(this))}))},1e3)
						}
						else {
								tips(o),
								$("#btnSendOpt").removeAttr("disabled").on("click",function(){sendOpt($(this))})
							}
					},
			error:function(e){
				$("#btnSendOpt").removeAttr("disabled").on("click",function(){sendOpt($(this))}),
				console.log(e),
			tips("网络繁忙，请稍后再试!")}})}
			else tips("亲，您的浏览器版本太低，请更新浏览器版本，谢谢!")
			}
		
function save(){
	if(checkieVersion())
	{
		var e=$("#mobile").val();
		/*e=Encrypt(e),*/result.mobile=e,jQuery.support.cors=!0,verify()&&(result.clientName/*=Encrypt(result.clientName)*/,
		$.ajax({
			url:saveUlr,
			dataType:"text",
			contentType:"application/x-www-form-urlencoded; charset=UTF-8",
			type:"post",
			data:result,
			success:function(e){
				
				console.log("data",e);
				if(e=="success"){
					//"000000"==e.responseCode?"30"!=result.age?tips("抱歉！您的年龄不符合申请条件，请选择我行其他贷款产品。"):"N"==result.pubFundFlag&&"N"==result.policyFlag&&"N"==result.mortgageFlag?tips("抱歉！您暂不符合新一贷申请条件，过段时间再来试试吧！"):tips("提交成功，请保持电话畅通，客服会尽快联系你~"):"900011"==e.responseCode?tips("您输入的验证码不正确"):tips(e.responseMsg);
						tips("申请成功，稍后客服会联系您账号预留的电话");
						clearInterval(window.t);
						$("#btnSendOpt").html("获取验证码").removeAttr("disabled").on("click",function(){sendOpt($(this))});
						//location.href="http://localhost:8081/login/login";
				}else{
					
				}
				
			},
			error:function(e){console.log(e),tips("网络繁忙，请稍后再试!")}}))}else tips("亲，您的浏览器版本太低，请更新浏览器版本，谢谢!")
	}
function Encrypt(e){var t=CryptoJS.enc.Utf8.parse(e),o=CryptoJS.enc.Utf8.parse("S7pj38AsAQPhokOs"),r=CryptoJS.enc.Utf8.parse("0102030405060708");t=CryptoJS.enc.Utf8.parse(e);
	return CryptoJS.AES.encrypt(t,o,{iv:r,mode:CryptoJS.mode.CBC,padding:CryptoJS.pad.Pkcs7}).toString()}function tips(e){$("#errMes").html(e),$(".mask-layer").show(),$(".pop").show()}
function parseQueryString(e){var t=/([^&=]+)=([\w\W]*?)(&|$|#)/g,o=/^[^\?]+\?([\w\W]+)$/.exec(e),r={};if(o&&o[1])for(var s,n=o[1];null!=(s=t.exec(n));)r[s[1]]=s[2];return r}
function checkieVersion(){
	var e=window.navigator.userAgent.toLowerCase();
	return!(e.match(/msie\s\d+/)&&e.match(/msie\s\d+/)[0]||e.match(/trident\s?\d+/)&&e.match(/trident\s?\d+/)[0])||!((e.match(/msie\s\d+/)[0].match(/\d+/)[0]||e.match(/trident\s?\d+/)[0])<=9)
	}
$(".freedom-selection-item").on("click",".freedom-btn",function(){var e=$(this),t=e.closest(".freedom-selection-list");t.find(".freedom-btn").removeClass("curr"),e.addClass("curr"),result[t.attr("id")]=e.attr("val"),console.log("pdom",result[t.attr("id")])}),$("#btnSendOpt").on("click",function(){console.log("sendopt");var e=$("#mobile").val();e?/^1[3456789]\d{9}$/.test(e)?($(".js_mobile").hide(),sendOpt($(this))):$(".js_mobile").html("请输入正确的手机号"):$(".js_mobile").show()}),$(".btn-normal").on("click",function(){save()}),$(".btn-normal-line").on("click",function(){$(".pop").hide(),$(".mask-layer").hide()});