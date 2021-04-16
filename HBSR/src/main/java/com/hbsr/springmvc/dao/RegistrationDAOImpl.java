package com.hbsr.springmvc.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hbsr.springmvc.model.RegBean;

@Repository("registrationDAO")
public class RegistrationDAOImpl implements RegistrationDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public List<RegBean> getAllEmployees() {
		Session session = this.sessionFactory.getCurrentSession();
		List centerslist = session.createQuery("from RegBean").list();
		return centerslist;
	}

}
