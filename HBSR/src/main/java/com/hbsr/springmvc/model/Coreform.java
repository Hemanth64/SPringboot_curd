package com.hbsr.springmvc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "hbsr_coreform")
public class Coreform implements Serializable {

	
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "core_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int core_id;

	@Column(name = "status")
	private String status;
	
	
	@Column(name = "refeNum")
	private int refeNum;

	// coreform first page

	
	@Column(name = "cenCode")
	private String cenCode;

	@Column(name = "regNum")
	private String regNum;

	@Column(name = "repInst")
	private String repInst;

	@Column(name = "sourceofReg")
	private String sourceofReg;

	@Column(name = "lang_Assam")
	private String lang_Assam;

	@Column(name = "lang_Beng")
	private String lang_Beng;

	@Column(name = "lang_Guja")
	private String lang_Guja;

	@Column(name = "lang_Hind")
	private String lang_Hind;

	@Column(name = "lang_Kann")
	private String lang_Kann;
	
	@Column(name = "lang_Malay")
	private String lang_Malay;

	@Column(name = "lang_Marati")
	private String lang_Marati;

	@Column(name = "lang_Oriya")
	private String lang_Oriya;

	@Column(name = "lang_Punja")
	private String lang_Punja;

	@Column(name = "lang_Sans")
	private String lang_Sans;

	@Column(name = "lang_Sindi")
	private String lang_Sindi;

	@Column(name = "lang_Tam")
	private String lang_Tam;

	@Column(name = "lang_Telu")
	private String lang_Telu;

	@Column(name = "lang_Urdu")
	private String lang_Urdu;

	@Column(name = "lang_Eng")
	private String lang_Eng;

	@Column(name = "lang_Konkan")
	private String lang_Konkan;

	@Column(name = "lang_Bhutia")
	private String lang_Bhutia;

	@Column(name = "lang_Manipuri")
	private String lang_Manipuri;

	@Column(name = "lang_Mizo")
	private String lang_Mizo;

	@Column(name = "lang_Nepalli")
	private String lang_Nepalli;

	@Column(name = "lang_Lepcha")
	private String lang_Lepcha;

	@Column(name = "lang_Rajast")
	private String lang_Rajast;

	@Column(name = "lang_unk")
	private String lang_unk;
	
	@Column(name = "code1")
	private String code1;

	@Column(name = "deptName")
	private String deptName;

	@Column(name = "code2")
	private String code2;

	@Column(name = "hospRegNum")
	private String hospRegNum;

	@Column(name = "patTitle")
	private String patTitle;

	@Column(name = "patFirstN")
	private String patFirstN;

	@Column(name = "patMidN")
	private String patMidN;

	@Column(name = "patLastN")
	private String patLastN;

	@Column(name = "residence")
	private String residence;

	@Column(name = "housNo1")
	private String housNo1;

	@Column(name = "housNo2")
	private String housNo2;

	@Column(name = "road")
	private String road;

	@Column(name = "ward")
	private String ward;

	@Column(name = "area")
	private String area;

	@Column(name = "gramaPanc")
	private String gramaPanc;

	@Column(name = "division")
	private String division;

	@Column(name = "subDist")
	private String subDist;

	@Column(name = "city")
	private String city;

	@Column(name = "subCenter")
	private String subCenter;

	@Column(name = "dist")
	private String dist;

	@Column(name = "postalPin")
	private String postalPin;

	@Column(name = "off_tel")
	private String off_tel;

	@Column(name = "res")
	private String res;

	@Column(name = "mob1")
	private String mob1;

	@Column(name = "email")
	private String email;
	
	@Column(name = "mob2")
	private String mob2;

	@Column(name = "address")
	private String address;

	@Column(name = "district")
	private String district;

	@Column(name = "pin")
	private String pin;

	@Column(name = "tel")
	private String tel;
	
	
	@Column(name = "tel2")
	private String tel2;
	
	@Column(name = "tel3")
	private String tel3;
	

	@Column(name = "durationStay")
	private String durationStay;

	@Column(name = "age")
	private String age;

	@Column(name = "dob")
	private String dob;

	@Column(name = "sex")
	private String sex;

	@Column(name = "others1")
	private String others1;
	
	@Column(name = "cultural")
	private String cultural;

	@Column(name = "culturalOthers")
	private String culturalOthers;

	@Column(name = "patlastseendate")
	private String patlastseendate;

	@Column(name = "patlastseentime")
	private String patlastseentime;

	@Column(name = "onsetstrokedate")
	private String onsetstrokedate;

	@Column(name = "onsetstroketime")
	private String onsetstroketime;

	@Column(name = "wakeupStroke")
	private String wakeupStroke;

	@Column(name = "sympWeek")
	private String sympWeek;

	@Column(name = "sympDysp")
	private String sympDysp;

	@Column(name = "sympAltered")
	private String sympAltered;

	@Column(name = "clinRIUnilateral")
	private String clinRIUnilateral;

	@Column(name = "clinRISensory")
	private String clinRISensory;

	@Column(name = "clinRIAphasia")
	private String clinRIAphasia;

	@Column(name = "clinRIHeminophia")
	private String clinRIHeminophia;

	@Column(name = "clinRIGaze")
	private String clinRIGaze;
	@Column(name = "clinRIApraxia")
	private String clinRIApraxia;

	@Column(name = "clinRIAtaxia")
	private String clinRIAtaxia;

	@Column(name = "clinRINeglect")
	private String clinRINeglect;

	@Column(name = "clinRINone")
	private String clinRINone;

	@Column(name = "sympOnsetOthers")
	private String sympOnsetOthers;

	@Column(name = "firstStrsympdate")
	private String firstStrsympdate;
	
	@Column(name = "firstStrsymptime")
	private String firstStrsymptime;

	@Column(name = "treatmentStroke")
	private String treatmentStroke;

	@Column(name = "treatmentStrokeothers")
	private String treatmentStrokeothers;

	@Column(name = "aarivaldate")
	private String aarivaldate;

	@Column(name = "aarivaltime")
	private String aarivaltime;

	@Column(name = "diagOfStroke")
	private String diagOfStroke;

	@Column(name = "historyTIA")
	private String historyTIA;

	@Column(name = "historyTIAdate")
	private String historyTIAdate;

	@Column(name = "historyTIAtime")
	private String historyTIAtime;
	
	@Column(name = "clinFetDizziness")
	private String clinFetDizziness;

	@Column(name = "clinFetLocalized")
	private String clinFetLocalized;

	@Column(name = "clinFetBlurred")
	private String clinFetBlurred;

	@Column(name = "clinFetDiplopia")
	private String clinFetDiplopia;

	@Column(name = "clinFetDysart")
	private String clinFetDysart;

	@Column(name = "clinFetImpaired")
	private String clinFetImpaired;

	@Column(name = "clinFetImpaConsc")
	private String clinFetImpaConsc;

	@Column(name = "clinFetSeizures")
	private String clinFetSeizures;

	@Column(name = "clinFetDyspagia")
	private String clinFetDyspagia;
	
	@Column(name = "consciousnessLevel")
	private String consciousnessLevel;

	@Column(name = "quesOfLOC")
	private String quesOfLOC;

	@Column(name = "commLOC")
	private String commLOC;

	@Column(name = "bestGaze")
	private String bestGaze;

	@Column(name = "visualFeilds")
	private String visualFeilds;

	@Column(name = "palsy")
	private String palsy;

	@Column(name = "motorArm")
	private String motorArm;

	@Column(name = "motorLeg")
	private String motorLeg;

	@Column(name = "limbAtaxia")
	private String limbAtaxia;

	@Column(name = "sensory")
	private String sensory;

	@Column(name = "bestLang")
	private String bestLang;

	@Column(name = "dysarthria")
	private String dysarthria;

	@Column(name = "inattention")
	private String inattention;

	@Column(name = "scoreOfNIHSS")
	private String scoreOfNIHSS;

	@Column(name = "preMorbidRankin")
	private String preMorbidRankin;

	@Column(name = "firstCTbrain")
	private String firstCTbrain;

	@Column(name = "firstCTbrainDate")
	private String firstCTbrainDate;

	@Column(name = "firstCTbrainTime")
	private String firstCTbrainTime;

	@Column(name = "imagingFind1")
	private String imagingFind1;

	@Column(name = "imagingFind2")
	private String imagingFind2;

	@Column(name = "imagingFind3")
	private String imagingFind3;

	@Column(name = "imagingFind4")
	private String imagingFind4;

	@Column(name = "imagingFind5")
	private String imagingFind5;

	@Column(name = "mriBrain")
	private String mriBrain;

	@Column(name = "mriBrainDate")
	private String mriBrainDate;

	@Column(name = "mriBrainTime")
	private String mriBrainTime;

	@Column(name = "angioCT")
	private String angioCT;

	@Column(name = "angioCTDate")
	private String angioCTDate;

	@Column(name = "angioCTTime")
	private String angioCTTime;

	@Column(name = "perfusion")
	private String perfusion;

	@Column(name = "perfusionDate")
	private String perfusionDate;
	
	@Column(name = "perfusionTime")
	private String perfusionTime;

	@Column(name = "angioMRI")
	private String angioMRI;

	@Column(name = "angioMRIDate")
	private String angioMRIDate;

	@Column(name = "angioMRITime")
	private String angioMRITime;

	@Column(name = "carotid")
	private String carotid;

	@Column(name = "carotidDate")
	private String carotidDate;

	@Column(name = "carotidTime")
	private String carotidTime;

	@Column(name = "ecg")
	private String ecg;

	@Column(name = "ecgDate")
	private String ecgDate;

	@Column(name = "ecgTime")
	private String ecgTime;

	@Column(name = "tte")
	private String tte;

	@Column(name = "tteDate")
	private String tteDate;

	@Column(name = "tteTime")
	private String tteTime;

	@Column(name = "transesopagheal")
	private String transesopagheal;

	@Column(name = "transesopaghealDate")
	private String transesopaghealDate;

	@Column(name = "transesopaghealTime")
	private String transesopaghealTime;

	@Column(name = "othersforDiagnostic")
	private String othersforDiagnostic;

	@Column(name = "reportInstCTandMRI")
	private String reportInstCTandMRI;

	@Column(name = "reportInstDate")
	private String reportInstDate;

	@Column(name = "reportInstTime")
	private String reportInstTime;

	@Column(name = "reportInstImagTime")
	private String reportInstImagTime;
	
	@Column(name = "diagClinical")
	private String diagClinical;

	@Column(name = "diagCT")
	private String diagCT;

	@Column(name = "diagMRI")
	private String diagMRI;

	@Column(name = "basisOfDiagOthers")
	private String basisOfDiagOthers;

	@Column(name = "typeOfStroke")
	private String typeOfStroke;

	@Column(name = "toastCriteria")
	private String toastCriteria;

	@Column(name = "haemorrhagestroke")
	private String haemorrhagestroke;

	@Column(name = "typeOfcircStroke")
	private String typeOfcircStroke;

	@Column(name = "finalDiag")
	private String finalDiag;

	@Column(name = "firstEver")
	private String firstEver;

	@Column(name = "typeOfStroke1")
	private String typeOfStroke1;

	@Column(name = "territoryAffected")
	private String territoryAffected;

	@Column(name = "etiology")
	private String etiology;

	@Column(name = "riskFactorandMorbidities")
	private String riskFactorandMorbidities;

	@Column(name = "icdDesc")
	private String icdDesc;

	@Column(name = "icdCode")
	private String icdCode;

	// coreform fifth page

	@Column(name = "prevStroke")
	private String prevStroke;

	@Column(name = "prevStrokeDura")
	private String prevStrokeDura;

	@Column(name = "prvTransAtt")
	private String prvTransAtt;

	@Column(name = "prvNewly")
	private String prvNewly;

	@Column(name = "prvTrasNewly")
	private String prvTrasNewly;

	@Column(name = "hyperNewly")
	private String hyperNewly;

	@Column(name = "diabNewly")
	private String diabNewly;

	@Column(name = "atrialNewly")
	private String atrialNewly;

	@Column(name = "carotidNewly")
	private String carotidNewly;

	@Column(name = "myocNewly")
	private String myocNewly;

	@Column(name = "ischNewly")
	private String ischNewly;

	@Column(name = "rehuNewly")
	private String rehuNewly;

	@Column(name = "nonRehNewly")
	private String nonRehNewly;

	@Column(name = "valveNewly")
	private String valveNewly;

	@Column(name = "heartNewly")
	private String heartNewly;

	@Column(name = "pripNewly")
	private String pripNewly;

	@Column(name = "chronicNewly")
	private String chronicNewly;

	@Column(name = "anemiaNewly")
	private String anemiaNewly;

	@Column(name = "hypercNewly")
	private String hypercNewly;
	
	@Column(name = "hyperhoNewly")
	private String hyperhoNewly;

	@Column(name = "prvTransAttDur")
	private String prvTransAttDur;

	@Column(name = "hypertension")
	private String hypertension;

	@Column(name = "hypertensionDur")
	private String hypertensionDur;

	@Column(name = "diabetMelli")
	private String diabetMelli;

	@Column(name = "diabetMelliDur")
	private String diabetMelliDur;

	@Column(name = "fibrillation")
	private String fibrillation;

	@Column(name = "fibrillationDur")
	private String fibrillationDur;

	@Column(name = "stenosis")
	private String stenosis;

	@Column(name = "stenosisDur")
	private String stenosisDur;

	@Column(name = "infarction")
	private String infarction;

	@Column(name = "infarctionDur")
	private String infarctionDur;

	@Column(name = "heartDisea")
	private String heartDisea;

	@Column(name = "heartDiseaDur")
	private String heartDiseaDur;

	@Column(name = "rheumaticHearDise")
	private String rheumaticHearDise;

	@Column(name = "rheumaticHearDiseDur")
	private String rheumaticHearDiseDur;

	@Column(name = "nonRheumaHeaDise")
	private String nonRheumaHeaDise;

	@Column(name = "nonRheumaHeaDiseDur")
	private String nonRheumaHeaDiseDur;

	@Column(name = "prosthesis")
	private String prosthesis;

	@Column(name = "prosthesisDur")
	private String prosthesisDur;

	@Column(name = "heartFailure")
	private String heartFailure;

	@Column(name = "heartFailureDur")
	private String heartFailureDur;

	@Column(name = "arterialDisea")
	private String arterialDisea;

	@Column(name = "arterialDiseaDur")
	private String arterialDiseaDur;

	@Column(name = "kidneyDise")
	private String kidneyDise;

	@Column(name = "kidneyDiseDur")
	private String kidneyDiseDur;

	@Column(name = "anemia")
	private String anemia;

