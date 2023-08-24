package com.example.jspdemo.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.jspdemo.model.Admin;
import com.example.jspdemo.model.treatment;
import com.example.jspdemo.repo.AdminRepository;
import com.example.jspdemo.service.AdminService;
import com.example.jspdemo.service.treatmentService;

@Controller
public class AdminController {
	
	@Autowired
    AdminService adminService;
	AdminRepository adminRepo;
	treatmentService treatmentService;
	
	@GetMapping("/")
    public String showEmailValidationPage() {
        return "emailvalidation";
    }

    @PostMapping("/validate-email")
    public String validateEmail(@RequestParam("email") String email, Model model) {
        boolean user = adminService.getAdminByemail(email);
        if (user == true) {
            model.addAttribute("message", "Email is valid.");
            return "hompeage";
        } else {
            model.addAttribute("message", "Email not found.to register please contact your administrator");
            return "emailvalidation";
        }
        
    }
    
    @GetMapping("/admin")
    public String AdminHome(@ModelAttribute("message") String message, Model model) {
        model.addAttribute("adminList", adminService.getAlladmins());
        model.addAttribute("message", message);
        return "admin";
    }
    
    @GetMapping("/viewAdminList")
    public String viewAdminList(@ModelAttribute("message") String message, Model model) {
        model.addAttribute("adminList", adminService.getAlladmins());
        model.addAttribute("message", message);
        return "ViewAdminList";
    }
    
    @GetMapping("/addAdmin")
    public String addAdmin(@ModelAttribute("message") String message, Model model) {
        model.addAttribute("admin", new Admin());
        model.addAttribute("message", message);
        return "AddAdmin";
    }

    @PostMapping("/saveAdmin")
    public String saveAdmin(Admin admin, RedirectAttributes redirectAttributes) {
        if (adminService.saveOrUpdateadmin(admin)) {
            redirectAttributes.addFlashAttribute("message", "Save Success");
            return "redirect:/viewAdminList";
        }

        redirectAttributes.addFlashAttribute("message", "Save Failure");
        return "redirect:/addAdmin";
    }

    @GetMapping("/editadmin/{id}")
    public String editAdmin(@PathVariable Long id, Model model) {
        model.addAttribute("admin", adminService.getAdminById(id));
        return "editAdmin";
    }

    @PostMapping("/editSaveAdmin")
    public String editSaveAdmin(Admin admin, RedirectAttributes redirectAttributes) {
        if (adminService.saveOrUpdateadmin(admin)) {
            redirectAttributes.addFlashAttribute("message", "Edit Success");
            return "redirect:/viewAdminList";
        }

        redirectAttributes.addFlashAttribute("message", "Edit Failure");
        return "redirect:/admin/" + admin.getId();
    }

    @GetMapping("/deleteadmin/{id}")
    public String deleteAdmin(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        if (adminService.deleteadmin(id)) {
            redirectAttributes.addFlashAttribute("message", "Delete Success");
        } else {
            redirectAttributes.addFlashAttribute("message", "Delete Failure");
        }

        return "redirect:/viewAdminList";
    }
    @GetMapping("/searchadmins")
    public String searchadmins(@RequestParam("email") String email, Model model) {
        List<Admin> searchResults = adminService.searchAdminByEmail(email);
        model.addAttribute("adminList", searchResults);
        model.addAttribute("message", ""); // Clear any previous messages
        System.out.println(searchResults);
        return "ViewAdminList";
    }
    
    @GetMapping("/userDropdown")
    public String userDropdown(Model model) {
        List<treatment> users = treatmentService.getAllUsers();
        if (users != null) {
        model.addAttribute("users", users);
        }
        return "treatment"; // The name of your JSP page
    }
    @PostMapping("/saveTreatment")
    public String saveTreatment(treatment treatment, RedirectAttributes redirectAttributes) {
        if (treatmentService.saveOrUpdatetreatment(treatment)) {
            redirectAttributes.addFlashAttribute("message", "Save Success");
            return "redirect:/viewAdminList";
        }

        redirectAttributes.addFlashAttribute("message", "Save Failure");
        return "redirect:/userDropdown";
    }
}
