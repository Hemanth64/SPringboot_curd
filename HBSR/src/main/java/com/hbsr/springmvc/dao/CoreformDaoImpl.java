package com.hbsr.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hbsr.springmvc.model.Coreform;
import com.hbsr.springmvc.model.ReffSerialNo;

@Repository("coreformDao")
public class CoreformDaoImpl extends AbstractDao<Integer, Coreform> implements CoreformDao {

	static final Logger logger = LoggerFactory.getLogger(CoreformDaoImpl.class);

	@Autowired
	private SessionFactory sessionFactory;

	public void saveCoreForm(Coreform coreform) {
		save(coreform);
	}

	public Coreform editById(int id) {
		Criteria crit = createEntityCriteria();
		System.out.println("testing1");
		crit.add(Restrictions.eq("core_id", id));
		System.out.println("testing");
		Coreform core = (Coreform) crit.uniqueResult();
		if (core != null) {
			Hibernate.initialize(core);
		}
		return core;

	}

	public List<Coreform> findAllRecords() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("core_id"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
		@SuppressWarnings("unchecked")
		List<Coreform> users = (List<Coreform>) criteria.list();

		return users;
	}

	public Coreform update(Coreform coreform) {
		sessionFactory.getCurrentSession().update(coreform);
		return coreform;
	}

	public String ReIDf() {

		Criteria criteria = createEntityCriteria().setProjection(Projections.max("refeNum"));

		Integer maxref = 0;

		maxref = (Integer) criteria.uniqueResult();

		System.out.println("maxref is1 :" + maxref);

		if (maxref == null)
			maxref = 1;
		else
			maxref = maxref + 1;
		;

		return maxref.toString();
	}

	@SuppressWarnings("unchecked")
	public List<Coreform> CoreSearch(String typ, String typ2, String srhVal, String srhVal2, String srhVal3,
			String srhVal4, String srhVal5, String srhVal6) {

		Criteria crit = createEntityCriteria();
		System.out.println("testing1");

		List<Coreform> core = null;
		if (typ.equals("1")) {
			crit.add(Restrictions.eq("refeNum", Integer.parseInt(srhVal)));
			core = (List<Coreform>) crit.list();
		} else if (typ.equals("2")) {
			Criterion r1 = (Restrictions.eq("hospRegNum", srhVal2));
			Criterion r2 = (Restrictions.eq("regNum", srhVal2));
			LogicalExpression orExp = Restrictions.or(r1, r2);
			crit.add(orExp);
			System.out.println("testing");
			core = (List<Coreform>) crit.list();
		} else if (typ.equals("3")) {
			Criterion r1 = (Restrictions.eq("patFirstN", srhVal3));
			Criterion r2 = (Restrictions.eq("patMidN", srhVal3));
			Criterion r3 = (Restrictions.eq("patLastN", srhVal3));
			Disjunction orExp = Restrictions.or(r1, r2, r3);
			crit.add(orExp);
			System.out.println("testing");
			core = (List<Coreform>) crit.list();
		} else if (typ.equals("4")) {
			crit.add(Restrictions.eq("icdCode", srhVal4));
			core = (List<Coreform>) crit.list();
		} else if (typ.equals("5")) {
			crit = createEntityCriteria()
					.add(Restrictions.sqlRestriction("STR_TO_DATE(hbsr_EntryDate,'%d-%m-%Y') BETWEEN STR_TO_DATE('"
							+ srhVal5 + "','%d-%m-%Y') AND STR_TO_DATE('" + srhVal6 + "','%d-%m-%Y')"))
					.addOrder(Order.desc("refeNum"));
			crit.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
			core = (List<Coreform>) crit.list();
		}

		if (core != null) {
			Hibernate.initialize(core);
		}

		return core;
	}

	public List<Coreform> follow_up(String srchFollw, String id7, String id8) {
		List<Coreform> core = null;
		Criteria crit = createEntityCriteria();
		if (srchFollw.equals("1")) {
			crit.add(Restrictions.disjunction().add(Restrictions.between("dueDateOfFollDate1", id7, id8))
					.add(Restrictions.eq("discharge", "3")).add(Restrictions.eq("discharge", "1")));

		} else if (srchFollw.equals("2")) {
			crit.add(Restrictions.disjunction().add(Restrictions.between("dueDateOfFollDate2", id7, id8))
					.add(Restrictions.eq("discharge", "3")).add(Restrictions.eq("discharge", "1")));

		}
		core = (List<Coreform>) crit.list();

		return core;
	}

	public List<Coreform> ExcelExport(String exportfrm, String id9, String id10, String id11, String id12,
			String id13) {
		List<Coreform> core = null;
		Criteria crit = createEntityCriteria();

		if (exportfrm.equals("1")) {
			crit.add(Restrictions.eq("cenCode", id9));

		} else if (exportfrm.equals("P")) {
			System.out.println(id10);
			crit.add(Restrictions.eq("status", id10));

		} else if (exportfrm.equals("F")) {
			System.out.println(id11);
			crit.add(Restrictions.eq("status", id11));

		} else if (exportfrm.equals("2")) {
			System.out.println(exportfrm);
			System.out.println(id12+""+id13);
			crit.add(Restrictions.disjunction().add(Restrictions.between("EntryDate", id12, id13)));
			

		}
		core = (List<Coreform>) crit.list();
		return core;

	}
}
