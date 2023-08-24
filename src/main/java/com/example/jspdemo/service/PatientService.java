package com.example.jspdemo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.jspdemo.model.Patient;
import com.example.jspdemo.repo.PatientRepository;

@Service
public class PatientService {
    
    
    @Autowired
    PatientRepository patientRepo;

    public List<Patient> getAllPatients() {
        List<Patient> pateintList = new ArrayList<>();
        patientRepo.findAll().forEach(patient -> pateintList.add(patient));
        for (int i = 0; i < pateintList.size(); i++) {
        	 
            // Print all elements of List
            System.out.println(pateintList.get(i).getName());
        }
        return pateintList;
    }

    public Patient getPateintById(Long id) {
        return patientRepo.findById(id).get();
    }
    
    public List<Patient> searchPatientByName(String name) {
        return patientRepo.findByNameContainingIgnoreCase(name);
    }

    public boolean saveOrUpdatePatient(Patient patient) {
    	if ((patient.getIdproof().length()!= 12)||(patient.getAidproof().length()!= 12)||(patient.getBidproof().length()!= 12))
    	{
    		return false;
    	}
    	if ((patient.getContactNumber().length()!= 10)||(patient.getAcontactNumber().length()!= 10)||(patient.getBcontactNumber().length()!= 10))
    	{
    		return false;
    	}
        Patient updatedPateint = patientRepo.save(patient);
        if (patientRepo.findById(updatedPateint.getId()) != null) {
            return true;
        }
        return false;
    }

    public boolean deletePatient(Long id) {
        patientRepo.deleteById(id);

        if (patientRepo.findById(id) != null) {
            return true;
        }

        return false;
    }
}
