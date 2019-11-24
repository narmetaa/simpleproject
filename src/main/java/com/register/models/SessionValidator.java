package com.register.models;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionValidator extends HandlerInterceptorAdapter {

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.err.println("user is in session");
		
		HttpSession session=request.getSession();
		String user = (String) session.getAttribute("email");
		System.out.println(user);
		
		if(user==null || user.isEmpty()) {
		ModelAndView mv= new  ModelAndView("login");
		mv.addObject("meassage", "to access the please login ");
		
		throw new ModelAndViewDefiningException(mv);
		
		}
		else {
			
			return true;
		}
			
	}
	
	
	
	
	
	
}