	@Column(name = "anemiaDur")
	private String anemiaDur;

	@Column(name = "hypercholesterolemia")
	private String hypercholesterolemia;

	@Column(name = "hypercholesterolemiaDur")
	private String hypercholesterolemiaDur;

	@Column(name = "hyperHomocysteinemia")
	private String hyperHomocysteinemia;

	@Column(name = "hyperHomocysteinemiaDur")
	private String hyperHomocysteinemiaDur;

	@Column(name = "co_morbidOthers1")
	private String co_morbidOthers1;

	@Column(name = "co_morbidOthers2")
	private String co_morbidOthers2;

	@Column(name = "co_morbidOthers3")
	private String co_morbidOthers3;

	@Column(name = "familyHisOfStrok")
	private String familyHisOfStrok;

	@Column(name = "tobaccoSmok")
	private String tobaccoSmok;

	@Column(name = "smkolessTobacco")
	private String smkolessTobacco;

	@Column(name = "alcoholUse")
	private String alcoholUse;

	@Column(name = "drugAbuse")
	private String drugAbuse;

	@Column(name = "deliveryORtermination")
	private String deliveryORtermination;

	@Column(name = "migraine")
	private String migraine;
	
	@Column(name = "therapy")
	private String therapy;
	
	@Column(name = "hiv")
	private String hiv;
	
	@Column(name = "riskCondOthers")
	private String riskCondOthers;

	// Core form 6th page starts

	@Column(name = "anti_Aspirin")
	private String anti_Aspirin;

	@Column(name = "antico_Heprin")
	private String antico_Heprin;

	@Column(name = "throm_IVtPA")
	private String throm_IVtPA;

	@Column(name = "anti_Dipyri")
	private String anti_Dipyri;

	@Column(name = "antico_Full")
	private String antico_Full;

	@Column(name = "throm_IAtPA")
	private String throm_IAtPA;

	@Column(name = "anti_Clopid")
	private String anti_Clopid;

	@Column(name = "antico_Warfarin")
	private String antico_Warfarin;

	@Column(name = "throm_Mechan")
	private String throm_Mechan;
	
	
	@Column(name = "antico_NewOral")
	private String antico_NewOral;

	@Column(name = "antiplateletsDur")
	private String antiplateletsDur;

	@Column(name = "antiplateletsSpe")
	private String antiplateletsSpe;

	@Column(name = "hypertensiveDrugs")
	private String hypertensiveDrugs;

	@Column(name = "hypertensiveDrugsDur")
	private String hypertensiveDrugsDur;

	@Column(name = "loweringDrugs")
	private String loweringDrugs;

	@Column(name = "loweringDrugsDur")
	private String loweringDrugsDur;

	@Column(name = "diabeticAgents")
	private String diabeticAgents;

	@Column(name = "diabeticAgentsDur")
	private String diabeticAgentsDur;

	@Column(name = "treatmentOthers")
	private String treatmentOthers;

	@Column(name = "medicationsTaken")
	private String medicationsTaken;

	@Column(name = "antiplateletOth")
	private String antiplateletOth;

	@Column(name = "anticoagulantOth")
	private String anticoagulantOth;

	@Column(name = "thrombolyticTreatmentOth")
	private String thrombolyticTreatmentOth;

	@Column(name = "antidiabetics")
	private String antidiabetics;

	@Column(name = "antiHypertensive")
	private String antiHypertensive;

	@Column(name = "lipidLowering")
	private String lipidLowering;

	@Column(name = "thromIVtPA")
	private String thromIVtPA;

	@Column(name = "thromIAtPA")
	private String thromIAtPA;

	@Column(name = "thromMechan")
	private String thromMechan;

	@Column(name = "thromUnk")
	private String thromUnk;
	
	
	@Column(name = "mediNotAvai")
	private String mediNotAvai;

	@Column(name = "couldNotAfford")
	private String couldNotAfford;

	// 7th page starts

	@Column(name = "ctDoneAfter24hr")
	private String ctDoneAfter24hr;

	@Column(name = "compThrNone")
	private String compThrNone;

	@Column(name = "compThrAsymp")
	private String compThrAsymp;

	@Column(name = "compThrSymptom")
	private String compThrSymptom;

	@Column(name = "compThrLifeThre")
	private String compThrLifeThre;

	@Column(name = "seriouscompli")
	private String seriouscompli;

	@Column(name = "antiplatelets1")
	private String antiplatelets1;

	@Column(name = "antipW24hr")
	private String antipW24hr;

	@Column(name = "antip24hr")
	private String antip24hr;

	@Column(name = "antipA48hr")
	private String antipA48hr;
	
	@Column(name = "after48hr")
	private String after48hr;

	@Column(name = "antiplatelets1Name")
	private String antiplatelets1Name;

	@Column(name = "anti_coagulants")
	private String anti_coagulants;
	
	@Column(name = "thrombolyticTraetmentGiv")
	private String thrombolyticTraetmentGiv;

	@Column(name = "thrombolyticTraetmentGivOth")
	private String thrombolyticTraetmentGivOth;

	@Column(name = "thrombolyticSymDate")
	private String thrombolyticSymDate;

	@Column(name = "thrombolyticSymTime")
	private String thrombolyticSymTime;

	@Column(name = "delayInArrival")
	private String delayInArrival;

	@Column(name = "delayInImag")
	private String delayInImag;

	@Column(name = "diabeticsMellitus")
	private String diabeticsMellitus;

	@Column(name = "onsetOfSymp")
	private String onsetOfSymp;

	@Column(name = "sbp")
	private String sbp;

	@Column(name = "glucose")
	private String glucose;

	@Column(name = "strokeSeverity")
	private String strokeSeverity;

	@Column(name = "suspichaemorrhage")
	private String suspichaemorrhage;

	@Column(name = "mcaTerritory")
	private String mcaTerritory;

	@Column(name = "seizure")
	private String seizure;

	@Column(name = "surgery_trauma")
	private String surgery_trauma;

	@Column(name = "intracranial")
	private String intracranial;

	@Column(name = "historyOfintracranial")
	private String historyOfintracranial;

	@Column(name = "internalBleeding")
	private String internalBleeding;

	@Column(name = "platelets")
	private String platelets;

	@Column(name = "leftHeartthrombus")
	private String leftHeartthrombus;

	@Column(name = "increasedBleeding")
	private String increasedBleeding;

	@Column(name = "severeComorbid")
	private String severeComorbid;

	@Column(name = "strokeRapidly")
	private String strokeRapidly;
	
	@Column(name = "anticW24hr")
	private String anticW24hr;

	@Column(name = "antic24hr")
	private String antic24hr;

	@Column(name = "anticA48hr")
	private String anticA48hr;

	@Column(name = "hypertdrugs")
	private String hypertdrugs;

	@Column(name = "hyperW24hr")
	private String hyperW24hr;

	@Column(name = "hyper24hr")
	private String hyper24hr;

	@Column(name = "hyperA48hr")
	private String hyperA48hr;

	@Column(name = "loweringDrugs1")
	private String loweringDrugs1;

	@Column(name = "lowW24hr")
	private String lowW24hr;

	@Column(name = "low24hr")
	private String low24hr;

	@Column(name = "lowA48hr")
	private String lowA48hr;

	@Column(name = "diabagents")
	private String diabagents;

	@Column(name = "diabW24hr")
	private String diabW24hr;

	@Column(name = "diab24hr")
	private String diab24hr;

	@Column(name = "diabA48hr")
	private String diabA48hr;

	@Column(name = "hemicraniectomy")
	private String hemicraniectomy;
	
	@Column(name = "suboccipital")
	private String suboccipital;

	@Column(name = "hematomaEve")
	private String hematomaEve;

	@Column(name = "endarterectomy")
	private String endarterectomy;

	@Column(name = "carotidStenting")
	private String carotidStenting;

	@Column(name = "endovascular")
	private String endovascular;

	@Column(name = "anyOthers")
	private String anyOthers;

	@Column(name = "swallowBeenTested")
	private String swallowBeenTested;

	@Column(name = "dysphagia")
	private String dysphagia;

	@Column(name = "nasogastricTube")
	private String nasogastricTube;

	@Column(name = "swallowManag")
	private String swallowManag;

	@Column(name = "occupatTherapy")
	private String occupatTherapy;

	@Column(name = "physiotherap")
	private String physiotherap;

	@Column(name = "speechTherapy")
	private String speechTherapy;

	@Column(name = "bladderCare")
	private String bladderCare;

	@Column(name = "swalloExp")
	private String swalloExp;

	@Column(name = "occupExp")
	private String occupExp;

	@Column(name = "physioExp")
	private String physioExp;

	@Column(name = "speecExp")
	private String speecExp;

	@Column(name = "bladerExp")
	private String bladerExp;

	@Column(name = "deepVExp")
	private String deepVExp;

	@Column(name = "prophylaxis")
	private String prophylaxis;

	@Column(name = "deterNewStroke")
	private String deterNewStroke;

	@Column(name = "deterComplic")
	private String deterComplic;

	@Column(name = "deterNo")
	private String deterNo;

	@Column(name = "typeOfstrIsch")
	private String typeOfstrIsch;

	@Column(name = "typeOfstrIntrac")
	private String typeOfstrIntrac;

	@Column(name = "typeOfstrSubar")
	private String typeOfstrSubar;

	@Column(name = "typeOfstrVenous")
	private String typeOfstrVenous;

	@Column(name = "newStrokeEvent")
	private String newStrokeEvent;

	@Column(name = "icdDesc1")
	private String icdDesc1;

	@Column(name = "icdCode1")
	private String icdCode1;

	@Column(name = "dateOfnewStroke")
	private String dateOfnewStroke;

	@Column(name = "antithrombotic")
	private String antithrombotic;

	@Column(name = "currentStroke")
	private String currentStroke;

	@Column(name = "cardicEvent")
	private String cardicEvent;

	@Column(name = "seizures")
	private String seizures;

	@Column(name = "pneumonia")
	private String pneumonia;

	@Column(name = "urinaryTracInfe")
	private String urinaryTracInfe;

	@Column(name = "decubitusUlcer")
	private String decubitusUlcer;

	@Column(name = "venousnThrom")
	private String venousnThrom;

	@Column(name = "pulmonary")
	private String pulmonary;

	@Column(name = "fall")
	private String fall;

	@Column(name = "renalFailure")
	private String renalFailure;

	@Column(name = "strokeDepression")
	private String strokeDepression;

	@Column(name = "psychiatricIllness")
	private String psychiatricIllness;

	@Column(name = "comduringhospOth")
	private String comduringhospOth;
	
	@Column(name = "dateOfDisch")
	private String dateOfDisch;

	@Column(name = "patientAdmitted")
	private String patientAdmitted;

	@Column(name = "discharge")
	private String discharge;

	// 9th pagae start

	@Column(name = "dateOfDeath1")
	private String dateOfDeath1;

	@Column(name = "dateOfDeath2")
	private String dateOfDeath2;

	@Column(name = "deathCertf1")
	private String deathCertf1;

	@Column(name = "deathCertf2")
	private String deathCertf2;

	@Column(name = "medicaRec1")
	private String medicaRec1;

	@Column(name = "medicaRec2")
	private String medicaRec2;
	
	@Column(name = "dateOfComple")
	private String dateOfComple;

	@Column(name = "sign")
	private String sign;

	@Column(name = "verbalAutopsy1")
	private String verbalAutopsy1;

	@Column(name = "verbalAutopsy2")
	private String verbalAutopsy2;

	@Column(name = "notAvail1")
	private String notAvail1;

	@Column(name = "notAvail2")
	private String notAvail2;

	@Column(name = "unknown1")
	private String unknown1;

	@Column(name = "unkown2")
	private String unkown2;

	@Column(name = "relatedStroke1")
	private String relatedStroke1;

	@Column(name = "relatedStroke2")
	private String relatedStroke2;

	@Column(name = "notRelatedStroke1")
	private String notRelatedStroke1;

	@Column(name = "notRelatedStroke2")
	private String notRelatedStroke2;

	@Column(name = "casueOfDeathothers1")
	private String casueOfDeathothers1;

	@Column(name = "casueOfDeathothers2")
	private String casueOfDeathothers2;

	@Column(name = "casueOfDeathUnk1")
	private String casueOfDeathUnk1;

	@Column(name = "casueOfDeathUnk2")
	private String casueOfDeathUnk2;

	@Column(name = "immediate1")
	private String immediate1;

	@Column(name = "immediate2")
	private String immediate2;

	@Column(name = "antecedentCause1")
	private String antecedentCause1;

	@Column(name = "antecedentCause2")
	private String antecedentCause2;

	@Column(name = "otherContributing1")
	private String otherContributing1;

	@Column(name = "otherContributing2")
	private String otherContributing2;

	@Column(name = "incdRegnum")
	private String incdRegnum;

	@Column(name = "nameOFPerson")
	private String nameOFPerson;

	@Column(name = "funcStatPatDoesn")
	private String funcStatPatDoesn;

	@Column(name = "funcStatPatAble")
	private String funcStatPatAble;

	@Column(name = "funcStatPatCan")
	private String funcStatPatCan;

	@Column(name = "funcStatPatReqAss")
	private String funcStatPatReqAss;

	@Column(name = "funcStatPatNedAss")
	private String funcStatPatNedAss;

	@Column(name = "funcStatPatBerd")
	private String funcStatPatBerd;

	@Column(name = "funcStatPatisDea")
	private String funcStatPatisDea;
	
	@Column(name = "othersforRecThrom")
	private String othersforRecThrom;

	private String pharmacologicMedOth;
	
	
	
	@Column(name = "hemogl_radio")
	private String hemogl_radio;
	
	@Column(name = "hemogl")
	private String hemogl;
	
	@Column(name = "hemogl1")
	private String hemogl1;

	@Column(name = "antiHyper")
	private String antiHyper;
	
	@Column(name = "antiplatelets2")
	private String antiplatelets2;

	@Column(name = "anticoagulants")
	private String anticoagulants;

	@Column(name = "statins")
	private String statins;

	@Column(name = "antidiabetics1")
	private String antidiabetics1;

	@Column(name = "counsellingForReg")
	private String counsellingForReg;

	@Column(name = "counsellingForCompl")
	private String counsellingForCompl;

	@Column(name = "smokCessation")
	private String smokCessation;

	@Column(name = "smokLessTobCess")
	private String smokLessTobCess;

	@Column(name = "counForAbstAlc")
	private String counForAbstAlc;

	@Column(name = "counForDrugAbuse")
	private String counForDrugAbuse;

	@Column(name = "rehabiliationServ")
	private String rehabiliationServ;

