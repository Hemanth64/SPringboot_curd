package com.boot_Crud.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot_Crud.model.Employee;
import com.boot_Crud.repository.EmployeeRepo;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	private EmployeeRepo repo;

	@Autowired
	public void setRepo(EmployeeRepo repo) {
		this.repo = repo;
	}

	@Override
	public List<Employee> getAllEmployees() {

		return repo.findAll();
	}

	@Override
	public void saveEmployee(Employee emp) {
		repo.save(emp);

	}

	@Override
	public Employee updateEmployee(long Id) {

		Optional<Employee> optional = repo.findById(Id);
		Employee emp = null;
		if (optional.isPresent()) {
			emp = optional.get();
		} else {
			throw new RuntimeException("Employee Not found");
		}
		return emp;
	}

	@Override
	public void deleteEmployee(long Id) {
		repo.deleteById(Id);

	}

}
