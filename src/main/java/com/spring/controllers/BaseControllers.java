package com.spring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseControllers {

	
	
	@RequestMapping(value="/loginpage")
	public String loginpage() {
	System.err.println("login base controllers");
	
		return"login";
	}
	
	
}
