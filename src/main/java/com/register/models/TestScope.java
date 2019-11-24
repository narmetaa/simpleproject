package com.register.models;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hibernate.dao.Collage;

@Controller
public class TestScope {

	@Qualifier(value="aurobj")
	@Autowired
	Collage c1;

	@Qualifier(value="aurobj")
	@Autowired
	Collage c2;

	@Qualifier(value="cbitobj")
	@Autowired
	Collage c3;
	
	@Qualifier(value="cbitobj")
	@Autowired
	Collage c4;

	@RequestMapping(value = "/test")
	public String test() {
		System.out.println("scope test method");

		c1.setLocation("hyderabad");
		
		c2.setLocation("karimnagar");
		c3.setLocation("warangal");
		c4.setLocation("nizamabad");
		
		System.out.println(c1.getCollagename() + c1.getLocation());
		System.out.println(c2.getCollagename() + c2.getLocation());
		System.out.println(c3.getCollagename() + c3.getLocation());
		System.out.println(c4.getCollagename() + c4.getLocation());
		return "index";
	}
}