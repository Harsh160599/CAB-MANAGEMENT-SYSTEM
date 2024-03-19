package com.CabApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class LoginController {
	
	@GetMapping("/logininfo")
	public String Login()
	{
		return "login";
	}
	
	@PostMapping("/login")
    public String login(@RequestParam("username") String username, @RequestParam("password") String password) {
        if (username.equals("admin1605") && password.equals("Admin@123")) {
            return "redirect:/admin";
        } else if (username.equals("raj1605") && password.equals("Raj@123")) {
            return "redirect:/user";
        } else {
            return "redirect:/login?error";
        }
    }

	
	 @GetMapping("/admin")
	    public String adminPage() {
	        return "Admin";
	    }

	    @GetMapping("/user")
	    public String userPage() {
	        return "User";
	    }
}
