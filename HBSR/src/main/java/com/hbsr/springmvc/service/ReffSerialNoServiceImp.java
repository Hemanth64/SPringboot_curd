package com.hbsr.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hbsr.springmvc.dao.ReffDao;
import com.hbsr.springmvc.model.ReffSerialNo;



@Service("ReffSerialNoService")
@Transactional
public class ReffSerialNoServiceImp implements ReffSerialNoService {

	@Autowired
	private ReffDao dao;

	
	public ReffSerialNo setReffNo(String CenCd) {
		return dao.setReffNo(CenCd);
	}

	public ReffSerialNo refftableUpdate(String CenCd) {
		return dao.refftableUpdate(CenCd);
	}

	public void refftabupdate(ReffSerialNo reffSerialNo) {
		System.out.println("upate is working"+reffSerialNo.getCenCd());		
		ReffSerialNo rr = new ReffSerialNo();
		System.out.println("rr data is : "+rr.getSerial_No());		
		ReffSerialNo entity = dao.setReffNo(reffSerialNo.getCenCd());		
		
		int Serial_Id = Integer.parseInt(reffSerialNo.getSerial_No());
		Serial_Id = Serial_Id +1;
		int Serial_No_Reff = Integer.parseInt(reffSerialNo.getSerial_No_Reff());
		Serial_No_Reff = Serial_No_Reff +1 ;
		int FullReffnum = Integer.parseInt(reffSerialNo.getSerial_No_Reff());
		FullReffnum = FullReffnum +1;
		
		if(entity!=null){			
			entity.setSerial_No(Integer.toString(Serial_Id));
			entity.setSerial_No_Reff(Integer.toString(Serial_No_Reff));
			entity.setFullReffnum(Integer.toString(FullReffnum));			
		}		
		
	}
	
	

}
