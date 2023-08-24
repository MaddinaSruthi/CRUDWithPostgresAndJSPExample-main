package com.example.jspdemo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.jspdemo.model.AccompanyingPerson;
import com.example.jspdemo.repo.AccompanyingPersonRepository;

@Service
public class AccompanyingPersonService {
    
    
    @Autowired
    AccompanyingPersonRepository accompanyingpersonRepo;

    public List<AccompanyingPerson> getAllaccompanyingPersons() {
        List<AccompanyingPerson> accompanyingPersonsList = new ArrayList<>();
        accompanyingpersonRepo.findAll().forEach(accompanyingPerson -> accompanyingPersonsList.add(accompanyingPerson));

        return accompanyingPersonsList;
    }

    public AccompanyingPerson getaccompanyingpersonById(Long id) {
        return accompanyingpersonRepo.findById(id).get();
    }

    public boolean saveOrUpdateAccompanyingperson(AccompanyingPerson accompanyingperson) {
        AccompanyingPerson updatedaccompanyingperson = accompanyingpersonRepo.save(accompanyingperson);

        if (accompanyingpersonRepo.findById(updatedaccompanyingperson.getId()) != null) {
            return true;
        }

        return false;
    }

    public boolean deleteAccompanyingperson(Long id) {
        accompanyingpersonRepo.deleteById(id);

        if (accompanyingpersonRepo.findById(id) != null) {
            return true;
        }

        return false;
    }
}
