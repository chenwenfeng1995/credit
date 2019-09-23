package com.credit.pojo;

import java.io.Serializable;
import java.util.Date;

public class Creditreporting implements Serializable {

	private Integer crid;

	private String realname;

	private String idcard;

	private String creditpoints;

	private Date createtime;

	private Date updatetime;

	public Integer getCrid() {
		return crid;
	}

	public void setCrid(Integer crid) {
		this.crid = crid;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getCreditpoints() {
		return creditpoints;
	}

	public void setCreditpoints(String creditpoints) {
		this.creditpoints = creditpoints;
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