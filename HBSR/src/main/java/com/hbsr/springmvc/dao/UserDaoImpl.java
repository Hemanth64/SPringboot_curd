package com.hbsr.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.hbsr.springmvc.model.Coreform;
import com.hbsr.springmvc.model.RegBean;
import com.hbsr.springmvc.model.User;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {
	static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

	public User findBySSO(String sso) {
		logger.info("SSO : {}", sso);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("login_Id", sso));
		User user = (User) crit.uniqueResult();
		if (user != null) {
			Hibernate.initialize(user);
		}
		return user;
	}

	@SuppressWarnings("unchecked")
	public List<User> findAllUsers() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("hbsr_cen_name"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
		List<User> users = (List<User>) criteria.list();
		return users;
	}
	public void save(RegBean regBean) {
		persist(regBean);
	}

	public String CenName(String Cencd) {	
		Criteria crit = createEntityCriteria();
		
		crit.add(Restrictions.eq("hbsr_cencode", Cencd)).setProjection(Projections.property("hbsr_cen_name"));	
		crit.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
					
		
		String users =  (String) crit.list().get(0);

		return users.toString();
	}

}
