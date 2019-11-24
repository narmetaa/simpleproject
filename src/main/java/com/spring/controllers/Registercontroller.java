package com.spring.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.register.models.Registerpojo;

@Controller
public class Registercontroller {

	@RequestMapping(value = "/register",method=RequestMethod.POST)
	public String register(Registerpojo r, Model m) {
		System.out.println("user is regisered..");
		Configuration config = new Configuration().configure().addAnnotatedClass(Registerpojo.class);
		SessionFactory sf = config.buildSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.save(r);
		tx.commit();
		session.close();
		m.addAttribute("meassage", "you registerd succsfully");
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("email") String email, @RequestParam("password") String password, 
			Model m,HttpSession httpsession) {

		System.out.println("user login..");
		Configuration config = new Configuration().configure().addAnnotatedClass(Registerpojo.class);
		SessionFactory sf = config.buildSessionFactory();

		Session session = sf.openSession();
		Criteria crit = session.createCriteria(Registerpojo.class);

		crit.add(Restrictions.eq("email", email));
		crit.add(Restrictions.eq("password", password));
		List list = crit.list();

		if (list.isEmpty()) {

			m.addAttribute("meassage", "plz try with valid credentilas");

			return "login";
		}

		session.close();

		httpsession.setAttribute("email", email);
		
		
		m.addAttribute("meassage", "you are logged in succsfully");
		return "profile";
	}
	
	
	
	
	
	
	
	
}
