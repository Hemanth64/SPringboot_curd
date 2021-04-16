package com.hbsr.springmvc.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "hbsr_registration")
public class RegBean {

	@Column(name = "Reg_InstName")
	private String instName;

	@Column(name = "Reg_Posta")
	private String postala;

	@Column(name = "Reg_pin")
	private String pincode;

	@Column(name = "Reg_Tel_ema_fax")
	private String tel_emai_fax;

	@Column(name = "Reg_Participation")
	private String participate;

	@Column(name = "Reg_headofinst")
	private String headofinst;

	@Column(name = "Reg_mobile1")
	private String mobile1;

	@Column(name = "Reg_emailid1")
	private String emailid1;

	@Column(name = "Reg_name1")
	private String name1;

	@Column(name = "Reg_Desig1")
	private String desi1;

	@Column(name = "Reg_mobile2")
	private String mobile2;

	@Column(name = "Reg_emailid2")
	private String emailid2;

	@Column(name = "Reg_name2")
	private String name2;

	@Column(name = "Reg_Desig2")
	private String desi2;

	@Column(name = "Reg_mobile3")
	private String mobile3;

	@Column(name = "Reg_emailid3")
	private String emailid3;

	@Column(name = "Reg_name3")
	private String name3;

	@Column(name = "Reg_Desig3")
	private String desi3;

	@Column(name = "Reg_mobile4")
	private String mobile4;

	@Column(name = "Reg_emailid4")
	private String emailid4;

	@Column(name = "Reg_intial	")
	private String intial;

	@Column(name = "Reg_ct_mri")
	private String ct_mri;

	@Column(name = "Reg_records")
	private String records;

	@Column(name = "Reg_department")
	private String department;

	@Column(name = "Reg_other_dep")
	private String other_dep;

	@Column(name = "Reg_other_depSpecify")
	private String other_depSpecify;

	@Column(name = "Reg_concerned")
	private String concerned;

	@Column(name = "Reg_other_means")
	private String other_means;

	@Column(name = "Reg_other_meansSpecify")
	private String other_meansSpecify;

	@Column(name = "Reg_in_patient")
	private String in_patient;

	@Column(name = "Reg_bothRecords")
	private String bothRecords;

	public String getIntial() {
		return intial;
	}

	public void setIntial(String intial) {
		this.intial = intial;
	}

	public String getCt_mri() {
		return ct_mri;
	}

	public void setCt_mri(String ct_mri) {
		this.ct_mri = ct_mri;
	}

	public String getRecords() {
		return records;
	}

