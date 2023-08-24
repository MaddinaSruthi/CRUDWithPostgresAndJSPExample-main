package com.example.jspdemo.service;

import com.example.jspdemo.model.Admin;
import com.example.jspdemo.model.treatment;
import com.example.jspdemo.repo.treatmentrepository;
import com.example.jspdemo.repo.treatmentrepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class treatmentService {

    treatmentrepository treatmentrepository;

    public List<treatment> getAllUsers() {
        return treatmentrepository.findAll();
    }
    public boolean saveOrUpdatetreatment(treatment treatment) {
        treatment updatedtreatment = treatmentrepository.save(treatment);
        
        return true;
    }
}
