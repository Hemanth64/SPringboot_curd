package com.hbsr.springmvc.dao;

import java.util.List;

import com.hbsr.springmvc.model.RegBean;
import com.hbsr.springmvc.model.User;

public interface UserDao {

	User findBySSO(String sso);

	List<User> findAllUsers();

	void save(RegBean regBean);
	
	String CenName(String Cencd);

	

}
