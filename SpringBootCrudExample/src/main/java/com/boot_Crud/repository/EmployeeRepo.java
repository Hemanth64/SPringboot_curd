package com.boot_Crud.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.boot_Crud.model.Employee;

@Repository
public interface EmployeeRepo extends JpaRepository<Employee, Long>{

	

}
