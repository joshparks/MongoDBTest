package com.joshparks.mongodb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class MainController {

	@RequestMapping(method = RequestMethod.GET)
	public String getLandingPage(ModelMap model) {
		model.addAttribute("pageTitle", "Welcome Page");
		return "welcome";
	}
	
	@RequestMapping(value="/welcome", method = RequestMethod.GET)
	public String getWelcomePage(ModelMap model) {
		model.addAttribute("pageTitle", "Welcome Page");
		return "welcome";
	}
	
}
