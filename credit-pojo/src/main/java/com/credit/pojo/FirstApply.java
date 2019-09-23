package com.credit.pojo;

import java.util.Date;

public class FirstApply {
	/**
	 * 该类的作用为接收第一次申请的参数
	 * 
	 * */
	/**
	 * 前台传来的不为用户输入的参数且为空，不知道意义，
	 * activityFlowId,activityId,channelId,mediaSource,outerSource
	 * recNo,outerId,cid,recType,channelSource,source
	 * */
	/**
	 * 前台用户输入的参数
	 * age年龄
	 * sex女性为F男性为M
	 * pubFundFlag有公积金吗值为Y或N
	 * mortgageFlag有满6个月的房贷吗值为Y或N
	 * policyFlag有缴费为两年的保单吗值为Y或N
	 * mobile电话号码
	 * clientName姓名
	 * verifyOtp验证码
	 * workplace地点id
	 * */
	//表的id值
	private Integer sid;
	//申请用户的uid，表示谁申请的从session中获取，以此找到是谁申请的
	private Integer userid;
	private String clientName;
	private String sex;
	private Integer age;
	private String mobile;
	private String verifyOtp;
	private String workplace;
	private String pubFundFlag;
	private String mortgageFlag;
	private String policyFlag;
	//创建时间
	private Date createtime;
	//审核时间
	private Date updatetime ;
	//状态，有未审核，通过，不通过
	private String statu;
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	
	
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		if(sex.equals("F")) {
			this.sex = "女";
		}else if(sex.equals("M")) {
			this.sex = "男";
		}else {
			this.sex =sex;
		}
		
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getVerifyOtp() {
		return verifyOtp;
	}
	public void setVerifyOtp(String verifyOtp) {
		this.verifyOtp = verifyOtp;
	}
	public String getWorkplace() {
		return workplace;
	}
	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}
	public String getPubFundFlag() {
		return pubFundFlag;
	}
	public void setPubFundFlag(String pubFundFlag) {
		if(pubFundFlag.equals("Y")) {
			this.pubFundFlag = "有";
		}else if(pubFundFlag.equals("N")) {
			this.pubFundFlag = "无";
		}else {
			this.pubFundFlag=pubFundFlag;
		}
		
	}
	public String getMortgageFlag() {
		
		return mortgageFlag;
	}
	public void setMortgageFlag(String mortgageFlag) {
		if(mortgageFlag.equals("Y")) {
			this.mortgageFlag = "有";
		}else if(mortgageFlag.equals("N")) {
			this.mortgageFlag = "无";
		}else {
			this.mortgageFlag=mortgageFlag;
		}
		
	}
	public String getPolicyFlag() {
		return policyFlag;
	}
	public void setPolicyFlag(String policyFlag) {
		if(policyFlag.equals("Y")) {
			this.policyFlag = "有";
		}else if(policyFlag.equals("N")) {
			this.policyFlag = "无";
		}else {
			this.policyFlag =policyFlag;
		}
	}
	
	public String getStatu() {
		return statu;
	}
	public void setStatu(String statu) {
		this.statu = statu;
	}
	
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	@Override
	public String toString() {
		return "FirstApply [sid=" + sid + ", userid=" + userid + ", clientName=" + clientName + ", sex=" + sex
				+ ", age=" + age + ", mobile=" + mobile + ", verifyOtp=" + verifyOtp + ", workplace=" + workplace
				+ ", pubFundFlag=" + pubFundFlag + ", mortgageFlag=" + mortgageFlag + ", policyFlag=" + policyFlag
				+ ", createtime=" + createtime + ", updatetime=" + updatetime + ", statu=" + statu + "]";
	}
	
}
