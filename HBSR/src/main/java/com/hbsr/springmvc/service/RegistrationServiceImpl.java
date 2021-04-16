package com.hbsr.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hbsr.springmvc.dao.CoreformDao;
import com.hbsr.springmvc.dao.RegistrationDAO;
import com.hbsr.springmvc.model.RegBean;

@Service("registrationService")
@Transactional
public class RegistrationServiceImpl implements RegistrationService {

	@Autowired
	private RegistrationDAO dao;

	public List<RegBean> getAllEmployees() {

		return dao.getAllEmployees();
	}

}
