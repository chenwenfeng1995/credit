package com.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.databind.ObjectMapper;

public class bankcardApi {
	/**
	 * TODO
	 * @param cardNo 银行卡卡号
	 * @return {"bank":"CMB","validated":true,"cardType":"DC","key":"(卡号)","messages":[],"stat":"ok"}
	 * 2017年5月22日 下午4:35:23
	 */
	public static String getCardDetail(String cardNo) {
	    // 创建HttpClient实例
	    String url = "https://ccdcapi.alipay.com/validateAndCacheCardInfo.json?_input_charset=utf-8&cardNo=";
	    url+=cardNo;
	    url+="&cardBinCheck=true";
	    StringBuilder sb = new StringBuilder();
	try {
	  URL urlObject = new URL(url);
	  URLConnection uc = urlObject.openConnection();
	  BufferedReader in = new BufferedReader(new InputStreamReader(uc.getInputStream()));
	  String inputLine = null;
	  while ( (inputLine = in.readLine()) != null) {
	    sb.append(inputLine);
	  }
	  in.close();
	} catch (MalformedURLException e) {
	  e.printStackTrace();
	} catch (IOException e) {
	  e.printStackTrace();
	}
	return sb.toString();
	}
	/*public static void main(String[] args) {
	    System.out.println(getCardDetail("6217907600002037591"));
	    String CardDetail=getCardDetail("6217907600002037591");
	    Map mapTypes = JSON.parseObject(CardDetail);
	    System.out.println("这个是用JSON类来解析JSON字符串!!!");
	    for (Object obj : mapTypes.keySet()){  
            System.out.println("key为："+obj+"值为："+mapTypes.get(obj));  
            System.out.println(mapTypes.get("bank"));
        }	
	    
	}*/
	
}
