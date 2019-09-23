package com.credit.pojo;

import java.io.Serializable;
import java.util.Date;

public class Repayment implements Serializable {
	
		/**
		 * 属性的意义
		 * rid 表的id
		 * userid 用户的id
		 * cid credit贷款表的id表示该账单是哪笔贷款产生的
		 * paymentime第一笔应还的日期，与credit贷款表的paymentime相对应
		 * eachisue每期应还的钱
		 * periods总共要还多少期
		 * alreadper已经还了多少期
		 * statu状态
		 * */
		private Integer rid;
		private Integer userid;
		private Integer cid;
		private Date paymentTime;
		private Double eachisue;
		private Integer periods;
		private Integer alreadper;
		private String statu;
		public Integer getRid() {
			return rid;
		}
		public void setRid(Integer rid) {
			this.rid = rid;
		}
		public Integer getUserid() {
			return userid;
		}
		public void setUserid(Integer userid) {
			this.userid = userid;
		}
		public Integer getCid() {
			return cid;
		}
		public void setCid(Integer cid) {
			this.cid = cid;
		}
		public Date getPaymentTime() {
			return paymentTime;
		}
		public void setPaymentTime(Date paymentTime) {
			this.paymentTime = paymentTime;
		}
		public Double getEachisue() {
			return eachisue;
		}
		public void setEachisue(Double eachisue) {
			this.eachisue = eachisue;
		}
		public Integer getPeriods() {
			return periods;
		}
		public void setPeriods(Integer periods) {
			this.periods = periods;
		}
		public Integer getAlreadper() {
			return alreadper;
		}
		public void setAlreadper(Integer alreadper) {
			this.alreadper = alreadper;
		}
		public String getStatu() {
			return statu;
		}
		public void setStatu(String statu) {
			this.statu = statu;
		}	
	}


