package com.CabApp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.CabApp.model.Vehicles;
import com.CabApp.service.VehiclesService;
@Controller
public class VehiclesController {
	@Autowired
	VehiclesService vehiclesService;

    @GetMapping("/newvehicle")
    public String NewVehicle(Model m) {
        m.addAttribute("vehicle", new Vehicles());
        return "AddVehicle";
    }

    @PostMapping("/newvehicleinfo")
    public String NewVehicle(@ModelAttribute Vehicles vehicle, Model m) {
        String res = vehiclesService.addVehicle(vehicle);
        if (res.equals("Success")) {
            m.addAttribute("info", "Vehicle is Added");
            m.addAttribute("vehicle", new Vehicles());
        }
        return "redirect:/vehicleall";
    }
    
    @GetMapping("/vehicleall")
    public String ViewAll(Model m) {
        List<Vehicles> vehicleList = vehiclesService.getAllVehicles();
        m.addAttribute("vehicleList", vehicleList);
        return "ViewVehicle";
    }

    @GetMapping("/delvehicle/{id}")
    public String DeleteVehicle(@PathVariable int id) {
        vehiclesService.deleteVehicleById(id);
        return "redirect:/vehicleall";
    }
    @GetMapping("/modify/{id}")
    public String showEditVehicleForm(@PathVariable("id") int id, Model model) {
        Vehicles vehicle = vehiclesService.getVehicleById(id);
        model.addAttribute("vehicle", vehicle);
        return "ModifyVehicles";
    }

    @PostMapping("/update/{id}")
    public String updateVehicle(@PathVariable("id") int id, @ModelAttribute Vehicles vehicle) {
        vehicle.setVid(id);
        vehiclesService.updateVehicle(vehicle);
        return "redirect:/vehicleall";
    }
}
