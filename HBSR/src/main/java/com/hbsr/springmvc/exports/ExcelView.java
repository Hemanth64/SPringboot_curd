package com.hbsr.springmvc.exports;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import com.hbsr.springmvc.model.RegBean;



public class ExcelView extends AbstractXlsView{

	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setHeader("Content-disposition", "attachment; filename=\"HBSR.xls\"");
		  
		  @SuppressWarnings("unchecked")
		 // List<Employee> employeeList = employeeService.getAllEmployees();
		 // List<User> list = (List<User>) model.get("userList");
		  List<RegBean> list = (List<RegBean>) model.get("userList");
		  
		  Sheet sheet = workbook.createSheet("UserList");
		  
		  Row header = sheet.createRow(0);
		  header.createCell(0).setCellValue("ID");
		  header.createCell(1).setCellValue("InstName");
		  header.createCell(2).setCellValue("Postal Address");
		  header.createCell(3).setCellValue("Pincode");
		  header.createCell(4).setCellValue("Telephone,Fax,E-mail");
		  header.createCell(5).setCellValue("Is your institution willing to participate in HBSR?");
		  
		  header.createCell(6).setCellValue("Name of Head of the Institution");
		  header.createCell(7).setCellValue("Mobile1");
		  header.createCell(8).setCellValue("Email-ID1");
		  
		  header.createCell(9).setCellValue("Name1");
		  header.createCell(10).setCellValue("Designation1");
		  header.createCell(11).setCellValue("Mobile2");
		  header.createCell(12).setCellValue("Email-ID2");
		  
		  header.createCell(13).setCellValue("Name2");
		  header.createCell(14).setCellValue("Designation2");
		  header.createCell(15).setCellValue("Mobile3");
		  header.createCell(16).setCellValue("Email-ID3");
		  
		  header.createCell(17).setCellValue("Name3");
		  header.createCell(18).setCellValue("Designation3");
		  header.createCell(19).setCellValue("Mobile4");
		  header.createCell(20).setCellValue("Email-ID4");
		  
		  header.createCell(21).setCellValue("Name4");
		  header.createCell(22).setCellValue("Designation4");
		  header.createCell(23).setCellValue("Mobile5");
		  header.createCell(24).setCellValue("Email-ID5");
		  
		  header.createCell(25).setCellValue(" Number of In-patient Beds 2016");
		  header.createCell(26).setCellValue(" Number of In-patient Beds 2017");
		  header.createCell(27).setCellValue(" Number of In-patient Beds 2018");
		  header.createCell(28).setCellValue("Total Out-patient Attendance 2016");
		  header.createCell(29).setCellValue("Total Out-patient Attendance 2017");
		  header.createCell(30).setCellValue("Total Out-patient Attendance 2018");
		  header.createCell(31).setCellValue("Total In-patient registrations 2016");
		  header.createCell(32).setCellValue("Total In-patient registrations 2017");
		  header.createCell(33).setCellValue("Total In-patient registrations 2018");
		  header.createCell(34).setCellValue("Total In-patient registrations 2016");
		  header.createCell(35).setCellValue("Total In-patient registrations 2017");
		  header.createCell(36).setCellValue("Total In-patient registrations 2018");
		  
		  header.createCell(37).setCellValue("Is there in-house Department of Radiology / Imaging?");
		  header.createCell(38).setCellValue("If no,is imaging available outside for your patients");
		  
		  header.createCell(39).setCellValue("CT-Head Total");
		  header.createCell(40).setCellValue("CT-Head Stroke");
		  header.createCell(41).setCellValue("MRI-Brain-Head Total");
		  header.createCell(42).setCellValue("MRI-Brain-Head Stroke");
		  header.createCell(43).setCellValue("Total Total");
		  header.createCell(44).setCellValue("Total Stroke");
		  header.createCell(45).setCellValue("Neurology");
		  header.createCell(46).setCellValue("Neurosurgery(SAH,ICH)");
		  header.createCell(47).setCellValue("Medicine");
		  
		  header.createCell(48).setCellValue(" Others");
		  header.createCell(49).setCellValue("Is there a dedicated stroke unit in the institution?");
		  header.createCell(50).setCellValue("a) If yes, briefly describe the facilities available");
		  header.createCell(51).setCellValue("Neurology ward/Medicine ward/Stroke ward?");
		  header.createCell(52).setCellValue("If yes, mention the number of beds");
		  header.createCell(53).setCellValue("One critical and important item of patient information for patients diagnosed with stroke is the correct, complete and detailed       permanent residential address with duration of stay (Or living) in that address. Patient status after discharge at day 28, 3            months need to be completed. This needs to be gathered directly from the patient or patient's representative. When can you       obtain this information? (Multiple responses possible).");
		  header.createCell(54).setCellValue("Maintenance of Medical Records");
		  header.createCell(55).setCellValue("If you keep records for all visits,specify wheather each visit has a different number or the same number");
		  header.createCell(56).setCellValue("Are medical records in the form of");
		  
		  header.createCell(57).setCellValue("   Servers, desktops, laptops");
		  header.createCell(58).setCellValue(" Internet connectivity");
		  header.createCell(59).setCellValue("Personal Computer");
		  header.createCell(60).setCellValue("Independent Telephone Connection");
		 
