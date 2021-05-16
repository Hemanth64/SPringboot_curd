package com.boot_Crud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot_Crud.model.Employee;
import com.boot_Crud.service.EmployeeService;

@Controller
public class EployeeController {

	private EmployeeService service;

	@Autowired
	public void setService(EmployeeService service) {
		this.service = service;
	}

	@GetMapping("/")
	public String getAllEmployees(Model model) {
		model.addAttribute("listOfEmployees", service.getAllEmployees());

		return "index";

	}

	@GetMapping("/showEmployeeForm")
	public String saveEmployee(Model model) {
		Employee emp = new Employee();
		model.addAttribute("Employee", emp);
		return "new_Employee";

	}

	@PostMapping("/save")
	public String saveEmployee(@ModelAttribute("employee") Employee emp) {
		service.saveEmployee(emp);
		return "redirect:/";
	}

	@RequestMapping("/update/{id}")
	public String updateEmployee(@PathVariable(value = "id") long id, Model model) {

		Employee emp = service.updateEmployee(id);
		model.addAttribute("Employee", emp);

		return "update_employee";
	}

	@GetMapping("/deleteEmployee/{id}")
	public String deleteEmployee(@PathVariable(name = "id") long id) {
		service.deleteEmployee(id);
		return "redirect:/";
	}

}
