package com.CabApp.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import com.CabApp.model.CabFares;
import com.CabApp.service.CabFaresService;
@Controller
public class CabFaresController {
	@Autowired
    CabFaresService cabFaresService;

    @GetMapping("/newcabfare")
    public String NewCabFare(Model m) {
        m.addAttribute("cabFare", new CabFares());
        return "AddCabFare";
    }

    @PostMapping("/newcabfareinfo")
    public String NewCabFare(@ModelAttribute CabFares cabFare, Model m) {
        String res = cabFaresService.addCabFare(cabFare);
        if (res.equals("Success")) {
            m.addAttribute("info", "Cab fare is Added");
            m.addAttribute("cabFare", new CabFares());
        }
        return "redirect:/cabfareall";
    }
    
    @GetMapping("/cabfareall")
    public String ViewAll(Model m) {
        List<CabFares> cabFareList = cabFaresService.getAllCabFares();
        m.addAttribute("cabFareList", cabFareList);
        return "ViewCabFare";
    }
    @GetMapping("/delcabfare/{id}")
    public String DeleteCabFare(@PathVariable int id) {
        cabFaresService.deleteCabFareById(id);
        return "redirect:/cabfareall";
    }
    @GetMapping("/editcabfare/{id}")
    public String EditCabFare(@PathVariable int id, Model model) {
        CabFares cabFare = cabFaresService.getCabFareById(id).orElse(null);
        if (cabFare != null) {
            model.addAttribute("cabFare", cabFare);
            return "UpdateCabFare";
        } else {
            return "redirect:/cabfareall";
        }
    }

    @PostMapping("/updatecabfare/{id}")
    public String UpdateCabFare(@PathVariable int id, @ModelAttribute CabFares cabFare) {
        cabFare.setId(id); // Ensure that the ID is set to the correct value
        cabFaresService.updateCabFare(id, cabFare);
        return "redirect:/cabfareall";
    }
   
    }