	@Column(name = "strokeEduc")
	private String strokeEduc;

	@Column(name = "followUp")
	private String followUp;
	@Column(name = "followUpII")
	private String followUpII;

	/* private String onsetAft3mon; */
	@Column(name = "dueDateOfFollDate1")
	private String dueDateOfFollDate1;
	
	@Column(name = "dueDateOfFollDate2")
	private String dueDateOfFollDate2;

	@Column(name = "actDateOfFollDate1")
	private String actDateOfFollDate1;

	@Column(name = "actDateOfFollDate2")
	private String actDateOfFollDate2;

	@Column(name = "hospVist1")
	private String hospVist1;

	@Column(name = "hospVisit2")
	private String hospVisit2;

	@Column(name = "byPost1")
	private String byPost1;

	@Column(name = "byPost2")
	private String byPost2;

	@Column(name = "byTel1")
	private String byTel1;

	@Column(name = "byTel2")
	private String byTel2;

	@Column(name = "byHousVis1")
	private String byHousVis1;

	@Column(name = "byHousVis2")
	private String byHousVis2;

	@Column(name = "methodFollwOth1")
	private String methodFollwOth1;

	@Column(name = "methodFollwOth2")
	private String methodFollwOth2;

	@Column(name = "methodFollwUnk1")
	private String methodFollwUnk1;

	@Column(name = "methodFollwUnk2")
	private String methodFollwUnk2;

	@Column(name = "vitalStat1")
	private String vitalStat1;

	@Column(name = "vitalStat2")
	private String vitalStat2;

	@Column(name = "patDoesSymp1")
	private String patDoesSymp1;

	@Column(name = "patDoesSymp2")
	private String patDoesSymp2;
	
	@Column(name = "patAbletoCarr1")
	private String patAbletoCarr1;

	@Column(name = "patAbletoCarr2")
	private String patAbletoCarr2;

	@Column(name = "patWithoutAss1")
	private String patWithoutAss1;

	@Column(name = "patWithoutAss2")
	private String patWithoutAss2;

	@Column(name = "patWithtAss1")
	private String patWithtAss1;

	@Column(name = "patWithtAss2")
	private String patWithtAss2;

	@Column(name = "patNeedAss1")
	private String patNeedAss1;

	@Column(name = "patNeedAss2")
	private String patNeedAss2;

	@Column(name = "patBedridden1")
	private String patBedridden1;

	@Column(name = "patBedridden2")
	private String patBedridden2;

	@Column(name = "patIsDead1")
	private String patIsDead1;

	@Column(name = "patIsDead2")
	private String patIsDead2;
	
	@Column(name = "antiplatelets")
	private String antiplatelets;
	
	@Column(name = "hemicIntTime")
	private String hemicIntTime;

	@Column(name = "cranIntTime")
	private String cranIntTime;

	@Column(name = "hematIntTime")
	private String hematIntTime;

	@Column(name = "carotidIntTime")
	private String carotidIntTime;

	@Column(name = "carotidSteIntTime")
	private String carotidSteIntTime;

	@Column(name = "endovIntTime")
	private String endovIntTime;
	
	//----------------------------------------------
	
	@Column(name = "treatStroke_Home")
	private String tStroke_Home;
	
	@Column(name = "treatStrk_OthPlcStrkonset")
	private String treatStrk_OthPlcStrkonset;
	
	@Column(name = "treatStrk_OptHelthcare")
	private String treatStrk_OptHelthcare;
	
	@Column(name = "treatStrk_IpHelthcare")
	private String treatStrk_IpHelthcare;
	
	@Column(name = "treatStrk_OthDeptRptHsp")
	private String treatStrk_OthDeptRptHsp;
	
	@Column(name = "treatStrk_OthSpy")
	private String treatStrk_OthSpy;
	
	@Column(name = "treatStrk_Unknown")
	private String treatStrk_Unknown;
	
	
	@Column(name = "hbsr_DeoName")
	private String DeoName;
	
	
	@Column(name = "hbsr_submitData")
	private String submitData;
	
	@Column(name = "hbsr_EntryDate")
	private String EntryDate;
	
	
	//-------------------------------------------------
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	



	public int getRefeNum() {
		return refeNum;
	}

