package com.example.jspdemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.jspdemo.model.AccompanyingPerson;
import com.example.jspdemo.service.AccompanyingPersonService;

@Controller
public class AccompanyingPersonController {

    @Autowired
    AccompanyingPersonService accompanyingPersonService;

    @GetMapping({"/accompanyinglist", "/viewAccompanyingPersonList"})
    public String viewAccompanyingPersonList(@ModelAttribute("message") String message, Model model) {
        model.addAttribute("patientList", accompanyingPersonService.getAllaccompanyingPersons());
        model.addAttribute("message", message);

        return "viewAccompanyingPersonList";
    }

    @GetMapping("/addAccompanyingPerson")
    public String addAccompanyingPerson(@ModelAttribute("message") String message, Model model) {
        model.addAttribute("patient", new AccompanyingPerson());
        model.addAttribute("message", message);

        return "addAccompanyingPerson";
    }

    @PostMapping("/saveAccompanyingPerson")
    public String saveAccompanyingPerson(AccompanyingPerson accompanyingPerson, RedirectAttributes redirectAttributes) {
        if (accompanyingPersonService.saveOrUpdateAccompanyingperson(accompanyingPerson)) {
            redirectAttributes.addFlashAttribute("message", "Save Success");
            return "redirect:/viewAccompanyingPersonList";
        }

        redirectAttributes.addFlashAttribute("message", "Save Failure");
        return "redirect:/addAccompanyingPerson";
    }

    @GetMapping("/editAccompanyingPerson/{id}")
    public String editAccompanyingPerson(@PathVariable Long id, Model model) {
        model.addAttribute("patient", accompanyingPersonService.getaccompanyingpersonById(id));

        return "editAccompanyingPerson";
    }

    @PostMapping("/editSaveAccompanyingPerson")
    public String editSaveAccompanyingPerson(AccompanyingPerson accompanyingPerson, RedirectAttributes redirectAttributes) {
        if (accompanyingPersonService.saveOrUpdateAccompanyingperson(accompanyingPerson)) {
            redirectAttributes.addFlashAttribute("message", "Edit Success");
            return "redirect:/viewAccompanyingPersonList";
        }

        redirectAttributes.addFlashAttribute("message", "Edit Failure");
        return "redirect:/editAccompanyingPerson/" + accompanyingPerson.getId();
    }

    @GetMapping("/deleteaccompanyingPerson/{id}")
    public String deleteaccompanyingPerson(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        if (accompanyingPersonService.deleteAccompanyingperson(id)) {
            redirectAttributes.addFlashAttribute("message", "Delete Success");
        } else {
            redirectAttributes.addFlashAttribute("message", "Delete Failure");
        }

        return "redirect:/viewAccompanyingPersonList";
    }

}