		  header.createCell(61).setCellValue(" Internet / e-mails Connection");
		  header.createCell(62).setCellValue("Contigency / maintenance");
		  header.createCell(63).setCellValue("Data Collection / Entry etc");
		  header.createCell(64).setCellValue("Would your Institution be able to collect data and start transmission to NCDIR for all cases of  stroke registered / diagnosed       / treated from 1 january 2019?");
		  
		  header.createCell(65).setCellValue(" Any other Relevant information:");
		 
		  
		  int rowNum = 1;
		  
		  for(RegBean user : list){
		   Row row = sheet.createRow(rowNum++);
		   row.createCell(0).setCellValue(user.getReg_Id());
		   row.createCell(1).setCellValue(user.getInstName());
		   row.createCell(2).setCellValue(user.getPostala());
		   row.createCell(3).setCellValue(user.getPincode());
		   row.createCell(4).setCellValue(user.getTel_emai_fax());
		   row.createCell(5).setCellValue(user.getParticipate());
		   row.createCell(6).setCellValue(user.getHeadofinst());
		   row.createCell(7).setCellValue(user.getMobile1());
		   row.createCell(8).setCellValue(user.getEmailid1());
		   row.createCell(9).setCellValue(user.getName1());
		   row.createCell(10).setCellValue(user.getDesi1());
		   row.createCell(11).setCellValue(user.getMobile2());
		   row.createCell(12).setCellValue(user.getEmailid2());
		   row.createCell(13).setCellValue(user.getName2());
		   row.createCell(14).setCellValue(user.getDesi2());
		   row.createCell(15).setCellValue(user.getMobile3());
		   row.createCell(16).setCellValue(user.getEmailid3());
		   row.createCell(17).setCellValue(user.getName3());
		   row.createCell(18).setCellValue(user.getDesi3());
		   row.createCell(19).setCellValue(user.getMobile4());
		   row.createCell(20).setCellValue(user.getEmailid4());
		   row.createCell(21).setCellValue(user.getName4());
		   row.createCell(22).setCellValue(user.getDesi4());
		   row.createCell(23).setCellValue(user.getMobile5());
		   row.createCell(24).setCellValue(user.getEmailid5());
		   row.createCell(53).setCellValue(user.getObtainInfo());
		   row.createCell(54).setCellValue(user.getMainOfMedRec());
		   row.createCell(55).setCellValue(user.getIfuKeepRec());
		   row.createCell(56).setCellValue(user.getMedRecInFor());
		   row.createCell(57).setCellValue(user.getServer_desk_lap());
		   row.createCell(58).setCellValue(user.getInternetconn());
		   row.createCell(59).setCellValue(user.getPersComp());
		   row.createCell(60).setCellValue(user.getIndTelConn());
		   row.createCell(61).setCellValue(user.getInternet_email());
		   row.createCell(62).setCellValue(user.getContMain());
		   row.createCell(63).setCellValue(user.getDataColl());
		   row.createCell(64).setCellValue(user.getNcdirCollData());
		   row.createCell(65).setCellValue(user.getAnyOtherRel());
		   
		  
		   
		   
		  
		   
		   
		   
		   
		   row.createCell(37).setCellValue(user.getRadiologyIma());
		   row.createCell(38).setCellValue(user.getImagAvOuP());
		   
		   row.createCell(45).setCellValue(user.getNeurology());
		   row.createCell(46).setCellValue(user.getNeurologySAH());
		   row.createCell(47).setCellValue(user.getMedicine());
		   row.createCell(48).setCellValue(user.getOthers());
		   
		   row.createCell(49).setCellValue(user.getDedicatestroke());
		   row.createCell(50).setCellValue(user.getBrefily());
		   row.createCell(51).setCellValue(user.getNeurology_medicine());
		 
		 
	
		
		  
		 
		   
		  row.createCell(25).setCellValue(user.getInpa16());
		 row.createCell(26).setCellValue(user.getInpa17());
		  row.createCell(27).setCellValue(user.getInpa18());
		   
		    row.createCell(28).setCellValue(user.getToutP16());
		   row.createCell(29).setCellValue(user.getToutP17());
		   row.createCell(30).setCellValue(user.getToutP18());
		   
		    row.createCell(31).setCellValue(user.getTotalReg16());
		   row.createCell(32).setCellValue(user.getTotalReg17());  
		   row.createCell(33).setCellValue(user.getTotalReg18());
		   
		   row.createCell(34).setCellValue(user.getTotalPr16());
		   row.createCell(35).setCellValue(user.getTotalPr17());
		   row.createCell(36).setCellValue(user.getTotalPr18());
		   
		  
		   
	
			   
			   
			    row.createCell(39).setCellValue(user.getCt_HeadTotal());
			   row.createCell(39).setCellValue(user.getCt_HeadTotal());
			   row.createCell(40).setCellValue(user.getCt_HeadStr());
			   row.createCell(41).setCellValue(user.getMri_BrhTo());
			   row.createCell(42).setCellValue(user.getMri_BrhStr());
			   row.createCell(43).setCellValue(user.getTt());
			   row.createCell(44).setCellValue(user.getTotStr());
			   
			   
			   row.createCell(52).setCellValue(user.getMention());
		   
		   
		  }
		  
		 }

	
		
	

}
