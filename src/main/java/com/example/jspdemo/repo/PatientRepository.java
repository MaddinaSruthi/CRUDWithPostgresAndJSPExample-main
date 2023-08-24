package com.example.jspdemo.repo;

import com.example.jspdemo.model.Patient;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PatientRepository extends JpaRepository<Patient, Long> {
	 List<Patient> findByNameContainingIgnoreCase(String name);
}
