package com.hbsr.springmvc.service;

import java.util.List;

import com.hbsr.springmvc.model.Icd10Disc;

public interface SearchService {
	
	List<Icd10Disc> searchIcd10Disc(String desc);

}
