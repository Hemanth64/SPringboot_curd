package com.hbsr.springmvc.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "hbsr_login")
public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@NotEmpty
	@Column(name = "HBSR_LOGIN_ID", unique = true, nullable = false)
	private String login_Id;

	public String getLogin_Id() {
		return login_Id;
	}

	public void setLogin_Id(String login_Id) {
		this.login_Id = login_Id;
	}

	@NotEmpty
	@Column(name = "HBSR_PWD")
	private String password;

	@NotEmpty
	@Column(name = "HBSR_Cencode")
	private String hbsr_cencode;

	@NotEmpty
	@Column(name = "HBSR_Cen_NAME")
	private String hbsr_cen_name;

	@NotEmpty
	@Column(name = "HBSR_RECNO")
	private String hbsr_recno;

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "app_user_user_profile", joinColumns = { @JoinColumn(name = "USER_ID") }, inverseJoinColumns = {
			@JoinColumn(name = "USER_PROFILE_ID") })
	private Set<UserProfile> userProfiles = new HashSet<UserProfile>();

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHbsr_cencode() {
		return hbsr_cencode;
	}

	public void setHbsr_cencode(String hbsr_cencode) {
		this.hbsr_cencode = hbsr_cencode;
	}

	public String getHbsr_cen_name() {
		return hbsr_cen_name;
	}

	public void setHbsr_cen_name(String hbsr_cen_name) {
		this.hbsr_cen_name = hbsr_cen_name;
	}

	public String getHbsr_recno() {
		return hbsr_recno;
	}

	public Set<UserProfile> getUserProfiles() {
		return userProfiles;
	}

	public void setUserProfiles(Set<UserProfile> userProfiles) {
		this.userProfiles = userProfiles;
	}

	public void setHbsr_recno(String hbsr_recno) {
		this.hbsr_recno = hbsr_recno;
	}
	
	

}
