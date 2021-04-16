package com.hbsr.springmvc.dao;

import java.util.List;

import com.hbsr.springmvc.model.Coreform;
import com.hbsr.springmvc.model.ReffSerialNo;

public interface CoreformDao {

	void saveCoreForm(Coreform coreform);

	

	Coreform editById(int id);

	List<Coreform> findAllRecords();

	Coreform update(Coreform coreform);

	String ReIDf();

	List<Coreform> CoreSearch(String typ ,String typ2,String srhVal,String srhVal2,String srhVal3,String srhVal4,String srhVal5,String srhVal6) ;
	
	
	List<Coreform> follow_up(String srchFollw,String id7,String id8) ;
	
	List<Coreform> ExcelExport(String exportfrm,String id9,String id10,String id11,String id12,String id13) ;
	
	
	
	
}
