package com.joshparks.mongodb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.joshparks.mongodb.model.Person;
import com.joshparks.mongodb.service.PersonService;

@Controller
@RequestMapping("/person")
public class PersonController {

	@Autowired
	private PersonService svc;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getPersonPage(ModelMap model) {
		model.addAttribute("pageTitle", "Person Management");
		return "person";
	}
	
	@RequestMapping(value="/all", method=RequestMethod.GET)
	public ResponseEntity<List<Person>> getAllPeople() {
		return svc.getAllPeople();
	}
	
	@RequestMapping(value="/get", method=RequestMethod.POST) 
	public ResponseEntity<Person> getPersonById(@RequestBody Person person) {
		return svc.getPersonById(person);
	}		
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public ResponseEntity<String> addPerson(@RequestBody Person person) {
		return svc.addPerson(person);
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public ResponseEntity<String> updatePerson(@RequestBody Person person) {
		return svc.updatePerson(person);
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public ResponseEntity<String> deletePerson(@RequestBody Person person) {
		return svc.deletePerson(person);
	}
	
}
