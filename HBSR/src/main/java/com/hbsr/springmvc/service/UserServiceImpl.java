package com.hbsr.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hbsr.springmvc.dao.UserDao;
import com.hbsr.springmvc.model.RegBean;
import com.hbsr.springmvc.model.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao dao;

	

	public User findBySSO(String sso) {
		User user = dao.findBySSO(sso);
		return user;
	}

	public List<User> findAllUsers() {
		return dao.findAllUsers();
	}

	public boolean isUserSSOUnique(Integer id, String sso) {
		User user = findBySSO(sso);
		return (user == null || ((id != null) && (user.getId() == id)));
	}

	public void saveUser(RegBean regBean) {

		dao.save(regBean);
	}

	public String CenName(String Cencd) {		
		return dao.CenName(Cencd);
	}

}
