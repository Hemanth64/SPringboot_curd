package com.hbsr.springmvc.dao;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hbsr.springmvc.model.ReffSerialNo;




@Repository("ReffDao")
public class ReffDaoImp extends AbstractDao<Integer, ReffSerialNo> implements ReffDao {
	
	
static final Logger logger = LoggerFactory.getLogger(ReffDaoImp.class);
	
	@Autowired
    private SessionFactory sessionFactory;
	
	
	public ReffSerialNo setReffNo(String CenCd) {	
		
		logger.info("setting Refference : {}"+ CenCd);
		Criteria crit = createEntityCriteria();
		System.out.println("Critieria entred");		
		crit.add(Restrictions.eq("CenCd",CenCd));
		ReffSerialNo Reff = (ReffSerialNo)crit.uniqueResult();	
		return Reff;
	}

	
	public ReffSerialNo refftableUpdate(String CenCd) {			
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("CenCd", CenCd));
		ReffSerialNo reffserialno = (ReffSerialNo)crit.uniqueResult();		
		return reffserialno;
	}

}
