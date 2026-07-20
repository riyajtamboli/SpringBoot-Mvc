package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.exception.InvalidSalaryException;
import com.rt.model.Employee;
import com.rt.repository.EmployeeRepo;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeRepo repo;
	
	public void addEmployee(Employee e) {
		if(e.getSalary() < 1000) {
			throw new InvalidSalaryException("Salary Must Be Greater than 1000");
		}else {
			repo.save(e);
		}
	}
	
	
	public List<Employee> showEmployee() {
		
		return repo.findAll();
	}
	
	
	public void deleteEmployee(Integer id) {
		repo.deleteById(id);
	}
}
