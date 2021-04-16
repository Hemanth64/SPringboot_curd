package com.hbsr.springmvc.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.hbsr.springmvc.exports.ExcelExport;
import com.hbsr.springmvc.exports.ExcelView;
import com.hbsr.springmvc.model.Coreform;
import com.hbsr.springmvc.model.Icd10Disc;
import com.hbsr.springmvc.model.ReffSerialNo;
import com.hbsr.springmvc.model.RegBean;
import com.hbsr.springmvc.model.User;
import com.hbsr.springmvc.model.UserProfile;
import com.hbsr.springmvc.service.CoreformService;
import com.hbsr.springmvc.service.ReffSerialNoService;
import com.hbsr.springmvc.service.RegistrationService;
import com.hbsr.springmvc.service.SearchService;
import com.hbsr.springmvc.service.UserProfileService;
import com.hbsr.springmvc.service.UserService;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class AppController {

	@Autowired
	UserService userService;

	@Autowired
	UserProfileService userProfileService;

	@Autowired
	CoreformService coreformService;

	@Autowired
	MessageSource messageSource;

	@Autowired
	ReffSerialNoService reffSerialNoService;

	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;

	@Autowired
	RegistrationService service;

	@Autowired
	SearchService searchService;

	@ModelAttribute("roles")
	public List<UserProfile> initializeProfiles() {
		return userProfileService.findAll();
	}

	// -------------Index page---------------

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String homePage() {
		return "login";

	}

	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public String listUsers(ModelMap model) {
		if (isCurrentAuthenticationAnonymous()) {
			return "login";
		} else {
			List<User> users = userService.findAllUsers();
			model.addAttribute("users", users);

			model.addAttribute("loggedinuser", getPrincipal());
			return "Dashboard";
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		if (isCurrentAuthenticationAnonymous()) {
			return "login";
		} else {
			return "redirect:/list";
		}
	}

	@RequestMapping(value = "loginpage", method = RequestMethod.GET)
	public String getLoginpage() {
		return "login";
	}

	// Register Page
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String registerPage(Model model) {
		model.addAttribute("regBean", new RegBean());
		return "registration";

	}

	@RequestMapping(value = { "/newuser" }, method = RequestMethod.POST)
	public String saveUser(@Valid @ModelAttribute("regBean") RegBean regBean, BindingResult result, ModelMap model) {

		if (result.hasErrors()) {
			System.out.println("error");
			return "registration";
		}

		userService.saveUser(regBean);

		return "redirect:/register";
	}

	@RequestMapping(value = "/registerSuccess", method = RequestMethod.POST)
	public String registerSuccess(@Valid @ModelAttribute("regBean") RegBean regBean, Errors bindingResult,
			HttpServletRequest request) {
		if (bindingResult.hasErrors()) {
			return "register";
		}
		userService.saveUser(regBean);

		return "redirect:/register";

	}

	private String getPrincipal() {
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {

			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/login?logout";
	}

	private boolean isCurrentAuthenticationAnonymous() {
		final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return authenticationTrustResolver.isAnonymous(authentication);
	}

	@RequestMapping(value = "/coreform1", method = RequestMethod.GET)
	public String core(Model model) {
		if (isCurrentAuthenticationAnonymous()) {
			return "redirect:/list";
		} else {
			Date date = new Date();// Today Date
			SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");// FOrmat
																			// in
																			// This
																			// Format
																			// or
																			// you
																			// change
																			// Change
																			// as
																			// well
			String Format = format.format(date);
			System.out.println(Format);

			model.addAttribute("date", Format);

			String s = coreformService.ReIDf();
			User user = userService.findBySSO(getPrincipal());
			ReffSerialNo Reffs = reffSerialNoService.setReffNo(user.getHbsr_cencode());

			model.addAttribute("ref", Reffs.getCenCd() + Reffs.getFullReffnum());
			model.addAttribute("ReffCenCod", user.getHbsr_cencode());
			model.addAttribute("ReffCenName", user.getHbsr_cen_name());

			model.addAttribute("coreform", new Coreform());

			model.addAttribute("loggedinuser", getPrincipal());

			return "main_corepage";
		}
	}

	@RequestMapping(value = "/coreformSuccess")
	public String coreformSuccess(@ModelAttribute Coreform coreform, Model model,
			@RequestParam("saveState") String saveStatus) {

		User user = userService.findBySSO(getPrincipal());

		ReffSerialNo Reffs = null;

		System.out.println("save status is" + saveStatus);

		model.addAttribute("saveStatus", saveStatus);

		if (saveStatus.equals("Submit"))
			coreform.setSubmitData("F");
		else
			coreform.setSubmitData("D");

		if (coreform.getCore_id() == 0) {
			String CenCd = coreform.getCenCode();
			Reffs = reffSerialNoService.setReffNo(CenCd);
			coreform.setRefeNum(Integer.parseInt(Reffs.getCenCd() + Reffs.getFullReffnum()));

			coreformService.saveCoreForm(coreform);
			model.addAttribute("success", coreform.getRefeNum() + " : Record inserted successfully");
			reffSerialNoService.refftabupdate(Reffs);

		} else {
			System.out.println(coreform.getCore_id());
			System.out.println("Carotid ultrasound value " + coreform.getCarotid() + " " + coreform.getCarotidDate()
					+ " " + coreform.getCarotidIntTime());

			coreformService.update(coreform);
			model.addAttribute("success", coreform.getRefeNum() + " :Record updated successfully");
		}

		String CenName = userService.CenName(coreform.getCenCode());
		model.addAttribute("ReffCenName", CenName);

		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("ref", coreform.getRefeNum());

		return "main_corepage";

	}

	@RequestMapping(value = "/searchTable")
	public String datatable(Model model) {
		if (isCurrentAuthenticationAnonymous()) {
			return "redirect:/list";
		} else {

			model.addAttribute("loggedinuser", getPrincipal());
			return "search";
		}

	}

	@RequestMapping(value = "/search")
	public String search(Model model, @RequestParam("srchFrm") String srchFrm, @RequestParam("id") String srchVal,
			@RequestParam("id2") String srchVal2, @RequestParam("id3") String srchVal3,
			@RequestParam("id4") String srchVal4, @RequestParam("id5") String srchVal5,
			@RequestParam("id6") String srchVal6) {

		if (isCurrentAuthenticationAnonymous()) {
			return "redirect:/list";
		} else {

			model.addAttribute("loggedinuser", getPrincipal());

			String typ2 = "1";
			List<Coreform> rec = null;

			rec = coreformService.CoreSearch(srchFrm, typ2, srchVal, srchVal2, srchVal3, srchVal4, srchVal5, srchVal6);
			model.addAttribute("records", rec);

			return "search";
		}
	}

	@RequestMapping(value = "/report", method = RequestMethod.GET)
	public ModelAndView userListReport(HttpServletRequest req, HttpServletResponse res) {

		String typeReport = req.getParameter("type");
		List<RegBean> employeeList = service.getAllEmployees();

		if (typeReport != null && typeReport.equals("xls")) {
			return new ModelAndView(new ExcelView(), "userList", employeeList);
		}

		return new ModelAndView("userListReport", "userList", employeeList);
	}

	@RequestMapping("/editform")
	public ModelAndView editEmployee(Model model, @RequestParam int id, @ModelAttribute Coreform coreform) {
		if (isCurrentAuthenticationAnonymous()) {
			return new ModelAndView("redirect:/list");
		} else {

			Coreform core = coreformService.editById(id);
			model.addAttribute("edit", "Yes");

			String CenName = userService.CenName(core.getCenCode());
			model.addAttribute("ReffCenName", CenName);
			model.addAttribute("loggedinuser", getPrincipal());

			return new ModelAndView("main_corepage", "CoreObject", core);
		}
	}

	// -----------ICd10Discription function------------

	@RequestMapping(value = "srhSmedCODTerms", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<Icd10Disc> srchIcd10Code(HttpServletRequest request,
			@RequestParam("IcdDesc") String IcdDesc) {

		System.out.println("IcdDesc" + IcdDesc);

		List<Icd10Disc> S_COD = searchService.searchIcd10Disc(IcdDesc);
		System.out.println("return size is :   " + S_COD.size());

		return S_COD;

	}

	// ----------fallowup---------------------------

	@RequestMapping("/follow_up")
	public String follow_up(Model model) {
		if (isCurrentAuthenticationAnonymous()) {
			return "redirect:/list";
		} else {

			model.addAttribute("loggedinuser", getPrincipal());

			return "Follow_up";

		}
	}

	@RequestMapping(value = "/followSearch", method = RequestMethod.GET)
	public ModelAndView follow_upSearch(Model model, @RequestParam("srchFollw") String srchFollw,
			@RequestParam("id7") String srchVal7, @RequestParam("id8") String srchVal8, HttpServletRequest req,
			HttpServletResponse res) {
		if (isCurrentAuthenticationAnonymous()) {
			return new ModelAndView("redirect:/login");
		} else {
			model.addAttribute("loggedinuser", getPrincipal());
			System.out.println(srchVal7 + "" + srchVal8);
			List<Coreform> follow = coreformService.follow_up(srchFollw, srchVal7, srchVal8);

			return new ModelAndView("Follow_up", "fObject", follow);

		}

	}

	@RequestMapping("/export")
	public String ExportData(Model model) {
		if (isCurrentAuthenticationAnonymous()) {
			return "redirect:/list";
		} else {

			model.addAttribute("loggedinuser", getPrincipal());

			return "Export";

		}
	}

	@RequestMapping(value = "/excel", method = RequestMethod.GET)
	public ModelAndView ExportExcel(Model model, @RequestParam("exportfrm") String exp,
			@RequestParam("id9") String expf9, @RequestParam("id10") String expf10, @RequestParam("id11") String expf11,
			@RequestParam("id12") String expf12, @RequestParam("id13") String expf13, HttpServletRequest req,
			HttpServletResponse res) {
		List<Coreform> core = coreformService.ExcelExport(exp, expf9, expf10, expf11, expf12, expf13);

		return new ModelAndView(new ExcelExport(), "exportList", core);

	}

}