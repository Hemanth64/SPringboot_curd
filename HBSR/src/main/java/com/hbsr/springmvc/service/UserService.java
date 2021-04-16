package com.hbsr.springmvc.service;

import java.util.List;

import com.hbsr.springmvc.model.RegBean;
import com.hbsr.springmvc.model.User;

public interface UserService {

	User findBySSO(String sso);

	List<User> findAllUsers();
	
	void saveUser(RegBean regBean);
	
	boolean isUserSSOUnique(Integer id, String sso);
	
	String CenName(String Cencd);
	
	/*List<User> findByID(int id);*/
	
	//Coreform findByID(int id);

}