package com.rt.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rt.model.Employee;

public interface EmployeeRepo extends JpaRepository<Employee, Integer> {

}
