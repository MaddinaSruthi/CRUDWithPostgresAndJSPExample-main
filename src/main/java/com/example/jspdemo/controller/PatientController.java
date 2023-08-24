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

import com.example.jspdemo.model.Patient;
import com.example.jspdemo.service.PatientService;

@Controller
public class PatientController {
    @Autowired
    PatientService patientService;
    
    @GetMapping("/home")
    public String PatientHome(@ModelAttribute("message") String message, Model model) {
        model.addAttribute("patientList", patientService.getAllPatients());
        model.addAttribute("message", message);
        return "hompeage";
    }

    @GetMapping("/viewPatientList")
    public String viewPatientList(@ModelAttribute("message") String message, Model model) {
        model.addAttribute("patientList", patientService.getAllPatients());
        model.addAttribute("message", message);
        return "ViewPatientList";
    }

    @GetMapping("/addPatient")
    public String addPatient(@ModelAttribute("message") String message, Model model) {
        model.addAttribute("patient", new Patient());
        model.addAttribute("message", message);
        return "AddPatient";
    }

    @PostMapping("/savePatient")
    public String savePatient(Patient patient, RedirectAttributes redirectAttributes) {
        if (patientService.saveOrUpdatePatient(patient)) {
            redirectAttributes.addFlashAttribute("message", "Save Success");
            return "redirect:/viewPatientList";
        }
        

        redirectAttributes.addFlashAttribute("message", "Please Enter correct Id Proof Details");
        return "redirect:/addPatient";
    }

    @GetMapping("/editPatient/{id}")
    public String editPatient(@PathVariable Long id, Model model) {
        model.addAttribute("patient", patientService.getPateintById(id));

        return "EditPatient";
    }

    @PostMapping("/editSavePatient")
    public String editSavePatient(Patient patient, RedirectAttributes redirectAttributes) {
        if (patientService.saveOrUpdatePatient(patient)) {
            redirectAttributes.addFlashAttribute("message", "Edit Success");
            return "redirect:/viewPatientList";
        }

        redirectAttributes.addFlashAttribute("message", "Edit Failure");
        return "redirect:/editPatient/" + patient.getId();
    }

    @GetMapping("/deletePatient/{id}")
    public String deletePatient(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        if (patientService.deletePatient(id)) {
            redirectAttributes.addFlashAttribute("message", "Delete Success");
        } else {
            redirectAttributes.addFlashAttribute("message", "Delete Failure");
        }

        return "redirect:/viewPatientList";
    }
    @GetMapping("/searchPatients")
    public String searchPatients(@RequestParam("name") String name, Model model) {
        List<Patient> searchResults = patientService.searchPatientByName(name);
        model.addAttribute("patientList", searchResults);
        model.addAttribute("message", ""); // Clear any previous messages
        System.out.println(searchResults);
        return "ViewPatientList";
    }
}
