package com.hbsr.springmvc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="icd10codes")
public class Icd10Disc implements Serializable {
	
	@Id
	@Column(name = "IcId")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer IcId;
	
	@Column(name = "IcCode")
	private String IcCode;
	
	@Column(name = "IcDescription")
	private String IcDescription;
	


	public Integer getIcId() {
		return IcId;
	}

	public void setIcId(Integer icId) {
		IcId = icId;
	}

	public String getIcCode() {
		return IcCode;
	}

	public void setIcCode(String icCode) {
		IcCode = icCode;
	}

	public String getIcDescription() {
		return IcDescription;
	}

	public void setIcDescription(String icDescription) {
		IcDescription = icDescription;
	}
	
	

}
