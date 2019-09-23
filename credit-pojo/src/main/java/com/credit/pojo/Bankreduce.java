package com.credit.pojo;

import java.io.Serializable;
import java.util.Date;

public class Bankreduce implements Serializable {
	/**
	 * Bankreduce 银行扣费表
	 * bid id主键
	 * userid 用户id以此找到被扣费的用户
	 * rid  账单id以此找到扣费是哪笔账单产生的
	 * bankisue 银行实际扣费
	 * periodsNo 还款期数
	 * bankCard  被扣费的银行卡
	 * reduceTime 扣费时间
	 * statu  状态
	 * */
  private Integer bid;
  private Integer userid;
  private Integer rid;
  private Integer bankisue;
  private Integer periodsNo;
  private  String bankCard; 
  private  Date reduceTime;
  private String statu;
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public Integer getBankisue() {
		return bankisue;
	}
	public void setBankisue(Integer bankisue) {
		this.bankisue = bankisue;
	}
	public Integer getPeriodsNo() {
		return periodsNo;
	}
	public void setPeriodsNo(Integer periodsNo) {
		this.periodsNo = periodsNo;
	}
	public String getBankCard() {
		return bankCard;
	}
	public void setBankCard(String bankCard) {
		this.bankCard = bankCard;
	}
	public Date getReduceTime() {
		return reduceTime;
	}
	public void setReduceTime(Date reduceTime) {
		this.reduceTime = reduceTime;
	}
	public String getStatu() {
		return statu;
	}
	public void setStatu(String statu) {
		this.statu = statu;
	}
	@Override
	public String toString() {
		return "Bankreduce [bid=" + bid + ", userid=" + userid + ", rid=" + rid + ", bankisue=" + bankisue
				+ ", periodsNo=" + periodsNo + ", bankCard=" + bankCard + ", reduceTime=" + reduceTime + ", statu="
				+ statu + "]";
	}

}
