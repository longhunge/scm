package com.lcx.entity;

import java.io.Serializable;

public class WOrder implements Serializable {
	private String woid;//物流订单id
	private String oid;//用户对应的订单id
	private String wostatus;//物流订单状态
	
	
	public String getWoid() {
		return woid;
	}
	public void setWoid(String woid) {
		this.woid = woid;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getWostatus() {
		return wostatus;
	}
	public void setWostatus(String wostatus) {
		this.wostatus = wostatus;
	}
	
}