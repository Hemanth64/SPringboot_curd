package com.hbsr.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hbsr.springmvc.dao.CoreformDao;
import com.hbsr.springmvc.model.Coreform;
import com.hbsr.springmvc.model.ReffSerialNo;

@Service("coreformService")
@Transactional
public class CoreformServiceImpl implements CoreformService {

	@Autowired
	private CoreformDao dao;

	@Autowired
	private PasswordEncoder passwordEncoder;

	public void saveCoreForm(Coreform coreform) {
		dao.saveCoreForm(coreform);
	}



	public List<Coreform> findAllRecords() {

		return dao.findAllRecords();
	}

	public Coreform update(Coreform coreform) {		
		return dao.update(coreform);
	}

	public String ReIDf() {

		return dao.ReIDf();
	}

	public Coreform editById(int id) {
		return dao.editById(id);
	}



	public List<Coreform> CoreSearch(String typ, String typ2, String srhVal,String srhVal2,String srhVal3,String srhVal4,String srhVal5,String srhVal6) {
		List<Coreform> core = dao.CoreSearch(typ,typ2,srhVal,srhVal2,srhVal3,srhVal4,srhVal5,srhVal6);
		return core;
	}
	
	
	public List<Coreform> follow_up(String srchFollw,String id7, String id8) {
		// TODO Auto-generated method stub
		List<Coreform> core=dao.follow_up(srchFollw, id7, id8);
		return core;
	}



	public List<Coreform> ExcelExport(String exportfrm, String id9, String id10, String id11, String id12,
			String id13) {
		List<Coreform> core=dao.ExcelExport(exportfrm, id9,id10,id11,id12,id13);
		return core;
	}
}
