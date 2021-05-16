package com.boot_Crud.service;

import java.util.List;

import com.boot_Crud.model.Employee;

public interface EmployeeService {

	List<Employee> getAllEmployees();

	void saveEmployee(Employee emp);

	Employee updateEmployee(long Id);

	void deleteEmployee(long Id);

}
