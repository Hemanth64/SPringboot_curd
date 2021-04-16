package com.hbsr.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hbsr.springmvc.model.Icd10Disc;

@Repository("SearchDao")
public class SearchDaoImpl extends AbstractDao<Integer, Icd10Disc> implements SearchDao {

	static final Logger logger = LoggerFactory.getLogger(SearchDaoImpl.class);
			
	@Autowired
    private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Icd10Disc> searchIcd10Disc(String desc) {

		Session session = sessionFactory.getCurrentSession();
		Criteria crit = 
			    session.createCriteria(Icd10Disc.class).add(Restrictions.like("IcDescription", desc+'%'));			
		
			List<Icd10Disc> CodSrch = crit.list();	
		return CodSrch;
		
	}
	

}
