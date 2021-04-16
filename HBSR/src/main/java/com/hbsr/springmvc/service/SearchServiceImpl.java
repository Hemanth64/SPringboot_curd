package com.hbsr.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hbsr.springmvc.dao.SearchDao;
import com.hbsr.springmvc.model.Icd10Disc;


@Service("SearchService")
@Transactional
public class SearchServiceImpl implements SearchService {

	
	@Autowired
	private SearchDao dao;
	
	public List<Icd10Disc> searchIcd10Disc(String desc) {
		List<Icd10Disc> Src_Icd = dao.searchIcd10Disc(desc);
		return Src_Icd;		
	}

}
