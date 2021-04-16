package com.hbsr.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="serialnotab")
public class ReffSerialNo {
	
	@Id
	@Column(name = "Serial_Id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer Serial_Id;
	
	@Column(name = "HF_CenCode")
	private String CenCd;
	
	@Column(name = "HF_CenName")
	private String CenterName;
	
	@Column(name = "Serial_No")
	private String Serial_No;
	
	@Column(name = "Serial_No_Reff")
	private String Serial_No_Reff;
	
	@Column(name = "Serial_full_Reff")
	private String fullReffnum;

	public Integer getSerial_Id() {
		return Serial_Id;
	}

	public void setSerial_Id(Integer serial_Id) {
		Serial_Id = serial_Id;
	}

	public String getCenCd() {
		return CenCd;
	}

	public void setCenCd(String cenCd) {
		CenCd = cenCd;
	}

	public String getCenterName() {
		return CenterName;
	}

	public void setCenterName(String centerName) {
		CenterName = centerName;
	}

	public String getSerial_No() {
		return Serial_No;
	}

	public void setSerial_No(String serial_No) {
		Serial_No = serial_No;
	}

	public String getSerial_No_Reff() {
		return Serial_No_Reff;
	}

	public void setSerial_No_Reff(String serial_No_Reff) {
		Serial_No_Reff = serial_No_Reff;
	}

	public String getFullReffnum() {
		return fullReffnum;
	}

	public void setFullReffnum(String fullReffnum) {
		this.fullReffnum = fullReffnum;
	}
	
	

}
