package com.example.jspdemo.service;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.jspdemo.model.Admin;
import com.example.jspdemo.repo.AdminRepository;

@Service
public class AdminService {
    
    
    @Autowired
    AdminRepository adminRepo;

    public List<Admin> getAlladmins() {
    	System.out.println("Calling getAlladmins() method...");
        List<Admin> adminList = new ArrayList<>();
        adminRepo.findAll().forEach(admin -> adminList.add(admin));
        for (int i = 0; i < adminList.size(); i++) {
       	 
            // Print all elements of List
            System.out.println(adminList.get(i).getId());
            System.out.println(adminList.get(i).getUsername());
            System.out.println(adminList.get(i).getEmail());
        }
        return adminList;
    }

    public Admin getAdminById(Long id) {
        return adminRepo.findById(id).get();
    }
    
    public boolean getAdminByemail(String email) {
    	System.out.println("Calling authetication() method...");
        List<Admin> adminList = new ArrayList<>();
        adminRepo.findAll().forEach(admin -> adminList.add(admin));
        boolean authentication = false;
        System.out.println(email+"this is input");
        for (int i = 0; i < adminList.size(); i++) {
        	System.out.println(adminList.get(i).getEmail());
        	if (email.equalsIgnoreCase(adminList.get(i).getEmail())){
        		authentication = true;
        	}
        }
        return authentication;
    }
    
    public List<Admin> searchAdminByEmail(String email) {
    	System.out.println("Calling searchByEmail() method...");
        return adminRepo.findByEmailContainingIgnoreCase(email);
    }
    
    

    public boolean saveOrUpdateadmin(Admin admin) {
        Admin updatedadmin = adminRepo.save(admin);
        if (adminRepo.findById(updatedadmin.getId()) != null) {
            return true;
        }
        return false;
    }

    public boolean deleteadmin(Long id) {
        adminRepo.deleteById(id);

        if (adminRepo.findById(id) != null) {
            return true;
        }

        return false;
    }
}