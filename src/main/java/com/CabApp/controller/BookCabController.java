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
import org.springframework.web.bind.annotation.ResponseBody;

import com.CabApp.model.BookCab;
import com.CabApp.service.BookCabService;
import com.CabApp.service.CabFaresService;
import com.CabApp.service.VehiclesService;
@Controller
public class BookCabController {
	@Autowired
    BookCabService bookCabService;
	 @Autowired
	    private CabFaresService cabFaresService;

	    @Autowired
	    private VehiclesService vehiclesService;
    @GetMapping("/newbooking")
    public String NewBooking(Model m) {
        m.addAttribute("booking", new BookCab());
        List<String> uniqueFromLocations = cabFaresService.getUniqueFromLocations();
        m.addAttribute("fromLocations", uniqueFromLocations);
        List<String> uniqueToLocations = cabFaresService.getUniqueToLocations();
        m.addAttribute("toLocations", uniqueToLocations);
        m.addAttribute("cabFaresList", cabFaresService.getAllCabFares());
        m.addAttribute("vehicleList", vehiclesService.getAllVehicles());
        return "BookCab";
    }

    @PostMapping("/newbookinginfo")
    public String NewBooking(@ModelAttribute BookCab booking, Model m) {
    	 String fromLocation = booking.getFromLocation();
         String toLocation = booking.getToLocation();
         int fare = bookCabService.calculateFare(fromLocation, toLocation);
         booking.setFare(fare);
        String res = bookCabService.bookCab(booking);
        if (res.equals("Success")) {
            m.addAttribute("info", "Booking is successful");
            m.addAttribute("booking", new BookCab());
        }
        return "redirect:/bookingall";
    }
    
    @GetMapping("/bookingall")
    public String ViewAll(Model m) {
        List<BookCab> bookingList = bookCabService.getAllBookings();
        m.addAttribute("bookingList", bookingList);
        return "ViewBooking";
    }

    @GetMapping("/deletebookinginfo/{id}")
    public String CancelBooking(@PathVariable int id) {
        bookCabService.cancelBooking(id);
        return "redirect:/bookingall";
    }
    @GetMapping("/getToLocations")
    @ResponseBody
    public List<String> getToLocations(@RequestParam("fromLocation") String fromLocation) {
        List<String> toLocations = cabFaresService.getToLocationsForFromLocation(fromLocation);
        return toLocations;
    }
}
