package com.CabApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WecomeController {


	@GetMapping("/home")
	public String welcomepage(Model m)
	{
		return "Welcome"; 
	}
}