	public void setRefeNum(int refeNum) {
		this.refeNum = refeNum;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	

	public String getLang_Assam() {
		return lang_Assam;
	}

	public void setLang_Assam(String lang_Assam) {
		this.lang_Assam = lang_Assam;
	}

	public String getLang_Beng() {
		return lang_Beng;
	}

	public void setLang_Beng(String lang_Beng) {
		this.lang_Beng = lang_Beng;
	}

	public String getLang_Guja() {
		return lang_Guja;
	}

	public void setLang_Guja(String lang_Guja) {
		this.lang_Guja = lang_Guja;
	}

	public String getLang_Hind() {
		return lang_Hind;
	}

	public void setLang_Hind(String lang_Hind) {
		this.lang_Hind = lang_Hind;
	}

	public String getLang_Kann() {
		return lang_Kann;
	}

	public void setLang_Kann(String lang_Kann) {
		this.lang_Kann = lang_Kann;
	}

	public String getLang_Malay() {
		return lang_Malay;
	}

	public void setLang_Malay(String lang_Malay) {
		this.lang_Malay = lang_Malay;
	}

	public String getLang_Marati() {
		return lang_Marati;
	}

	public void setLang_Marati(String lang_Marati) {
		this.lang_Marati = lang_Marati;
	}

	public String getLang_Oriya() {
		return lang_Oriya;
	}

	public void setLang_Oriya(String lang_Oriya) {
		this.lang_Oriya = lang_Oriya;
	}

	public String getLang_Punja() {
		return lang_Punja;
	}

	public void setLang_Punja(String lang_Punja) {
		this.lang_Punja = lang_Punja;
	}

	public String getLang_Sans() {
		return lang_Sans;
	}

	public void setLang_Sans(String lang_Sans) {
		this.lang_Sans = lang_Sans;
	}

	public String getLang_Sindi() {
		return lang_Sindi;
	}

	public void setLang_Sindi(String lang_Sindi) {
		this.lang_Sindi = lang_Sindi;
	}

	public String getLang_Tam() {
		return lang_Tam;
	}

	public void setLang_Tam(String lang_Tam) {
		this.lang_Tam = lang_Tam;
	}

	public String getLang_Telu() {
		return lang_Telu;
	}

	public void setLang_Telu(String lang_Telu) {
		this.lang_Telu = lang_Telu;
	}

	public String getLang_Urdu() {
		return lang_Urdu;
	}

	public void setLang_Urdu(String lang_Urdu) {
		this.lang_Urdu = lang_Urdu;
	}

	public String getLang_Eng() {
		return lang_Eng;
	}

	public void setLang_Eng(String lang_Eng) {
		this.lang_Eng = lang_Eng;
	}

	public String getLang_Konkan() {
		return lang_Konkan;
	}

	public void setLang_Konkan(String lang_Konkan) {
		this.lang_Konkan = lang_Konkan;
	}

	public String getLang_Bhutia() {
		return lang_Bhutia;
	}

	public void setLang_Bhutia(String lang_Bhutia) {
		this.lang_Bhutia = lang_Bhutia;
	}

	public String getLang_Manipuri() {
		return lang_Manipuri;
	}

	public void setLang_Manipuri(String lang_Manipuri) {
		this.lang_Manipuri = lang_Manipuri;
	}

	public String getLang_Mizo() {
		return lang_Mizo;
	}

	public void setLang_Mizo(String lang_Mizo) {
		this.lang_Mizo = lang_Mizo;
	}

	public String getLang_Nepalli() {
		return lang_Nepalli;
	}

	public void setLang_Nepalli(String lang_Nepalli) {
		this.lang_Nepalli = lang_Nepalli;
	}

	public String getLang_Lepcha() {
		return lang_Lepcha;
	}

	public void setLang_Lepcha(String lang_Lepcha) {
		this.lang_Lepcha = lang_Lepcha;
	}

	public String getLang_Rajast() {
		return lang_Rajast;
	}

	public void setLang_Rajast(String lang_Rajast) {
		this.lang_Rajast = lang_Rajast;
	}

	public String getLang_unk() {
		return lang_unk;
	}

	public void setLang_unk(String lang_unk) {
		this.lang_unk = lang_unk;
	}

	

	public int getCore_id() {
		return core_id;
	}

	public void setCore_id(int core_id) {
		this.core_id = core_id;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	

	public String getTel2() {
		return tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getTel3() {
		return tel3;
	}

	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}

	



	

	public String getRegNum() {
		return regNum;
	}

	public void setRegNum(String regNum) {
		this.regNum = regNum;
	}

	public String getRepInst() {
		return repInst;
	}

	public String getCenCode() {
		return cenCode;
	}

	public void setCenCode(String cenCode) {
		this.cenCode = cenCode;
	}

	public void setRepInst(String repInst) {
		this.repInst = repInst;
	}

	public String getSourceofReg() {
		return sourceofReg;
	}

	public void setSourceofReg(String sourceofReg) {
		this.sourceofReg = sourceofReg;
	}

	public String getCode1() {
		return code1;
	}

	public void setCode1(String code1) {
		this.code1 = code1;
	}

	public String getCode2() {
		return code2;
	}

	public void setCode2(String code2) {
		this.code2 = code2;
	}

	public String getHospRegNum() {
		return hospRegNum;
	}

	public void setHospRegNum(String hospRegNum) {
		this.hospRegNum = hospRegNum;
	}

	public String getPatTitle() {
		return patTitle;
	}

	public void setPatTitle(String patTitle) {
		this.patTitle = patTitle;
	}

	public String getPatFirstN() {
		return patFirstN;
	}

	public void setPatFirstN(String patFirstN) {
		this.patFirstN = patFirstN;
	}

	public String getPatMidN() {
		return patMidN;
	}

	public void setPatMidN(String patMidN) {
		this.patMidN = patMidN;
	}

	public String getPatLastN() {
		return patLastN;
	}

	public void setPatLastN(String patLastN) {
		this.patLastN = patLastN;
	}

	public String getResidence() {
		return residence;
	}

	public void setResidence(String residence) {
		this.residence = residence;
	}

	public String getHousNo1() {
		return housNo1;
	}

	public void setHousNo1(String housNo1) {
		System.out.println("house no 1 : "+housNo1);
		this.housNo1 = housNo1;
	}

	public String getHousNo2() {
		return housNo2;
	}

	public void setHousNo2(String housNo2) {
		System.out.println("house no 2 : "+housNo2);
		if(housNo2.equals(null))
			this.housNo2 = "";
		else
			this.housNo2 = housNo2;		
	}

	public String getRoad() {
		return road;
	}

	public void setRoad(String road) {
		this.road = road;
	}

	public String getWard() {
		return ward;
	}

	public void setWard(String ward) {
		this.ward = ward;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getGramaPanc() {
		return gramaPanc;
	}

	public void setGramaPanc(String gramaPanc) {
		this.gramaPanc = gramaPanc;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public String getSubDist() {
		return subDist;
	}

	public void setSubDist(String subDist) {
		this.subDist = subDist;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getSubCenter() {
		return subCenter;
	}

	public void setSubCenter(String subCenter) {
		this.subCenter = subCenter;
	}

	public String getDist() {
		return dist;
	}

	public void setDist(String dist) {
		this.dist = dist;
	}

	public String getPostalPin() {
		return postalPin;
	}

	public void setPostalPin(String postalPin) {
		this.postalPin = postalPin;
	}

	public String getOff_tel() {
		return off_tel;
	}

	public void setOff_tel(String off_tel) {
		this.off_tel = off_tel;
	}

	public String getRes() {
		return res;
	}

	public void setRes(String res) {
		this.res = res;
	}

	public String getMob1() {
		return mob1;
	}

	public void setMob1(String mob1) {
		this.mob1 = mob1;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMob2() {
		return mob2;
	}

	public void setMob2(String mob2) {
		this.mob2 = mob2;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getDurationStay() {
		return durationStay;
	}

	public void setDurationStay(String durationStay) {
		this.durationStay = durationStay;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getOthers1() {
		return others1;
	}

	public void setOthers1(String others1) {
		this.others1 = others1;
	}

	// coreform first page end

	// coreform second page starts

	

	public String getPharmacologicMedOth() {
		return pharmacologicMedOth;
	}

	public void setPharmacologicMedOth(String pharmacologicMedOth) {
		this.pharmacologicMedOth = pharmacologicMedOth;
	}

	public String getAntiHyper() {
		return antiHyper;
	}

	public void setAntiHyper(String antiHyper) {
		this.antiHyper = antiHyper;
	}

	public String getAntiplatelets2() {
		return antiplatelets2;
	}

	public void setAntiplatelets2(String antiplatelets2) {
		this.antiplatelets2 = antiplatelets2;
	}

	public String getAnticoagulants() {
		return anticoagulants;
	}

	public void setAnticoagulants(String anticoagulants) {
		this.anticoagulants = anticoagulants;
	}

	public String getStatins() {
		return statins;
	}

	public void setStatins(String statins) {
		this.statins = statins;
	}

	public String getAntidiabetics1() {
		return antidiabetics1;
	}

	public void setAntidiabetics1(String antidiabetics1) {
		this.antidiabetics1 = antidiabetics1;
	}

	public String getCounsellingForReg() {
		return counsellingForReg;
	}

	public void setCounsellingForReg(String counsellingForReg) {
		this.counsellingForReg = counsellingForReg;
	}

	public String getCounsellingForCompl() {
		return counsellingForCompl;
	}

	public void setCounsellingForCompl(String counsellingForCompl) {
		this.counsellingForCompl = counsellingForCompl;
	}

	public String getSmokCessation() {
		return smokCessation;
	}

	public void setSmokCessation(String smokCessation) {
		this.smokCessation = smokCessation;
	}

	public String getSmokLessTobCess() {
		return smokLessTobCess;
	}

	public void setSmokLessTobCess(String smokLessTobCess) {
		this.smokLessTobCess = smokLessTobCess;
	}

	public String getCounForAbstAlc() {
		return counForAbstAlc;
	}

	public void setCounForAbstAlc(String counForAbstAlc) {
		this.counForAbstAlc = counForAbstAlc;
	}

	public String getCounForDrugAbuse() {
		return counForDrugAbuse;
	}

	public void setCounForDrugAbuse(String counForDrugAbuse) {
		this.counForDrugAbuse = counForDrugAbuse;
	}

	public String getRehabiliationServ() {
		return rehabiliationServ;
	}

	public void setRehabiliationServ(String rehabiliationServ) {
		this.rehabiliationServ = rehabiliationServ;
	}

	public String getStrokeEduc() {
		return strokeEduc;
	}

	public void setStrokeEduc(String strokeEduc) {
		this.strokeEduc = strokeEduc;
	}

	public String getFollowUp() {
		return followUp;
	}

	public void setFollowUp(String followUp) {
		this.followUp = followUp;
	}
	
	
	
	

	public String getFollowUpII() {
		return followUpII;
	}

	public void setFollowUpII(String followUpII) {
		this.followUpII = followUpII;
	}

	public String getDueDateOfFollDate1() {
		return dueDateOfFollDate1;
	}

	public void setDueDateOfFollDate1(String dueDateOfFollDate1) {
		this.dueDateOfFollDate1 = dueDateOfFollDate1;
	}

	public String getDueDateOfFollDate2() {
		return dueDateOfFollDate2;
	}

	public void setDueDateOfFollDate2(String dueDateOfFollDate2) {
		this.dueDateOfFollDate2 = dueDateOfFollDate2;
	}

	public String getActDateOfFollDate1() {
		return actDateOfFollDate1;
	}

	public void setActDateOfFollDate1(String actDateOfFollDate1) {
		this.actDateOfFollDate1 = actDateOfFollDate1;
	}

	public String getActDateOfFollDate2() {
		return actDateOfFollDate2;
	}

	public void setActDateOfFollDate2(String actDateOfFollDate2) {
		this.actDateOfFollDate2 = actDateOfFollDate2;
	}

	public String getHospVist1() {
		return hospVist1;
	}

	public void setHospVist1(String hospVist1) {
		this.hospVist1 = hospVist1;
	}

	public String getHospVisit2() {
		return hospVisit2;
	}

	public void setHospVisit2(String hospVisit2) {
		this.hospVisit2 = hospVisit2;
	}

	public String getByPost1() {
		return byPost1;
	}

	public void setByPost1(String byPost1) {
		this.byPost1 = byPost1;
	}

	public String getByPost2() {
		return byPost2;
	}

	public void setByPost2(String byPost2) {
		this.byPost2 = byPost2;
	}

	public String getByTel1() {
		return byTel1;
	}

	public void setByTel1(String byTel1) {
		this.byTel1 = byTel1;
	}

	public String getByTel2() {
		return byTel2;
	}

	public void setByTel2(String byTel2) {
		this.byTel2 = byTel2;
	}

	public String getByHousVis1() {
		return byHousVis1;
	}

	public void setByHousVis1(String byHousVis1) {
		this.byHousVis1 = byHousVis1;
	}

	public String getByHousVis2() {
		return byHousVis2;
	}

	public void setByHousVis2(String byHousVis2) {
		this.byHousVis2 = byHousVis2;
	}

	public String getMethodFollwOth1() {
		return methodFollwOth1;
	}

	public void setMethodFollwOth1(String methodFollwOth1) {
		this.methodFollwOth1 = methodFollwOth1;
	}

	public String getMethodFollwOth2() {
		return methodFollwOth2;
	}

	public void setMethodFollwOth2(String methodFollwOth2) {
		this.methodFollwOth2 = methodFollwOth2;
	}

	public String getMethodFollwUnk1() {
		return methodFollwUnk1;
	}

	public void setMethodFollwUnk1(String methodFollwUnk1) {
		this.methodFollwUnk1 = methodFollwUnk1;
	}

	public String getMethodFollwUnk2() {
		return methodFollwUnk2;
	}

	public void setMethodFollwUnk2(String methodFollwUnk2) {
		this.methodFollwUnk2 = methodFollwUnk2;
	}

	public String getVitalStat1() {
		return vitalStat1;
	}

	public void setVitalStat1(String vitalStat1) {
		this.vitalStat1 = vitalStat1;
	}

	public String getVitalStat2() {
		return vitalStat2;
	}

	public void setVitalStat2(String vitalStat2) {
		this.vitalStat2 = vitalStat2;
	}

	public String getPatDoesSymp1() {
		return patDoesSymp1;
	}

	public void setPatDoesSymp1(String patDoesSymp1) {
		this.patDoesSymp1 = patDoesSymp1;
	}

	public String getPatDoesSymp2() {
		return patDoesSymp2;
	}

	public void setPatDoesSymp2(String patDoesSymp2) {
		this.patDoesSymp2 = patDoesSymp2;
	}

	public String getPatAbletoCarr1() {
		return patAbletoCarr1;
	}

	public void setPatAbletoCarr1(String patAbletoCarr1) {
		this.patAbletoCarr1 = patAbletoCarr1;
	}

	public String getPatAbletoCarr2() {
		return patAbletoCarr2;
	}

	public void setPatAbletoCarr2(String patAbletoCarr2) {
		this.patAbletoCarr2 = patAbletoCarr2;
	}

	public String getPatWithoutAss1() {
		return patWithoutAss1;
	}

	public void setPatWithoutAss1(String patWithoutAss1) {
		this.patWithoutAss1 = patWithoutAss1;
	}

	public String getPatWithoutAss2() {
		return patWithoutAss2;
	}

	public void setPatWithoutAss2(String patWithoutAss2) {
		this.patWithoutAss2 = patWithoutAss2;
	}

	public String getPatWithtAss1() {
		return patWithtAss1;
	}

	public void setPatWithtAss1(String patWithtAss1) {
		this.patWithtAss1 = patWithtAss1;
	}

	public String getPatWithtAss2() {
		return patWithtAss2;
	}

	public void setPatWithtAss2(String patWithtAss2) {
		this.patWithtAss2 = patWithtAss2;
	}

	public String getPatNeedAss1() {
		return patNeedAss1;
	}

	public void setPatNeedAss1(String patNeedAss1) {
		this.patNeedAss1 = patNeedAss1;
	}

	public String getPatNeedAss2() {
		return patNeedAss2;
	}

	public void setPatNeedAss2(String patNeedAss2) {
		this.patNeedAss2 = patNeedAss2;
	}

	public String getPatBedridden1() {
		return patBedridden1;
	}

	public void setPatBedridden1(String patBedridden1) {
		this.patBedridden1 = patBedridden1;
	}

	public String getPatBedridden2() {
		return patBedridden2;
	}

	public void setPatBedridden2(String patBedridden2) {
		this.patBedridden2 = patBedridden2;
	}

	public String getPatIsDead1() {
		return patIsDead1;
	}

	public void setPatIsDead1(String patIsDead1) {
		this.patIsDead1 = patIsDead1;
	}

	public String getPatIsDead2() {
		return patIsDead2;
	}

	public void setPatIsDead2(String patIsDead2) {
		this.patIsDead2 = patIsDead2;
	}

	

	public String getCultural() {
		return cultural;
	}

	public void setCultural(String cultural) {
		this.cultural = cultural;
	}

	public String getCulturalOthers() {
		return culturalOthers;
	}

	public void setCulturalOthers(String culturalOthers) {
		this.culturalOthers = culturalOthers;
	}

	public String getPatlastseendate() {
		return patlastseendate;
	}

	public void setPatlastseendate(String patlastseendate) {
		this.patlastseendate = patlastseendate;
	}

	public String getPatlastseentime() {
		return patlastseentime;
	}

	public void setPatlastseentime(String patlastseentime) {
		this.patlastseentime = patlastseentime;
	}

	public String getOnsetstrokedate() {
		return onsetstrokedate;
	}

	public void setOnsetstrokedate(String onsetstrokedate) {
		this.onsetstrokedate = onsetstrokedate;
	}

	public String getOnsetstroketime() {
		return onsetstroketime;
	}

	public void setOnsetstroketime(String onsetstroketime) {
		this.onsetstroketime = onsetstroketime;
	}

	public String getWakeupStroke() {
		return wakeupStroke;
	}

	public void setWakeupStroke(String wakeupStroke) {
		this.wakeupStroke = wakeupStroke;
	}

	public String getSympWeek() {
		return sympWeek;
	}

	public void setSympWeek(String sympWeek) {
		this.sympWeek = sympWeek;
	}

	public String getSympDysp() {
		return sympDysp;
	}

	public void setSympDysp(String sympDysp) {
		this.sympDysp = sympDysp;
	}

	public String getSympAltered() {
		return sympAltered;
	}

	public void setSympAltered(String sympAltered) {
		this.sympAltered = sympAltered;
	}

	public String getSympOnsetOthers() {
		return sympOnsetOthers;
	}

	public void setSympOnsetOthers(String sympOnsetOthers) {
		this.sympOnsetOthers = sympOnsetOthers;
	}

	public String getFirstStrsympdate() {
		return firstStrsympdate;
	}

	public void setFirstStrsympdate(String firstStrsympdate) {
		this.firstStrsympdate = firstStrsympdate;
	}

	public String getFirstStrsymptime() {
		return firstStrsymptime;
	}

	public void setFirstStrsymptime(String firstStrsymptime) {
		this.firstStrsymptime = firstStrsymptime;
	}

	public String getTreatmentStroke() {
		return treatmentStroke;
	}

	public void setTreatmentStroke(String treatmentStroke) {
		this.treatmentStroke = treatmentStroke;
	}

	public String getTreatmentStrokeothers() {
		return treatmentStrokeothers;
	}

	public void setTreatmentStrokeothers(String treatmentStrokeothers) {
		this.treatmentStrokeothers = treatmentStrokeothers;
	}

	public String getAarivaldate() {
		return aarivaldate;
	}

	public void setAarivaldate(String aarivaldate) {
		this.aarivaldate = aarivaldate;
	}

	public String getAarivaltime() {
		return aarivaltime;
	}

	public void setAarivaltime(String aarivaltime) {
		this.aarivaltime = aarivaltime;
	}

	public String getDiagOfStroke() {
		return diagOfStroke;
	}

	public void setDiagOfStroke(String diagOfStroke) {
		this.diagOfStroke = diagOfStroke;
	}

	public String getHistoryTIA() {
		return historyTIA;
	}

	public void setHistoryTIA(String historyTIA) {
		this.historyTIA = historyTIA;
	}

	public String getHistoryTIAdate() {
		return historyTIAdate;
	}

	public void setHistoryTIAdate(String historyTIAdate) {
		this.historyTIAdate = historyTIAdate;
	}

	public String getHistoryTIAtime() {
		return historyTIAtime;
	}

	public void setHistoryTIAtime(String historyTIAtime) {
		this.historyTIAtime = historyTIAtime;
	}

	// coreform third page

	public String getClinRIUnilateral() {
		return clinRIUnilateral;
	}

	public void setClinRIUnilateral(String clinRIUnilateral) {
		this.clinRIUnilateral = clinRIUnilateral;
	}

	public String getClinRISensory() {
		return clinRISensory;
	}

	public void setClinRISensory(String clinRISensory) {
		this.clinRISensory = clinRISensory;
	}

	public String getClinRIAphasia() {
		return clinRIAphasia;
	}

	public void setClinRIAphasia(String clinRIAphasia) {
		this.clinRIAphasia = clinRIAphasia;
	}

	public String getClinRIHeminophia() {
		return clinRIHeminophia;
	}

	public void setClinRIHeminophia(String clinRIHeminophia) {
		this.clinRIHeminophia = clinRIHeminophia;
	}

	public String getClinRIGaze() {
		return clinRIGaze;
	}

	public void setClinRIGaze(String clinRIGaze) {
		this.clinRIGaze = clinRIGaze;
	}

	public String getClinRIApraxia() {
		return clinRIApraxia;
	}

	public void setClinRIApraxia(String clinRIApraxia) {
		this.clinRIApraxia = clinRIApraxia;
	}

	public String getClinRIAtaxia() {
		return clinRIAtaxia;
	}

	public void setClinRIAtaxia(String clinRIAtaxia) {
		this.clinRIAtaxia = clinRIAtaxia;
	}

	public String getClinRINeglect() {
		return clinRINeglect;
	}

	public void setClinRINeglect(String clinRINeglect) {
		this.clinRINeglect = clinRINeglect;
	}

	public String getClinRINone() {
		return clinRINone;
	}

	public void setClinRINone(String clinRINone) {
		this.clinRINone = clinRINone;
	}

	

	public String getClinFetDizziness() {
		return clinFetDizziness;
	}

	public void setClinFetDizziness(String clinFetDizziness) {
		this.clinFetDizziness = clinFetDizziness;
	}

	public String getClinFetLocalized() {
		return clinFetLocalized;
	}

	public void setClinFetLocalized(String clinFetLocalized) {
		this.clinFetLocalized = clinFetLocalized;
	}

	public String getClinFetBlurred() {
		return clinFetBlurred;
	}

	public void setClinFetBlurred(String clinFetBlurred) {
		this.clinFetBlurred = clinFetBlurred;
	}

	public String getClinFetDiplopia() {
		return clinFetDiplopia;
	}

	public void setClinFetDiplopia(String clinFetDiplopia) {
		this.clinFetDiplopia = clinFetDiplopia;
	}

	public String getClinFetDysart() {
		return clinFetDysart;
	}

	public void setClinFetDysart(String clinFetDysart) {
		this.clinFetDysart = clinFetDysart;
	}

	public String getClinFetImpaired() {
		return clinFetImpaired;
	}

	public void setClinFetImpaired(String clinFetImpaired) {
		this.clinFetImpaired = clinFetImpaired;
	}

	public String getClinFetImpaConsc() {
		return clinFetImpaConsc;
	}

	public void setClinFetImpaConsc(String clinFetImpaConsc) {
		this.clinFetImpaConsc = clinFetImpaConsc;
	}

	public String getClinFetSeizures() {
		return clinFetSeizures;
	}

	public void setClinFetSeizures(String clinFetSeizures) {
		this.clinFetSeizures = clinFetSeizures;
	}

	public String getClinFetDyspagia() {
		return clinFetDyspagia;
	}

	public void setClinFetDyspagia(String clinFetDyspagia) {
		this.clinFetDyspagia = clinFetDyspagia;
	}

	

	public String getConsciousnessLevel() {
		return consciousnessLevel;
	}

	public void setConsciousnessLevel(String consciousnessLevel) {
		this.consciousnessLevel = consciousnessLevel;
	}

	public String getQuesOfLOC() {
		return quesOfLOC;
	}

	public void setQuesOfLOC(String quesOfLOC) {
		this.quesOfLOC = quesOfLOC;
	}

	public String getCommLOC() {
		return commLOC;
	}

	public void setCommLOC(String commLOC) {
		this.commLOC = commLOC;
	}

	public String getBestGaze() {
		return bestGaze;
	}

	public void setBestGaze(String bestGaze) {
		this.bestGaze = bestGaze;
	}

	public String getVisualFeilds() {
		return visualFeilds;
	}

	public void setVisualFeilds(String visualFeilds) {
		this.visualFeilds = visualFeilds;
	}

	public String getPalsy() {
		return palsy;
	}

	public void setPalsy(String palsy) {
		this.palsy = palsy;
	}

	public String getMotorArm() {
		return motorArm;
	}

	public void setMotorArm(String motorArm) {
		this.motorArm = motorArm;
	}

	public String getMotorLeg() {
		return motorLeg;
	}

	public void setMotorLeg(String motorLeg) {
		this.motorLeg = motorLeg;
	}

	public String getLimbAtaxia() {
		return limbAtaxia;
	}

	public void setLimbAtaxia(String limbAtaxia) {
		this.limbAtaxia = limbAtaxia;
	}

	public String getSensory() {
		return sensory;
	}

	public void setSensory(String sensory) {
		this.sensory = sensory;
	}

	public String getBestLang() {
		return bestLang;
	}

	public void setBestLang(String bestLang) {
		this.bestLang = bestLang;
	}

	public String getDysarthria() {
		return dysarthria;
	}

	public void setDysarthria(String dysarthria) {
		this.dysarthria = dysarthria;
	}

	public String getInattention() {
		return inattention;
	}

	public void setInattention(String inattention) {
		this.inattention = inattention;
	}

	public String getScoreOfNIHSS() {
		return scoreOfNIHSS;
	}

	public void setScoreOfNIHSS(String scoreOfNIHSS) {
		this.scoreOfNIHSS = scoreOfNIHSS;
	}

	public String getPreMorbidRankin() {
		return preMorbidRankin;
	}

	public void setPreMorbidRankin(String preMorbidRankin) {
		this.preMorbidRankin = preMorbidRankin;
	}

	public String getFirstCTbrain() {
		return firstCTbrain;
	}

	public void setFirstCTbrain(String firstCTbrain) {
		this.firstCTbrain = firstCTbrain;
	}

	public String getFirstCTbrainDate() {
		return firstCTbrainDate;
	}

	public void setFirstCTbrainDate(String firstCTbrainDate) {
		this.firstCTbrainDate = firstCTbrainDate;
	}

	public String getFirstCTbrainTime() {
		return firstCTbrainTime;
	}

	public void setFirstCTbrainTime(String firstCTbrainTime) {
		this.firstCTbrainTime = firstCTbrainTime;
	}

	public String getImagingFind1() {
		return imagingFind1;
	}

	public void setImagingFind1(String imagingFind1) {
		this.imagingFind1 = imagingFind1;
	}

	public String getImagingFind2() {
		return imagingFind2;
	}

	public void setImagingFind2(String imagingFind2) {
		this.imagingFind2 = imagingFind2;
	}

	public String getImagingFind3() {
		return imagingFind3;
	}

	public void setImagingFind3(String imagingFind3) {
		this.imagingFind3 = imagingFind3;
	}

	public String getImagingFind4() {
		return imagingFind4;
	}

	public void setImagingFind4(String imagingFind4) {
		this.imagingFind4 = imagingFind4;
	}

	public String getImagingFind5() {
		return imagingFind5;
	}

	public void setImagingFind5(String imagingFind5) {
		this.imagingFind5 = imagingFind5;
	}

	public String getMriBrain() {
		return mriBrain;
	}

	public void setMriBrain(String mriBrain) {
		this.mriBrain = mriBrain;
	}

	public String getMriBrainDate() {
		return mriBrainDate;
	}

	public void setMriBrainDate(String mriBrainDate) {
		this.mriBrainDate = mriBrainDate;
	}

	public String getMriBrainTime() {
		return mriBrainTime;
	}

	public void setMriBrainTime(String mriBrainTime) {
		this.mriBrainTime = mriBrainTime;
	}

	public String getAngioCT() {
		return angioCT;
	}

	public void setAngioCT(String angioCT) {
		this.angioCT = angioCT;
	}

	public String getAngioCTDate() {
		return angioCTDate;
	}

	public void setAngioCTDate(String angioCTDate) {
		this.angioCTDate = angioCTDate;
	}

	public String getAngioCTTime() {
		return angioCTTime;
	}

	public void setAngioCTTime(String angioCTTime) {
		this.angioCTTime = angioCTTime;
	}

	public String getPerfusion() {
		return perfusion;
	}

	public void setPerfusion(String perfusion) {
		this.perfusion = perfusion;
	}

	public String getPerfusionDate() {
		return perfusionDate;
	}

	public void setPerfusionDate(String perfusionDate) {
		this.perfusionDate = perfusionDate;
	}

	public String getPerfusionTime() {
		return perfusionTime;
	}

	public void setPerfusionTime(String perfusionTime) {
		this.perfusionTime = perfusionTime;
	}

	public String getAngioMRI() {
		return angioMRI;
	}

	public void setAngioMRI(String angioMRI) {
		this.angioMRI = angioMRI;
	}

	public String getAngioMRIDate() {
		return angioMRIDate;
	}

	public void setAngioMRIDate(String angioMRIDate) {
		this.angioMRIDate = angioMRIDate;
	}

	public String getAngioMRITime() {
		return angioMRITime;
	}

	public void setAngioMRITime(String angioMRITime) {
		this.angioMRITime = angioMRITime;
	}

	public String getCarotid() {
		return carotid;
	}

	public void setCarotid(String carotid) {		
		this.carotid = carotid;
	}

	public String getCarotidDate() {
		return carotidDate;
	}

	public void setCarotidDate(String carotidDate) {
		this.carotidDate = carotidDate;
	}

	public String getCarotidTime() {
		return carotidTime;
	}

	public void setCarotidTime(String carotidTime) {
		this.carotidTime = carotidTime;
	}

	public String getEcg() {
		return ecg;
	}

	public void setEcg(String ecg) {
		this.ecg = ecg;
	}

	public String getEcgDate() {
		return ecgDate;
	}

	public void setEcgDate(String ecgDate) {
		this.ecgDate = ecgDate;
	}

	public String getEcgTime() {
		return ecgTime;
	}

	public void setEcgTime(String ecgTime) {
		this.ecgTime = ecgTime;
	}

	public String getTte() {
		return tte;
	}

	public void setTte(String tte) {
		this.tte = tte;
	}

	public String getTteDate() {
		return tteDate;
	}

	public void setTteDate(String tteDate) {
		this.tteDate = tteDate;
	}

	public String getTteTime() {
		return tteTime;
	}

	public void setTteTime(String tteTime) {
		this.tteTime = tteTime;
	}

	public String getTransesopagheal() {
		return transesopagheal;
	}

	public void setTransesopagheal(String transesopagheal) {
		this.transesopagheal = transesopagheal;
	}

	public String getTransesopaghealDate() {
		return transesopaghealDate;
	}

	public void setTransesopaghealDate(String transesopaghealDate) {
		this.transesopaghealDate = transesopaghealDate;
	}

	public String getTransesopaghealTime() {
		return transesopaghealTime;
	}

	public void setTransesopaghealTime(String transesopaghealTime) {
		this.transesopaghealTime = transesopaghealTime;
	}

	public String getOthersforDiagnostic() {
		return othersforDiagnostic;
	}

	public void setOthersforDiagnostic(String othersforDiagnostic) {
		this.othersforDiagnostic = othersforDiagnostic;
	}

	

	public String getDiagClinical() {
		return diagClinical;
	}

	public void setDiagClinical(String diagClinical) {
		this.diagClinical = diagClinical;
	}

	public String getDiagCT() {
		return diagCT;
	}

	public void setDiagCT(String diagCT) {
		this.diagCT = diagCT;
	}

	public String getDiagMRI() {
		return diagMRI;
	}

	public void setDiagMRI(String diagMRI) {
		this.diagMRI = diagMRI;
	}

	
	public String getReportInstCTandMRI() {
		return reportInstCTandMRI;
	}

	public void setReportInstCTandMRI(String reportInstCTandMRI) {
		this.reportInstCTandMRI = reportInstCTandMRI;
	}

	public String getReportInstDate() {
		return reportInstDate;
	}

	public void setReportInstDate(String reportInstDate) {
		this.reportInstDate = reportInstDate;
	}

	public String getReportInstTime() {
		return reportInstTime;
	}

	public void setReportInstTime(String reportInstTime) {
		this.reportInstTime = reportInstTime;
	}

	public String getReportInstImagTime() {
		return reportInstImagTime;
	}

	public void setReportInstImagTime(String reportInstImagTime) {
		this.reportInstImagTime = reportInstImagTime;
	}

	public String getBasisOfDiagOthers() {
		return basisOfDiagOthers;
	}

	public void setBasisOfDiagOthers(String basisOfDiagOthers) {
		this.basisOfDiagOthers = basisOfDiagOthers;
	}

	public String getTypeOfStroke() {
		return typeOfStroke;
	}

	public void setTypeOfStroke(String typeOfStroke) {
		this.typeOfStroke = typeOfStroke;
	}

	public String getToastCriteria() {
		return toastCriteria;
	}

	public void setToastCriteria(String toastCriteria) {
		this.toastCriteria = toastCriteria;
	}

	public String getHaemorrhagestroke() {
		return haemorrhagestroke;
	}

	public void setHaemorrhagestroke(String haemorrhagestroke) {
		this.haemorrhagestroke = haemorrhagestroke;
	}

	public String getTypeOfcircStroke() {
		return typeOfcircStroke;
	}

	public void setTypeOfcircStroke(String typeOfcircStroke) {
		this.typeOfcircStroke = typeOfcircStroke;
	}

	public String getFinalDiag() {
		return finalDiag;
	}

	public void setFinalDiag(String finalDiag) {
		this.finalDiag = finalDiag;
	}

	public String getFirstEver() {
		return firstEver;
	}

	public void setFirstEver(String firstEver) {
		this.firstEver = firstEver;
	}

	public String getTypeOfStroke1() {
		return typeOfStroke1;
	}

	public void setTypeOfStroke1(String typeOfStroke1) {
		this.typeOfStroke1 = typeOfStroke1;
	}

	public String getTerritoryAffected() {
		return territoryAffected;
	}

	public void setTerritoryAffected(String territoryAffected) {
		this.territoryAffected = territoryAffected;
	}

	public String getEtiology() {
		return etiology;
	}

	public void setEtiology(String etiology) {
		this.etiology = etiology;
	}

	public String getRiskFactorandMorbidities() {
		return riskFactorandMorbidities;
	}

	public void setRiskFactorandMorbidities(String riskFactorandMorbidities) {
		this.riskFactorandMorbidities = riskFactorandMorbidities;
	}

	public String getIcdDesc() {
		return icdDesc;
	}

	public void setIcdDesc(String icdDesc) {
		this.icdDesc = icdDesc;
	}

	public String getIcdCode() {
		return icdCode;
	}

	public void setIcdCode(String icdCode) {
		this.icdCode = icdCode;
	}

	

	public String getPrvNewly() {
		return prvNewly;
	}

	public void setPrvNewly(String prvNewly) {
		this.prvNewly = prvNewly;
	}

	public String getPrvTrasNewly() {
		return prvTrasNewly;
	}

	public void setPrvTrasNewly(String prvTrasNewly) {
		this.prvTrasNewly = prvTrasNewly;
	}

	public String getHyperNewly() {
		return hyperNewly;
	}

	public void setHyperNewly(String hyperNewly) {
		this.hyperNewly = hyperNewly;
	}

	public String getDiabNewly() {
		return diabNewly;
	}

	public void setDiabNewly(String diabNewly) {
		this.diabNewly = diabNewly;
	}

	public String getAtrialNewly() {
		return atrialNewly;
	}

	public void setAtrialNewly(String atrialNewly) {
		this.atrialNewly = atrialNewly;
	}

	public String getCarotidNewly() {
		return carotidNewly;
	}

	public void setCarotidNewly(String carotidNewly) {
		this.carotidNewly = carotidNewly;
	}

	public String getMyocNewly() {
		return myocNewly;
	}

	public void setMyocNewly(String myocNewly) {
		this.myocNewly = myocNewly;
	}

	public String getIschNewly() {
		return ischNewly;
	}

	public void setIschNewly(String ischNewly) {
		this.ischNewly = ischNewly;
	}

	public String getRehuNewly() {
		return rehuNewly;
	}

	public void setRehuNewly(String rehuNewly) {
		this.rehuNewly = rehuNewly;
	}

	public String getNonRehNewly() {
		return nonRehNewly;
	}

	public void setNonRehNewly(String nonRehNewly) {
		this.nonRehNewly = nonRehNewly;
	}

	public String getValveNewly() {
		return valveNewly;
	}

	public void setValveNewly(String valveNewly) {
		this.valveNewly = valveNewly;
	}

	public String getHeartNewly() {
		return heartNewly;
	}

	public void setHeartNewly(String heartNewly) {
		this.heartNewly = heartNewly;
	}

	public String getPripNewly() {
		return pripNewly;
	}

	public void setPripNewly(String pripNewly) {
		this.pripNewly = pripNewly;
	}

	public String getChronicNewly() {
		return chronicNewly;
	}

	public void setChronicNewly(String chronicNewly) {
		this.chronicNewly = chronicNewly;
	}

	public String getAnemiaNewly() {
		return anemiaNewly;
	}

	public void setAnemiaNewly(String anemiaNewly) {
		this.anemiaNewly = anemiaNewly;
	}

	public String getHypercNewly() {
		return hypercNewly;
	}

	public void setHypercNewly(String hypercNewly) {
		this.hypercNewly = hypercNewly;
	}

	public String getHyperhoNewly() {
		return hyperhoNewly;
	}

	public void setHyperhoNewly(String hyperhoNewly) {
		this.hyperhoNewly = hyperhoNewly;
	}

	

	public String getTherapy() {
		return therapy;
	}

	public void setTherapy(String therapy) {
		this.therapy = therapy;
	}

	public String getHiv() {
		return hiv;
	}

	public void setHiv(String hiv) {
		this.hiv = hiv;
	}

	@Column(name = "sickleCellDisease")
	private String sickleCellDisease;

	@Column(name = "cnsTB")
	private String cnsTB;

	@Column(name = "height")
	private String height;

	@Column(name = "weight")
	private String weight;

	@Column(name = "bmi")
	private String bmi;

	public String getPrevStroke() {
		return prevStroke;
	}

	public void setPrevStroke(String prevStroke) {
		this.prevStroke = prevStroke;
	}

	public String getPrevStrokeDura() {
		return prevStrokeDura;
	}

	public void setPrevStrokeDura(String prevStrokeDura) {
		this.prevStrokeDura = prevStrokeDura;
	}

	public String getPrvTransAtt() {
		return prvTransAtt;
	}

	public void setPrvTransAtt(String prvTransAtt) {
		this.prvTransAtt = prvTransAtt;
	}

	public String getPrvTransAttDur() {
		return prvTransAttDur;
	}

	public void setPrvTransAttDur(String prvTransAttDur) {
		this.prvTransAttDur = prvTransAttDur;
	}

	public String getHypertension() {
		return hypertension;
	}

	public void setHypertension(String hypertension) {
		this.hypertension = hypertension;
	}

	public String getHypertensionDur() {
		return hypertensionDur;
	}

	public void setHypertensionDur(String hypertensionDur) {
		this.hypertensionDur = hypertensionDur;
	}

	public String getDiabetMelli() {
		return diabetMelli;
	}

	public void setDiabetMelli(String diabetMelli) {
		this.diabetMelli = diabetMelli;
	}

	public String getDiabetMelliDur() {
		return diabetMelliDur;
	}

	public void setDiabetMelliDur(String diabetMelliDur) {
		this.diabetMelliDur = diabetMelliDur;
	}

	public String getFibrillation() {
		return fibrillation;
	}

	public void setFibrillation(String fibrillation) {
		this.fibrillation = fibrillation;
	}

	public String getFibrillationDur() {
		return fibrillationDur;
	}

	public void setFibrillationDur(String fibrillationDur) {
		this.fibrillationDur = fibrillationDur;
	}

	public String getStenosis() {
		return stenosis;
	}

	public void setStenosis(String stenosis) {
		this.stenosis = stenosis;
	}

	public String getStenosisDur() {
		return stenosisDur;
	}

	public void setStenosisDur(String stenosisDur) {
		this.stenosisDur = stenosisDur;
	}

	public String getInfarction() {
		return infarction;
	}

	public void setInfarction(String infarction) {
		this.infarction = infarction;
	}

	public String getInfarctionDur() {
		return infarctionDur;
	}

	public void setInfarctionDur(String infarctionDur) {
		this.infarctionDur = infarctionDur;
	}

	public String getHeartDisea() {
		return heartDisea;
	}

	public void setHeartDisea(String heartDisea) {
		this.heartDisea = heartDisea;
	}

	public String getHeartDiseaDur() {
		return heartDiseaDur;
	}

	public void setHeartDiseaDur(String heartDiseaDur) {
		this.heartDiseaDur = heartDiseaDur;
	}

	public String getRheumaticHearDise() {
		return rheumaticHearDise;
	}

	public void setRheumaticHearDise(String rheumaticHearDise) {
		this.rheumaticHearDise = rheumaticHearDise;
	}

	public String getRheumaticHearDiseDur() {
		return rheumaticHearDiseDur;
	}

	public void setRheumaticHearDiseDur(String rheumaticHearDiseDur) {
		this.rheumaticHearDiseDur = rheumaticHearDiseDur;
	}

	public String getNonRheumaHeaDise() {
		return nonRheumaHeaDise;
	}

	public void setNonRheumaHeaDise(String nonRheumaHeaDise) {
		this.nonRheumaHeaDise = nonRheumaHeaDise;
	}

	public String getNonRheumaHeaDiseDur() {
		return nonRheumaHeaDiseDur;
	}

	public void setNonRheumaHeaDiseDur(String nonRheumaHeaDiseDur) {
		this.nonRheumaHeaDiseDur = nonRheumaHeaDiseDur;
	}

	public String getProsthesis() {
		return prosthesis;
	}

	public void setProsthesis(String prosthesis) {
		this.prosthesis = prosthesis;
	}

	public String getProsthesisDur() {
		return prosthesisDur;
	}

	public void setProsthesisDur(String prosthesisDur) {
		this.prosthesisDur = prosthesisDur;
	}

	public String getHeartFailure() {
		return heartFailure;
	}

	public void setHeartFailure(String heartFailure) {
		this.heartFailure = heartFailure;
	}

	public String getHeartFailureDur() {
		return heartFailureDur;
	}

	public void setHeartFailureDur(String heartFailureDur) {
		this.heartFailureDur = heartFailureDur;
	}

	public String getArterialDisea() {
		return arterialDisea;
	}

	public void setArterialDisea(String arterialDisea) {
		this.arterialDisea = arterialDisea;
	}

	public String getArterialDiseaDur() {
		return arterialDiseaDur;
	}

	public void setArterialDiseaDur(String arterialDiseaDur) {
		this.arterialDiseaDur = arterialDiseaDur;
	}

	public String getKidneyDise() {
		return kidneyDise;
	}

	public void setKidneyDise(String kidneyDise) {
		this.kidneyDise = kidneyDise;
	}

	public String getKidneyDiseDur() {
		return kidneyDiseDur;
	}

	public void setKidneyDiseDur(String kidneyDiseDur) {
		this.kidneyDiseDur = kidneyDiseDur;
	}

	public String getAnemia() {
		return anemia;
	}

	public void setAnemia(String anemia) {
		this.anemia = anemia;
	}

	public String getAnemiaDur() {
		return anemiaDur;
	}

	public void setAnemiaDur(String anemiaDur) {
		this.anemiaDur = anemiaDur;
	}

	public String getHypercholesterolemia() {
		return hypercholesterolemia;
	}

	public void setHypercholesterolemia(String hypercholesterolemia) {
		this.hypercholesterolemia = hypercholesterolemia;
	}

	public String getHypercholesterolemiaDur() {
		return hypercholesterolemiaDur;
	}

	public void setHypercholesterolemiaDur(String hypercholesterolemiaDur) {
		this.hypercholesterolemiaDur = hypercholesterolemiaDur;
	}

	public String getHyperHomocysteinemia() {
		return hyperHomocysteinemia;
	}

	public void setHyperHomocysteinemia(String hyperHomocysteinemia) {
		this.hyperHomocysteinemia = hyperHomocysteinemia;
	}

	public String getHyperHomocysteinemiaDur() {
		return hyperHomocysteinemiaDur;
	}

	public void setHyperHomocysteinemiaDur(String hyperHomocysteinemiaDur) {
		this.hyperHomocysteinemiaDur = hyperHomocysteinemiaDur;
	}

	public String getCo_morbidOthers1() {
		return co_morbidOthers1;
	}

	public void setCo_morbidOthers1(String co_morbidOthers1) {
		this.co_morbidOthers1 = co_morbidOthers1;
	}

	public String getCo_morbidOthers2() {
		return co_morbidOthers2;
	}

	public void setCo_morbidOthers2(String co_morbidOthers2) {
		this.co_morbidOthers2 = co_morbidOthers2;
	}

	public String getCo_morbidOthers3() {
		return co_morbidOthers3;
	}

	public void setCo_morbidOthers3(String co_morbidOthers3) {
		this.co_morbidOthers3 = co_morbidOthers3;
	}

	public String getFamilyHisOfStrok() {
		return familyHisOfStrok;
	}

	public void setFamilyHisOfStrok(String familyHisOfStrok) {
		this.familyHisOfStrok = familyHisOfStrok;
	}

	public String getTobaccoSmok() {
		return tobaccoSmok;
	}

	public void setTobaccoSmok(String tobaccoSmok) {
		this.tobaccoSmok = tobaccoSmok;
	}

	public String getSmkolessTobacco() {
		return smkolessTobacco;
	}

	public void setSmkolessTobacco(String smkolessTobacco) {
		this.smkolessTobacco = smkolessTobacco;
	}

	public String getAlcoholUse() {
		return alcoholUse;
	}

	public void setAlcoholUse(String alcoholUse) {
		this.alcoholUse = alcoholUse;
	}

	public String getDrugAbuse() {
		return drugAbuse;
	}

	public void setDrugAbuse(String drugAbuse) {
		this.drugAbuse = drugAbuse;
	}

	public String getDeliveryORtermination() {
		return deliveryORtermination;
	}

	public void setDeliveryORtermination(String deliveryORtermination) {
		this.deliveryORtermination = deliveryORtermination;
	}

	public String getMigraine() {
		return migraine;
	}

	public void setMigraine(String migraine) {
		this.migraine = migraine;
	}

	public String getSickleCellDisease() {
		return sickleCellDisease;
	}

	public void setSickleCellDisease(String sickleCellDisease) {
		this.sickleCellDisease = sickleCellDisease;
	}

	public String getCnsTB() {
		return cnsTB;
	}

	public void setCnsTB(String cnsTB) {
		this.cnsTB = cnsTB;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getBmi() {
		return bmi;
	}

	public void setBmi(String bmi) {
		this.bmi = bmi;
	}

	public String getRiskCondOthers() {
		return riskCondOthers;
	}

	public void setRiskCondOthers(String riskCondOthers) {
		this.riskCondOthers = riskCondOthers;
	}

	

	public String getAnti_Aspirin() {
		return anti_Aspirin;
	}

	public void setAnti_Aspirin(String anti_Aspirin) {
		this.anti_Aspirin = anti_Aspirin;
	}

	public String getAntico_Heprin() {
		return antico_Heprin;
	}

	public void setAntico_Heprin(String antico_Heprin) {
		this.antico_Heprin = antico_Heprin;
	}

	public String getThrom_IVtPA() {
		return throm_IVtPA;
	}

	public void setThrom_IVtPA(String throm_IVtPA) {
		this.throm_IVtPA = throm_IVtPA;
	}

	public String getAnti_Dipyri() {
		return anti_Dipyri;
	}

	public void setAnti_Dipyri(String anti_Dipyri) {
		this.anti_Dipyri = anti_Dipyri;
	}

	public String getAntico_Full() {
		return antico_Full;
	}

	public void setAntico_Full(String antico_Full) {
		this.antico_Full = antico_Full;
	}

	public String getThrom_IAtPA() {
		return throm_IAtPA;
	}

	public void setThrom_IAtPA(String throm_IAtPA) {
		this.throm_IAtPA = throm_IAtPA;
	}

	public String getAnti_Clopid() {
		return anti_Clopid;
	}

	public void setAnti_Clopid(String anti_Clopid) {
		this.anti_Clopid = anti_Clopid;
	}

	public String getAntico_Warfarin() {
		return antico_Warfarin;
	}

	public void setAntico_Warfarin(String antico_Warfarin) {
		this.antico_Warfarin = antico_Warfarin;
	}

	public String getThrom_Mechan() {
		return throm_Mechan;
	}

	public void setThrom_Mechan(String throm_Mechan) {
		this.throm_Mechan = throm_Mechan;
	}

	public String getAntico_NewOral() {
		return antico_NewOral;
	}

	public void setAntico_NewOral(String antico_NewOral) {
		this.antico_NewOral = antico_NewOral;
	}

	

	public String getThrombolyticTraetmentGiv() {
		return thrombolyticTraetmentGiv;
	}

	public void setThrombolyticTraetmentGiv(String thrombolyticTraetmentGiv) {
		this.thrombolyticTraetmentGiv = thrombolyticTraetmentGiv;
	}

	

	public String getAntiplateletsDur() {
		return antiplateletsDur;
	}

	public void setAntiplateletsDur(String antiplateletsDur) {
		this.antiplateletsDur = antiplateletsDur;
	}

	public String getAntiplateletsSpe() {
		return antiplateletsSpe;
	}

	public void setAntiplateletsSpe(String antiplateletsSpe) {
		this.antiplateletsSpe = antiplateletsSpe;
	}

	public String getHypertensiveDrugs() {
		return hypertensiveDrugs;
	}

	public void setHypertensiveDrugs(String hypertensiveDrugs) {
		this.hypertensiveDrugs = hypertensiveDrugs;
	}

	public String getHypertensiveDrugsDur() {
		return hypertensiveDrugsDur;
	}

	public void setHypertensiveDrugsDur(String hypertensiveDrugsDur) {
		this.hypertensiveDrugsDur = hypertensiveDrugsDur;
	}

	public String getLoweringDrugs() {
		return loweringDrugs;
	}

	public void setLoweringDrugs(String loweringDrugs) {
		this.loweringDrugs = loweringDrugs;
	}

	public String getLoweringDrugsDur() {
		return loweringDrugsDur;
	}

	public void setLoweringDrugsDur(String loweringDrugsDur) {
		this.loweringDrugsDur = loweringDrugsDur;
	}

	public String getDiabeticAgents() {
		return diabeticAgents;
	}

	public void setDiabeticAgents(String diabeticAgents) {
		this.diabeticAgents = diabeticAgents;
	}

	public String getDiabeticAgentsDur() {
		return diabeticAgentsDur;
	}

	public void setDiabeticAgentsDur(String diabeticAgentsDur) {
		this.diabeticAgentsDur = diabeticAgentsDur;
	}

	public String getTreatmentOthers() {
		return treatmentOthers;
	}

	public void setTreatmentOthers(String treatmentOthers) {
		this.treatmentOthers = treatmentOthers;
	}

	public String getMedicationsTaken() {
		return medicationsTaken;
	}

	public void setMedicationsTaken(String medicationsTaken) {
		this.medicationsTaken = medicationsTaken;
	}

	public String getAntiplateletOth() {
		return antiplateletOth;
	}

	public void setAntiplateletOth(String antiplateletOth) {
		this.antiplateletOth = antiplateletOth;
	}

	public String getAnticoagulantOth() {
		return anticoagulantOth;
	}

	public void setAnticoagulantOth(String anticoagulantOth) {
		this.anticoagulantOth = anticoagulantOth;
	}

	public String getThrombolyticTreatmentOth() {
		return thrombolyticTreatmentOth;
	}

	public void setThrombolyticTreatmentOth(String thrombolyticTreatmentOth) {
		this.thrombolyticTreatmentOth = thrombolyticTreatmentOth;
	}

	public String getAntidiabetics() {
		return antidiabetics;
	}

	public void setAntidiabetics(String antidiabetics) {
		this.antidiabetics = antidiabetics;
	}

	public String getAntiHypertensive() {
		return antiHypertensive;
	}

	public void setAntiHypertensive(String antiHypertensive) {
		this.antiHypertensive = antiHypertensive;
	}

	public String getLipidLowering() {
		return lipidLowering;
	}

	public void setLipidLowering(String lipidLowering) {
		this.lipidLowering = lipidLowering;
	}

	public String getThromIVtPA() {
		return thromIVtPA;
	}

	public void setThromIVtPA(String thromIVtPA) {
		this.thromIVtPA = thromIVtPA;
	}

	public String getThromIAtPA() {
		return thromIAtPA;
	}

	public void setThromIAtPA(String thromIAtPA) {
		this.thromIAtPA = thromIAtPA;
	}

	public String getThromMechan() {
		return thromMechan;
	}

	public void setThromMechan(String thromMechan) {
		this.thromMechan = thromMechan;
	}

	public String getThromUnk() {
		return thromUnk;
	}

	public void setThromUnk(String thromUnk) {
		this.thromUnk = thromUnk;
	}

	public String getThrombolyticTraetmentGivOth() {
		return thrombolyticTraetmentGivOth;
	}

	public void setThrombolyticTraetmentGivOth(String thrombolyticTraetmentGivOth) {
		this.thrombolyticTraetmentGivOth = thrombolyticTraetmentGivOth;
	}

	public String getThrombolyticSymDate() {
		return thrombolyticSymDate;
	}

	public void setThrombolyticSymDate(String thrombolyticSymDate) {
		this.thrombolyticSymDate = thrombolyticSymDate;
	}

	public String getThrombolyticSymTime() {
		return thrombolyticSymTime;
	}

	public void setThrombolyticSymTime(String thrombolyticSymTime) {
		this.thrombolyticSymTime = thrombolyticSymTime;
	}

	public String getDelayInArrival() {
		return delayInArrival;
	}

	public void setDelayInArrival(String delayInArrival) {
		this.delayInArrival = delayInArrival;
	}

	public String getDelayInImag() {
		return delayInImag;
	}

	public void setDelayInImag(String delayInImag) {
		this.delayInImag = delayInImag;
	}

	public String getDiabeticsMellitus() {
		return diabeticsMellitus;
	}

	public void setDiabeticsMellitus(String diabeticsMellitus) {
		this.diabeticsMellitus = diabeticsMellitus;
	}

	public String getOnsetOfSymp() {
		return onsetOfSymp;
	}

	public void setOnsetOfSymp(String onsetOfSymp) {
		this.onsetOfSymp = onsetOfSymp;
	}

	public String getSbp() {
		return sbp;
	}

	public void setSbp(String sbp) {
		this.sbp = sbp;
	}

	public String getGlucose() {
		return glucose;
	}

	public void setGlucose(String glucose) {
		this.glucose = glucose;
	}

	public String getStrokeSeverity() {
		return strokeSeverity;
	}

	public void setStrokeSeverity(String strokeSeverity) {
		this.strokeSeverity = strokeSeverity;
	}

	public String getSuspichaemorrhage() {
		return suspichaemorrhage;
	}

	public void setSuspichaemorrhage(String suspichaemorrhage) {
		this.suspichaemorrhage = suspichaemorrhage;
	}

	public String getMcaTerritory() {
		return mcaTerritory;
	}

	public void setMcaTerritory(String mcaTerritory) {
		this.mcaTerritory = mcaTerritory;
	}

	public String getSeizure() {
		return seizure;
	}

	public void setSeizure(String seizure) {
		this.seizure = seizure;
	}

	public String getSurgery_trauma() {
		return surgery_trauma;
	}

	public void setSurgery_trauma(String surgery_trauma) {
		this.surgery_trauma = surgery_trauma;
	}

	public String getIntracranial() {
		return intracranial;
	}

	public void setIntracranial(String intracranial) {
		this.intracranial = intracranial;
	}

	public String getHistoryOfintracranial() {
		return historyOfintracranial;
	}

	public void setHistoryOfintracranial(String historyOfintracranial) {
		this.historyOfintracranial = historyOfintracranial;
	}

	public String getInternalBleeding() {
		return internalBleeding;
	}

	public void setInternalBleeding(String internalBleeding) {
		this.internalBleeding = internalBleeding;
	}

	public String getPlatelets() {
		return platelets;
	}

	public void setPlatelets(String platelets) {
		this.platelets = platelets;
	}

	public String getLeftHeartthrombus() {
		return leftHeartthrombus;
	}

	public void setLeftHeartthrombus(String leftHeartthrombus) {
		this.leftHeartthrombus = leftHeartthrombus;
	}

	public String getIncreasedBleeding() {
		return increasedBleeding;
	}

	public void setIncreasedBleeding(String increasedBleeding) {
		this.increasedBleeding = increasedBleeding;
	}



	public String getSevereComorbid() {
		return severeComorbid;
	}

	public void setSevereComorbid(String severeComorbid) {
		this.severeComorbid = severeComorbid;
	}

	public String getStrokeRapidly() {
		return strokeRapidly;
	}

	public void setStrokeRapidly(String strokeRapidly) {
		this.strokeRapidly = strokeRapidly;
	}

	public String getMediNotAvai() {
		return mediNotAvai;
	}

	public void setMediNotAvai(String mediNotAvai) {
		this.mediNotAvai = mediNotAvai;
	}

	public String getCouldNotAfford() {
		return couldNotAfford;
	}

	public void setCouldNotAfford(String couldNotAfford) {
		this.couldNotAfford = couldNotAfford;
	}

	

	public String getAfter48hr() {
		return after48hr;
	}

	public void setAfter48hr(String after48hr) {
		this.after48hr = after48hr;
	}

	

	public String getAntipW24hr() {
		return antipW24hr;
	}

	public void setAntipW24hr(String antipW24hr) {
		this.antipW24hr = antipW24hr;
	}

	public String getAntip24hr() {
		return antip24hr;
	}

	public void setAntip24hr(String antip24hr) {
		this.antip24hr = antip24hr;
	}

	public String getAntipA48hr() {
		return antipA48hr;
	}

	public void setAntipA48hr(String antipA48hr) {
		this.antipA48hr = antipA48hr;
	}

	public String getAnticW24hr() {
		return anticW24hr;
	}

	public void setAnticW24hr(String anticW24hr) {
		this.anticW24hr = anticW24hr;
	}

	public String getAntic24hr() {
		return antic24hr;
	}

	public void setAntic24hr(String antic24hr) {
		this.antic24hr = antic24hr;
	}

	public String getAnticA48hr() {
		return anticA48hr;
	}

	public void setAnticA48hr(String anticA48hr) {
		this.anticA48hr = anticA48hr;
	}

	public String getHyperW24hr() {
		return hyperW24hr;
	}

	public void setHyperW24hr(String hyperW24hr) {
		this.hyperW24hr = hyperW24hr;
	}

	public String getHyper24hr() {
		return hyper24hr;
	}

	public void setHyper24hr(String hyper24hr) {
		this.hyper24hr = hyper24hr;
	}

	public String getHyperA48hr() {
		return hyperA48hr;
	}

	public void setHyperA48hr(String hyperA48hr) {
		this.hyperA48hr = hyperA48hr;
	}

	public String getLowW24hr() {
		return lowW24hr;
	}

	public void setLowW24hr(String lowW24hr) {
		this.lowW24hr = lowW24hr;
	}

	public String getLow24hr() {
		return low24hr;
	}

	public void setLow24hr(String low24hr) {
		this.low24hr = low24hr;
	}

	public String getLowA48hr() {
		return lowA48hr;
	}

	public void setLowA48hr(String lowA48hr) {
		this.lowA48hr = lowA48hr;
	}

	public String getDiabW24hr() {
		return diabW24hr;
	}

	public void setDiabW24hr(String diabW24hr) {
		this.diabW24hr = diabW24hr;
	}

	public String getDiab24hr() {
		return diab24hr;
	}

	public void setDiab24hr(String diab24hr) {
		this.diab24hr = diab24hr;
	}

	public String getDiabA48hr() {
		return diabA48hr;
	}

	public void setDiabA48hr(String diabA48hr) {
		this.diabA48hr = diabA48hr;
	}



	public String getHemicIntTime() {
		return hemicIntTime;
	}

	public void setHemicIntTime(String hemicIntTime) {
		this.hemicIntTime = hemicIntTime;
	}

	public String getCranIntTime() {
		return cranIntTime;
	}

	public void setCranIntTime(String cranIntTime) {
		this.cranIntTime = cranIntTime;
	}

	public String getHematIntTime() {
		return hematIntTime;
	}

	public void setHematIntTime(String hematIntTime) {
		this.hematIntTime = hematIntTime;
	}

	public String getCarotidIntTime() {
		return carotidIntTime;
	}

	public void setCarotidIntTime(String carotidIntTime) {
		this.carotidIntTime = carotidIntTime;
	}

	public String getCarotidSteIntTime() {
		return carotidSteIntTime;
	}

	public void setCarotidSteIntTime(String carotidSteIntTime) {
		this.carotidSteIntTime = carotidSteIntTime;
	}

	public String getEndovIntTime() {
		return endovIntTime;
	}

	public void setEndovIntTime(String endovIntTime) {
		this.endovIntTime = endovIntTime;
	}

	
	public String getSwalloExp() {
		return swalloExp;
	}

	public void setSwalloExp(String swalloExp) {
		this.swalloExp = swalloExp;
	}

	public String getOccupExp() {
		return occupExp;
	}

	public void setOccupExp(String occupExp) {
		this.occupExp = occupExp;
	}

	public String getPhysioExp() {
		return physioExp;
	}

	public void setPhysioExp(String physioExp) {
		this.physioExp = physioExp;
	}

	public String getSpeecExp() {
		return speecExp;
	}

	public void setSpeecExp(String speecExp) {
		this.speecExp = speecExp;
	}

	public String getBladerExp() {
		return bladerExp;
	}

	public void setBladerExp(String bladerExp) {
		this.bladerExp = bladerExp;
	}

	public String getDeepVExp() {
		return deepVExp;
	}

	public void setDeepVExp(String deepVExp) {
		this.deepVExp = deepVExp;
	}

	

	public String getCtDoneAfter24hr() {
		return ctDoneAfter24hr;
	}

	public void setCtDoneAfter24hr(String ctDoneAfter24hr) {
		this.ctDoneAfter24hr = ctDoneAfter24hr;
	}

	public String getCompThrNone() {
		return compThrNone;
	}

	public void setCompThrNone(String compThrNone) {
		this.compThrNone = compThrNone;
	}

	public String getCompThrAsymp() {
		return compThrAsymp;
	}

	public void setCompThrAsymp(String compThrAsymp) {
		this.compThrAsymp = compThrAsymp;
	}

	public String getCompThrSymptom() {
		return compThrSymptom;
	}

	public void setCompThrSymptom(String compThrSymptom) {
		this.compThrSymptom = compThrSymptom;
	}

	public String getCompThrLifeThre() {
		return compThrLifeThre;
	}

	public void setCompThrLifeThre(String compThrLifeThre) {
		this.compThrLifeThre = compThrLifeThre;
	}

	public String getSeriouscompli() {
		return seriouscompli;
	}

	public void setSeriouscompli(String seriouscompli) {
		this.seriouscompli = seriouscompli;
	}

	public String getAntiplatelets1() {
		return antiplatelets1;
	}

	public void setAntiplatelets1(String antiplatelets1) {
		this.antiplatelets1 = antiplatelets1;
	}

	public String getAntiplatelets1Name() {
		return antiplatelets1Name;
	}

	public void setAntiplatelets1Name(String antiplatelets1Name) {
		this.antiplatelets1Name = antiplatelets1Name;
	}

	public String getAnti_coagulants() {
		return anti_coagulants;
	}

	public void setAnti_coagulants(String anti_coagulants) {
		this.anti_coagulants = anti_coagulants;
	}

	public String getHypertdrugs() {
		return hypertdrugs;
	}

	public void setHypertdrugs(String hypertdrugs) {
		this.hypertdrugs = hypertdrugs;
	}

	public String getLoweringDrugs1() {
		return loweringDrugs1;
	}

	public void setLoweringDrugs1(String loweringDrugs1) {
		this.loweringDrugs1 = loweringDrugs1;
	}

	public String getDiabagents() {
		return diabagents;
	}

	public void setDiabagents(String diabagents) {
		this.diabagents = diabagents;
	}

	public String getHemicraniectomy() {
		return hemicraniectomy;
	}

	public void setHemicraniectomy(String hemicraniectomy) {
		this.hemicraniectomy = hemicraniectomy;
	}

	public String getSuboccipital() {
		return suboccipital;
	}

	public void setSuboccipital(String suboccipital) {
		this.suboccipital = suboccipital;
	}

	public String getHematomaEve() {
		return hematomaEve;
	}

	public void setHematomaEve(String hematomaEve) {
		this.hematomaEve = hematomaEve;
	}

	public String getEndarterectomy() {
		return endarterectomy;
	}

	public void setEndarterectomy(String endarterectomy) {
		this.endarterectomy = endarterectomy;
	}

	public String getCarotidStenting() {
		return carotidStenting;
	}

	public void setCarotidStenting(String carotidStenting) {
		this.carotidStenting = carotidStenting;
	}

	public String getEndovascular() {
		return endovascular;
	}

	public void setEndovascular(String endovascular) {
		this.endovascular = endovascular;
	}

	public String getAnyOthers() {
		return anyOthers;
	}

	public void setAnyOthers(String anyOthers) {
		this.anyOthers = anyOthers;
	}

	public String getSwallowBeenTested() {
		return swallowBeenTested;
	}

	public void setSwallowBeenTested(String swallowBeenTested) {
		this.swallowBeenTested = swallowBeenTested;
	}

	public String getDysphagia() {
		return dysphagia;
	}

	public void setDysphagia(String dysphagia) {
		this.dysphagia = dysphagia;
	}

	public String getNasogastricTube() {
		return nasogastricTube;
	}

	public void setNasogastricTube(String nasogastricTube) {
		this.nasogastricTube = nasogastricTube;
	}

	public String getSwallowManag() {
		return swallowManag;
	}

	public void setSwallowManag(String swallowManag) {
		this.swallowManag = swallowManag;
	}

	public String getOccupatTherapy() {
		return occupatTherapy;
	}

	public void setOccupatTherapy(String occupatTherapy) {
		this.occupatTherapy = occupatTherapy;
	}

	public String getPhysiotherap() {
		return physiotherap;
	}

	public void setPhysiotherap(String physiotherap) {
		this.physiotherap = physiotherap;
	}

	public String getSpeechTherapy() {
		return speechTherapy;
	}

	public void setSpeechTherapy(String speechTherapy) {
		this.speechTherapy = speechTherapy;
	}

	public String getBladderCare() {
		return bladderCare;
	}

	public void setBladderCare(String bladderCare) {
		this.bladderCare = bladderCare;
	}

	public String getProphylaxis() {
		return prophylaxis;
	}

	public void setProphylaxis(String prophylaxis) {
		this.prophylaxis = prophylaxis;
	}

	public String getNewStrokeEvent() {
		return newStrokeEvent;
	}

	public void setNewStrokeEvent(String newStrokeEvent) {
		this.newStrokeEvent = newStrokeEvent;
	}

	public String getIcdDesc1() {
		return icdDesc1;
	}

	public void setIcdDesc1(String icdDesc1) {
		this.icdDesc1 = icdDesc1;
	}

	public String getDeterNewStroke() {
		return deterNewStroke;
	}

	public void setDeterNewStroke(String deterNewStroke) {
		this.deterNewStroke = deterNewStroke;
	}

	public String getDeterComplic() {
		return deterComplic;
	}

	public void setDeterComplic(String deterComplic) {
		this.deterComplic = deterComplic;
	}

	public String getDeterNo() {
		return deterNo;
	}

	public void setDeterNo(String deterNo) {
		this.deterNo = deterNo;
	}

	public String getTypeOfstrIsch() {
		return typeOfstrIsch;
	}

	public void setTypeOfstrIsch(String typeOfstrIsch) {
		this.typeOfstrIsch = typeOfstrIsch;
	}

	public String getTypeOfstrIntrac() {
		return typeOfstrIntrac;
	}

	public void setTypeOfstrIntrac(String typeOfstrIntrac) {
		this.typeOfstrIntrac = typeOfstrIntrac;
	}

	public String getTypeOfstrSubar() {
		return typeOfstrSubar;
	}

	public void setTypeOfstrSubar(String typeOfstrSubar) {
		this.typeOfstrSubar = typeOfstrSubar;
	}

	public String getTypeOfstrVenous() {
		return typeOfstrVenous;
	}

	public void setTypeOfstrVenous(String typeOfstrVenous) {
		this.typeOfstrVenous = typeOfstrVenous;
	}

	public String getIcdCode1() {
		return icdCode1;
	}

	public void setIcdCode1(String icdCode1) {
		this.icdCode1 = icdCode1;
	}

	public String getDateOfnewStroke() {
		return dateOfnewStroke;
	}

	public void setDateOfnewStroke(String dateOfnewStroke) {
		this.dateOfnewStroke = dateOfnewStroke;
	}

	public String getAntithrombotic() {
		return antithrombotic;
	}

	public void setAntithrombotic(String antithrombotic) {
		this.antithrombotic = antithrombotic;
	}

	public String getCurrentStroke() {
		return currentStroke;
	}

	public void setCurrentStroke(String currentStroke) {
		this.currentStroke = currentStroke;
	}

	public String getCardicEvent() {
		return cardicEvent;
	}

	public void setCardicEvent(String cardicEvent) {
		this.cardicEvent = cardicEvent;
	}

	public String getSeizures() {
		return seizures;
	}

	public void setSeizures(String seizures) {
		this.seizures = seizures;
	}

	public String getPneumonia() {
		return pneumonia;
	}

	public void setPneumonia(String pneumonia) {
		this.pneumonia = pneumonia;
	}

	public String getUrinaryTracInfe() {
		return urinaryTracInfe;
	}

	public void setUrinaryTracInfe(String urinaryTracInfe) {
		this.urinaryTracInfe = urinaryTracInfe;
	}

	public String getDecubitusUlcer() {
		return decubitusUlcer;
	}

	public void setDecubitusUlcer(String decubitusUlcer) {
		this.decubitusUlcer = decubitusUlcer;
	}

	public String getVenousnThrom() {
		return venousnThrom;
	}

	public void setVenousnThrom(String venousnThrom) {
		this.venousnThrom = venousnThrom;
	}

	public String getPulmonary() {
		return pulmonary;
	}

	public void setPulmonary(String pulmonary) {
		this.pulmonary = pulmonary;
	}

	public String getFall() {
		return fall;
	}

	public void setFall(String fall) {
		this.fall = fall;
	}

	public String getRenalFailure() {
		return renalFailure;
	}

	public void setRenalFailure(String renalFailure) {
		this.renalFailure = renalFailure;
	}

	public String getStrokeDepression() {
		return strokeDepression;
	}

	public void setStrokeDepression(String strokeDepression) {
		this.strokeDepression = strokeDepression;
	}

	public String getPsychiatricIllness() {
		return psychiatricIllness;
	}

	public void setPsychiatricIllness(String psychiatricIllness) {
		this.psychiatricIllness = psychiatricIllness;
	}

	public String getComduringhospOth() {
		return comduringhospOth;
	}

	public void setComduringhospOth(String comduringhospOth) {
		this.comduringhospOth = comduringhospOth;
	}

	public String getDateOfDisch() {
		return dateOfDisch;
	}

	public void setDateOfDisch(String dateOfDisch) {
		this.dateOfDisch = dateOfDisch;
	}

	public String getPatientAdmitted() {
		return patientAdmitted;
	}

	public void setPatientAdmitted(String patientAdmitted) {
		this.patientAdmitted = patientAdmitted;
	}

	public String getDischarge() {
		return discharge;
	}

	public void setDischarge(String discharge) {
		this.discharge = discharge;
	}

	

	public String getDateOfDeath1() {
		return dateOfDeath1;
	}

	public void setDateOfDeath1(String dateOfDeath1) {
		this.dateOfDeath1 = dateOfDeath1;
	}

	public String getDateOfDeath2() {
		return dateOfDeath2;
	}

	public void setDateOfDeath2(String dateOfDeath2) {
		this.dateOfDeath2 = dateOfDeath2;
	}

	public String getDeathCertf1() {
		return deathCertf1;
	}

	public void setDeathCertf1(String deathCertf1) {
		this.deathCertf1 = deathCertf1;
	}

	public String getDeathCertf2() {
		return deathCertf2;
	}

	public void setDeathCertf2(String deathCertf2) {
		this.deathCertf2 = deathCertf2;
	}

	public String getMedicaRec1() {
		return medicaRec1;
	}

	public void setMedicaRec1(String medicaRec1) {
		this.medicaRec1 = medicaRec1;
	}

	public String getMedicaRec2() {
		return medicaRec2;
	}

	public void setMedicaRec2(String medicaRec2) {
		this.medicaRec2 = medicaRec2;
	}

	public String getDateOfComple() {
		return dateOfComple;
	}

	public void setDateOfComple(String dateOfComple) {
		this.dateOfComple = dateOfComple;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	public String getVerbalAutopsy1() {
		return verbalAutopsy1;
	}

	public void setVerbalAutopsy1(String verbalAutopsy1) {
		this.verbalAutopsy1 = verbalAutopsy1;
	}

	public String getVerbalAutopsy2() {
		return verbalAutopsy2;
	}

	public void setVerbalAutopsy2(String verbalAutopsy2) {
		this.verbalAutopsy2 = verbalAutopsy2;
	}

	public String getNotAvail1() {
		return notAvail1;
	}

	public void setNotAvail1(String notAvail1) {
		this.notAvail1 = notAvail1;
	}

	public String getNotAvail2() {
		return notAvail2;
	}

	public void setNotAvail2(String notAvail2) {
		this.notAvail2 = notAvail2;
	}

	public String getUnknown1() {
		return unknown1;
	}

	public void setUnknown1(String unknown1) {
		this.unknown1 = unknown1;
	}

	public String getUnkown2() {
		return unkown2;
	}

	public void setUnkown2(String unkown2) {
		this.unkown2 = unkown2;
	}

	public String getRelatedStroke1() {
		return relatedStroke1;
	}

	public void setRelatedStroke1(String relatedStroke1) {
		this.relatedStroke1 = relatedStroke1;
	}

	public String getRelatedStroke2() {
		return relatedStroke2;
	}

	public void setRelatedStroke2(String relatedStroke2) {
		this.relatedStroke2 = relatedStroke2;
	}

	public String getNotRelatedStroke1() {
		return notRelatedStroke1;
	}

	public void setNotRelatedStroke1(String notRelatedStroke1) {
		this.notRelatedStroke1 = notRelatedStroke1;
	}

	public String getNotRelatedStroke2() {
		return notRelatedStroke2;
	}

	public void setNotRelatedStroke2(String notRelatedStroke2) {
		this.notRelatedStroke2 = notRelatedStroke2;
	}

	public String getCasueOfDeathothers1() {
		return casueOfDeathothers1;
	}

	public void setCasueOfDeathothers1(String casueOfDeathothers1) {
		this.casueOfDeathothers1 = casueOfDeathothers1;
	}

	public String getCasueOfDeathothers2() {
		return casueOfDeathothers2;
	}

	public void setCasueOfDeathothers2(String casueOfDeathothers2) {
		this.casueOfDeathothers2 = casueOfDeathothers2;
	}

	public String getCasueOfDeathUnk1() {
		return casueOfDeathUnk1;
	}

	public void setCasueOfDeathUnk1(String casueOfDeathUnk1) {
		this.casueOfDeathUnk1 = casueOfDeathUnk1;
	}

	public String getCasueOfDeathUnk2() {
		return casueOfDeathUnk2;
	}

	public void setCasueOfDeathUnk2(String casueOfDeathUnk2) {
		this.casueOfDeathUnk2 = casueOfDeathUnk2;
	}

	public String getImmediate1() {
		return immediate1;
	}

	public void setImmediate1(String immediate1) {
		this.immediate1 = immediate1;
	}

	public String getImmediate2() {
		return immediate2;
	}

	public void setImmediate2(String immediate2) {
		this.immediate2 = immediate2;
	}

	public String getAntecedentCause1() {
		return antecedentCause1;
	}

	public void setAntecedentCause1(String antecedentCause1) {
		this.antecedentCause1 = antecedentCause1;
	}

	public String getAntecedentCause2() {
		return antecedentCause2;
	}

	public void setAntecedentCause2(String antecedentCause2) {
		this.antecedentCause2 = antecedentCause2;
	}

	public String getOtherContributing1() {
		return otherContributing1;
	}

	public void setOtherContributing1(String otherContributing1) {
		this.otherContributing1 = otherContributing1;
	}

	public String getOtherContributing2() {
		return otherContributing2;
	}

	public void setOtherContributing2(String otherContributing2) {
		this.otherContributing2 = otherContributing2;
	}

	public String getIncdRegnum() {
		return incdRegnum;
	}

	public void setIncdRegnum(String incdRegnum) {
		this.incdRegnum = incdRegnum;
	}

	public String getNameOFPerson() {
		return nameOFPerson;
	}

	public void setNameOFPerson(String nameOFPerson) {
		this.nameOFPerson = nameOFPerson;
	}

	
	public String getHemogl() {
		return hemogl;
	}

	public void setHemogl(String hemogl) {
		this.hemogl = hemogl;
	}

	public String getHemogl1() {
		return hemogl1;
	}

	public void setHemogl1(String hemogl1) {
		this.hemogl1 = hemogl1;
	}
	
	
	

	public String getHemogl_radio() {
		return hemogl_radio;
	}

	public void setHemogl_radio(String hemogl_radio) {
		this.hemogl_radio = hemogl_radio;
	}

	public String getOthersforRecThrom() {
		return othersforRecThrom;
	}

	public void setOthersforRecThrom(String othersforRecThrom) {
		this.othersforRecThrom = othersforRecThrom;
	}

	

	public String getFuncStatPatDoesn() {
		return funcStatPatDoesn;
	}

	public void setFuncStatPatDoesn(String funcStatPatDoesn) {
		this.funcStatPatDoesn = funcStatPatDoesn;
	}

	public String getFuncStatPatAble() {
		return funcStatPatAble;
	}

	public void setFuncStatPatAble(String funcStatPatAble) {
		this.funcStatPatAble = funcStatPatAble;
	}

	public String getFuncStatPatCan() {
		return funcStatPatCan;
	}

	public void setFuncStatPatCan(String funcStatPatCan) {
		this.funcStatPatCan = funcStatPatCan;
	}

	public String getFuncStatPatReqAss() {
		return funcStatPatReqAss;
	}

	public void setFuncStatPatReqAss(String funcStatPatReqAss) {
		this.funcStatPatReqAss = funcStatPatReqAss;
	}

	public String getFuncStatPatNedAss() {
		return funcStatPatNedAss;
	}

	public void setFuncStatPatNedAss(String funcStatPatNedAss) {
		this.funcStatPatNedAss = funcStatPatNedAss;
	}

	public String getFuncStatPatBerd() {
		return funcStatPatBerd;
	}

	public void setFuncStatPatBerd(String funcStatPatBerd) {
		this.funcStatPatBerd = funcStatPatBerd;
	}

	public String getFuncStatPatisDea() {
		return funcStatPatisDea;
	}

	public void setFuncStatPatisDea(String funcStatPatisDea) {
		this.funcStatPatisDea = funcStatPatisDea;
	}

	

	public String getAntiplatelets() {
		return antiplatelets;
	}

	public void setAntiplatelets(String antiplatelets) {
		this.antiplatelets = antiplatelets;
	}
	
	
	

	public String gettStroke_Home() {
		return tStroke_Home;
	}

	public void settStroke_Home(String tStroke_Home) {
		this.tStroke_Home = tStroke_Home;
	}

	public String getTreatStrk_OthPlcStrkonset() {
		return treatStrk_OthPlcStrkonset;
	}

	public void setTreatStrk_OthPlcStrkonset(String treatStrk_OthPlcStrkonset) {
		this.treatStrk_OthPlcStrkonset = treatStrk_OthPlcStrkonset;
	}

	public String getTreatStrk_OptHelthcare() {
		return treatStrk_OptHelthcare;
	}

	public void setTreatStrk_OptHelthcare(String treatStrk_OptHelthcare) {
		this.treatStrk_OptHelthcare = treatStrk_OptHelthcare;
	}

	public String getTreatStrk_IpHelthcare() {
		return treatStrk_IpHelthcare;
	}

	public void setTreatStrk_IpHelthcare(String treatStrk_IpHelthcare) {
		this.treatStrk_IpHelthcare = treatStrk_IpHelthcare;
	}

	public String getTreatStrk_OthDeptRptHsp() {
		return treatStrk_OthDeptRptHsp;
	}

	public void setTreatStrk_OthDeptRptHsp(String treatStrk_OthDeptRptHsp) {
		this.treatStrk_OthDeptRptHsp = treatStrk_OthDeptRptHsp;
	}

	public String getTreatStrk_OthSpy() {
		return treatStrk_OthSpy;
	}

	public void setTreatStrk_OthSpy(String treatStrk_OthSpy) {
		this.treatStrk_OthSpy = treatStrk_OthSpy;
	}

	public String getTreatStrk_Unknown() {
		return treatStrk_Unknown;
	}

	public void setTreatStrk_Unknown(String treatStrk_Unknown) {
		this.treatStrk_Unknown = treatStrk_Unknown;
	}
	
	

	public String getDeoName() {
		return DeoName;
	}

	public void setDeoName(String deoName) {
		DeoName = deoName;
	}

	public String getEntryDate() {
		return EntryDate;
	}

	public void setEntryDate(String entryDate) {
		EntryDate = entryDate;
	}

	
	public String getSubmitData() {
		return submitData;
	}

	public void setSubmitData(String submitData) {
		this.submitData = submitData;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
