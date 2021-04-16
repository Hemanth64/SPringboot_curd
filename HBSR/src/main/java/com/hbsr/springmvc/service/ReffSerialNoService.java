package com.hbsr.springmvc.service;

import com.hbsr.springmvc.model.ReffSerialNo;

public interface ReffSerialNoService {
	
	
ReffSerialNo setReffNo(String CenCd);
	
	ReffSerialNo refftableUpdate(String CenCd);
	
	void refftabupdate(ReffSerialNo reffSerialNo);

}