	public void setRecords(String records) {
		this.records = records;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getOther_dep() {
		return other_dep;
	}

	public void setOther_dep(String other_dep) {
		this.other_dep = other_dep;
	}

	public String getOther_depSpecify() {
		return other_depSpecify;
	}

	public void setOther_depSpecify(String other_depSpecify) {
		this.other_depSpecify = other_depSpecify;
	}

	public String getConcerned() {
		return concerned;
	}

	public void setConcerned(String concerned) {
		this.concerned = concerned;
	}

	public String getOther_means() {
		return other_means;
	}

	public void setOther_means(String other_means) {
		this.other_means = other_means;
	}

	public String getOther_meansSpecify() {
		return other_meansSpecify;
	}

	public void setOther_meansSpecify(String other_meansSpecify) {
		this.other_meansSpecify = other_meansSpecify;
	}

	public String getIn_patient() {
		return in_patient;
	}

	public void setIn_patient(String in_patient) {
		this.in_patient = in_patient;
	}

	public String getBothRecords() {
		return bothRecords;
	}

	public void setBothRecords(String bothRecords) {
		this.bothRecords = bothRecords;
	}

	public String getNoMedical() {
		return noMedical;
	}

	public void setNoMedical(String noMedical) {
		this.noMedical = noMedical;
	}

	public String getOverall() {
		return overall;
	}

	public void setOverall(String overall) {
		this.overall = overall;
	}

	public String getEachDep() {
		return eachDep;
	}

	public void setEachDep(String eachDep) {
		this.eachDep = eachDep;
	}

	public String getInter_others() {
		return inter_others;
	}

	public void setInter_others(String inter_others) {
		this.inter_others = inter_others;
	}

	public String getInter_OthersSpecify() {
		return inter_OthersSpecify;
	}

	public void setInter_OthersSpecify(String inter_OthersSpecify) {
		this.inter_OthersSpecify = inter_OthersSpecify;
	}

	@Column(name = "Reg_noMedical")
	private String noMedical;

	@Column(name = "Reg_overall")
	private String overall;

	@Column(name = "Reg_eachDep")
	private String eachDep;

	@Column(name = "Reg_Inter_others")
	private String inter_others;

	@Column(name = "Reg_Inter_othersSpecify")
	private String inter_OthersSpecify;

	public String getName3() {
		return name3;
	}

	public void setName3(String name3) {
		this.name3 = name3;
	}

	public String getDesi3() {
		return desi3;
	}

	public void setDesi3(String desi3) {
		this.desi3 = desi3;
	}

	public String getMobile4() {
		return mobile4;
	}

	public void setMobile4(String mobile4) {
		this.mobile4 = mobile4;
	}

	public String getEmailid4() {
		return emailid4;
	}

	public void setEmailid4(String emailid4) {
		this.emailid4 = emailid4;
	}

	public String getName4() {
		return name4;
	}

	public void setName4(String name4) {
		this.name4 = name4;
	}

	public String getDesi4() {
		return desi4;
	}

	public void setDesi4(String desi4) {
		this.desi4 = desi4;
	}

	public String getMobile5() {
		return mobile5;
	}

	public void setMobile5(String mobile5) {
		this.mobile5 = mobile5;
	}

	public String getEmailid5() {
		return emailid5;
	}

	public void setEmailid5(String emailid5) {
		this.emailid5 = emailid5;
	}

	@Column(name = "Reg_name4")
	private String name4;

	@Column(name = "Reg_Desig4")
	private String desi4;

	@Column(name = "Reg_mobile5")
	private String mobile5;

	@Column(name = "Reg_emailid5")
	private String emailid5;

	@Column(name = "Reg_NoOfInPatBed2016")
	private String Inpa16;

	@Column(name = "Reg_NoOfInPatBed2017")
	private String Inpa17;

	@Column(name = "Reg_NoOfInPatBed2018")
	private String Inpa18;

	@Column(name = "Reg_ToOutPatAtten2016")
	private String ToutP16;

	@Column(name = "Reg_ToOutPatAtten2017")
	private String ToutP17;

	@Column(name = "Reg_ToOutPatAtten2018")
	private String ToutP18;

	@Column(name = "Reg_TotalProvCasofStroke2016")
	private String TotalPr16;

	@Column(name = "Reg_TotalProvCasofStroke2017")
	private String TotalPr17;

	@Column(name = "Reg_TotalProvCasofStroke2018")
	private String TotalPr18;

	@Column(name = "Reg_TotalRegistrations2016")
	private String TotalReg16;

	@Column(name = "Reg_TotalRegistrations2017")
	private String TotalReg17;

	@Column(name = "Reg_TotalRegistrations2018")
	private String TotalReg18;

	@Column(name = "Reg_HouseDepofRadiology_imaging")
	private String radiologyIma;

	@Column(name = "Reg_ImagAvOutofPatient")
	private String imagAvOuP;

	@Column(name = "Reg_CT_HeadTotal")
	private String Ct_HeadTotal;

	@Column(name = "Reg_CT_Head_Stroke")
	private String Ct_HeadStr;

	@Column(name = "Reg_MRI_Brain_HeadTotal")
	private String Mri_BrhTo;

	@Column(name = "Reg_MRI_Brain_Head_Stroke")
	private String Mri_BrhStr;

	@Column(name = "Reg_Total")
	private String Tt;

	@Column(name = "Reg_Total_Stroke")
	private String TotStr;

	@Column(name = "Reg_Neurology")
	private String neurology;

	@Column(name = "Reg_Medicine")
	private String medicine;

	@Column(name = "Reg_Neurology_SAH")
	private String neurologySAH;

	@Column(name = "Reg_OneCriticalandImport")
	private String obtainInfo;

	@Column(name = "Reg_Others")
	private String others;

	@Column(name = "Reg_dedicate")
	private String dedicatestroke;

	@Column(name = "Reg_brifely")
	private String brefily;

	@Column(name = "Reg_neurology_medicine")
	private String neurology_medicine;

	@Column(name = "Reg_mention")
	private String mention;

	@Column(name = "Reg_MaintanceOfMedicalRec")
	private String mainOfMedRec;

	@Column(name = "Reg_KeepRec")
	private String ifuKeepRec;

	@Column(name = "Reg_server_desk_lap")
	private String server_desk_lap;

	@Column(name = "Reg_MedicalRecForm")
	private String medRecInFor;

	@Column(name = "Reg_InternetConn")
	private String internetconn;

	public String getInstName() {
		return instName;
	}

	public void setInstName(String instName) {
		this.instName = instName;
	}

	public String getPostala() {
		return postala;
	}

	public void setPostala(String postala) {
		this.postala = postala;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getTel_emai_fax() {
		return tel_emai_fax;
	}

	public void setTel_emai_fax(String tel_emai_fax) {
		this.tel_emai_fax = tel_emai_fax;
	}

	public String getParticipate() {
		return participate;
	}

	public void setParticipate(String participate) {
		this.participate = participate;
	}

	public String getHeadofinst() {
		return headofinst;
	}

	public void setHeadofinst(String headofinst) {
		this.headofinst = headofinst;
	}

	public String getMobile1() {
		return mobile1;
	}

	public void setMobile1(String mobile1) {
		this.mobile1 = mobile1;
	}

	public String getEmailid1() {
		return emailid1;
	}

	public void setEmailid1(String emailid1) {
		this.emailid1 = emailid1;
	}

	public String getName1() {
		return name1;
	}

	public void setName1(String name1) {
		this.name1 = name1;
	}

	public String getDesi1() {
		return desi1;
	}

	public void setDesi1(String desi1) {
		this.desi1 = desi1;
	}

	public String getMobile2() {
		return mobile2;
	}

	public void setMobile2(String mobile2) {
		this.mobile2 = mobile2;
	}

	public String getEmailid2() {
		return emailid2;
	}

	public void setEmailid2(String emailid2) {
		this.emailid2 = emailid2;
	}

	public String getName2() {
		return name2;
	}

	public void setName2(String name2) {
		this.name2 = name2;
	}

	public String getDesi2() {
		return desi2;
	}

	public void setDesi2(String desi2) {
		this.desi2 = desi2;
	}

	public String getMobile3() {
		return mobile3;
	}

	public void setMobile3(String mobile3) {
		this.mobile3 = mobile3;
	}

	public String getEmailid3() {
		return emailid3;
	}

	public void setEmailid3(String emailid3) {
		this.emailid3 = emailid3;
	}

	public String getInpa16() {
		return Inpa16;
	}

	public void setInpa16(String inpa16) {
		Inpa16 = inpa16;
	}

	public String getInpa17() {
		return Inpa17;
	}

	public void setInpa17(String inpa17) {
		Inpa17 = inpa17;
	}

	public String getInpa18() {
		return Inpa18;
	}

	public void setInpa18(String inpa18) {
		Inpa18 = inpa18;
	}

	public String getToutP16() {
		return ToutP16;
	}

	public void setToutP16(String toutP16) {
		ToutP16 = toutP16;
	}

	public String getToutP17() {
		return ToutP17;
	}

	public void setToutP17(String toutP17) {
		ToutP17 = toutP17;
	}

	public String getToutP18() {
		return ToutP18;
	}

	public void setToutP18(String toutP18) {
		ToutP18 = toutP18;
	}

	public String getTotalPr16() {
		return TotalPr16;
	}

	public void setTotalPr16(String totalPr16) {
		TotalPr16 = totalPr16;
	}

	public String getTotalPr17() {
		return TotalPr17;
	}

	public void setTotalPr17(String totalPr17) {
		TotalPr17 = totalPr17;
	}

	public String getTotalPr18() {
		return TotalPr18;
	}

	public void setTotalPr18(String totalPr18) {
		TotalPr18 = totalPr18;
	}

	public String getTotalReg16() {
		return TotalReg16;
	}

	public void setTotalReg16(String totalReg16) {
		TotalReg16 = totalReg16;
	}

	public String getTotalReg17() {
		return TotalReg17;
	}

	public void setTotalReg17(String totalReg17) {
		TotalReg17 = totalReg17;
	}

	public String getTotalReg18() {
		return TotalReg18;
	}

	public void setTotalReg18(String totalReg18) {
		TotalReg18 = totalReg18;
	}

	public String getRadiologyIma() {
		return radiologyIma;
	}

	public void setRadiologyIma(String radiologyIma) {
		this.radiologyIma = radiologyIma;
	}

	public String getImagAvOuP() {
		return imagAvOuP;
	}

	public void setImagAvOuP(String imagAvOuP) {
		this.imagAvOuP = imagAvOuP;
	}

	public String getCt_HeadTotal() {
		return Ct_HeadTotal;
	}

	public void setCt_HeadTotal(String ct_HeadTotal) {
		Ct_HeadTotal = ct_HeadTotal;
	}

	public String getCt_HeadStr() {
		return Ct_HeadStr;
	}

	public void setCt_HeadStr(String ct_HeadStr) {
		Ct_HeadStr = ct_HeadStr;
	}

	public String getMri_BrhTo() {
		return Mri_BrhTo;
	}

	public void setMri_BrhTo(String mri_BrhTo) {
		Mri_BrhTo = mri_BrhTo;
	}

	public String getMri_BrhStr() {
		return Mri_BrhStr;
	}

	public void setMri_BrhStr(String mri_BrhStr) {
		Mri_BrhStr = mri_BrhStr;
	}

	public String getTt() {
		return Tt;
	}

	public void setTt(String tt) {
		Tt = tt;
	}

	public String getTotStr() {
		return TotStr;
	}

	public void setTotStr(String totStr) {
		TotStr = totStr;
	}

	public String getNeurology() {
		return neurology;
	}

	public void setNeurology(String neurology) {
		this.neurology = neurology;
	}

	public String getMedicine() {
		return medicine;
	}

	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}

	public String getNeurologySAH() {
		return neurologySAH;
	}

	public void setNeurologySAH(String neurologySAH) {
		this.neurologySAH = neurologySAH;
	}

	public String getObtainInfo() {
		return obtainInfo;
	}

	public void setObtainInfo(String obtainInfo) {
		this.obtainInfo = obtainInfo;
	}

	public String getOthers() {
		return others;
	}

	public void setOthers(String others) {
		this.others = others;
	}

	public String getDedicatestroke() {
		return dedicatestroke;
	}

	public void setDedicatestroke(String dedicatestroke) {
		this.dedicatestroke = dedicatestroke;
	}

	public String getBrefily() {
		return brefily;
	}

	public void setBrefily(String brefily) {
		this.brefily = brefily;
	}

	public String getNeurology_medicine() {
		return neurology_medicine;
	}

	public void setNeurology_medicine(String neurology_medicine) {
		this.neurology_medicine = neurology_medicine;
	}

	public String getMention() {
		return mention;
	}

	public void setMention(String mention) {
		this.mention = mention;
	}

	public String getMainOfMedRec() {
		return mainOfMedRec;
	}

	public void setMainOfMedRec(String mainOfMedRec) {
		this.mainOfMedRec = mainOfMedRec;
	}

	public String getIfuKeepRec() {
		return ifuKeepRec;
	}

	public void setIfuKeepRec(String ifuKeepRec) {
		this.ifuKeepRec = ifuKeepRec;
	}

	public String getServer_desk_lap() {
		return server_desk_lap;
	}

	public void setServer_desk_lap(String server_desk_lap) {
		this.server_desk_lap = server_desk_lap;
	}

	public String getMedRecInFor() {
		return medRecInFor;
	}

	public void setMedRecInFor(String medRecInFor) {
		this.medRecInFor = medRecInFor;
	}

	public String getInternetconn() {
		return internetconn;
	}

	public void setInternetconn(String internetconn) {
		this.internetconn = internetconn;
	}

	public String getInternet_email() {
		return internet_email;
	}

	public void setInternet_email(String internet_email) {
		this.internet_email = internet_email;
	}

	public String getPersComp() {
		return persComp;
	}

	public void setPersComp(String persComp) {
		this.persComp = persComp;
	}

	public String getIndTelConn() {
		return indTelConn;
	}

	public void setIndTelConn(String indTelConn) {
		this.indTelConn = indTelConn;
	}

	public String getContMain() {
		return contMain;
	}

	public void setContMain(String contMain) {
		this.contMain = contMain;
	}

	public String getDataColl() {
		return dataColl;
	}

	public void setDataColl(String dataColl) {
		this.dataColl = dataColl;
	}

	public String getNcdirCollData() {
		return ncdirCollData;
	}

	public void setNcdirCollData(String ncdirCollData) {
		this.ncdirCollData = ncdirCollData;
	}

	public String getAnyOtherRel() {
		return anyOtherRel;
	}

	public void setAnyOtherRel(String anyOtherRel) {
		this.anyOtherRel = anyOtherRel;
	}

	public LocalDateTime getDate() {
		return date;
	}

	public void setDate(LocalDateTime date) {
		this.date = date;
	}

	public Integer getReg_Id() {
		return Reg_Id;
	}

	public void setReg_Id(Integer reg_Id) {
		Reg_Id = reg_Id;
	}

	@Column(name = "Reg_Internet")
	private String internet_email;

	@Column(name = "Reg_PersonalComp")
	private String persComp;

	@Column(name = "Reg_TelConn")
	private String indTelConn;

	@Column(name = "Reg_ContigencyMaintence")
	private String contMain;

	@Column(name = "Reg_DataCollEntry")
	private String dataColl;

	@Column(name = "Reg_DataCollectionforAllCasesNCDIR2019")
	private String ncdirCollData;

	@Column(name = "Reg_AnyOtherInfo")
	private String anyOtherRel;

	private LocalDateTime date;

	@Id
	@Column(name = "Reg_Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer Reg_Id;

}
