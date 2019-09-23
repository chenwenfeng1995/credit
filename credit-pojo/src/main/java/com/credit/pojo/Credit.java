package com.credit.pojo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Credit implements Serializable {

	private Integer cid;

	private Integer userid;

	private String realname;

	private String borrowmoney;


	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date borrowtime;


	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date paymenttime;

	private String phone;

	private String use;

	private String describe;

	private String upload;

	private String status;

	private Date createtime;

	private Date updatetime;

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getBorrowmoney() {
		return borrowmoney;
	}

	public void setBorrowmoney(String borrowmoney) {
		this.borrowmoney = borrowmoney;
	}

	public Date getBorrowtime() {
		return borrowtime;
	}

	public void setBorrowtime(Date borrowtime) {
		this.borrowtime = borrowtime;
	}

	public Date getPaymenttime() {
		return paymenttime;
	}

	public void setPaymenttime(Date paymenttime) {
		this.paymenttime = paymenttime;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUse() {
		return use;
	}

	public void setUse(String use) {
		this.use = use;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public String getUpload() {
		return upload;
	}

	public void setUpload(String upload) {
		this.upload = upload;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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

}