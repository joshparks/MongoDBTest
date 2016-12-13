package com.joshparks.mongodb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.joshparks.mongodb.model.Person;
import com.joshparks.mongodb.repository.PersonRepository;

@Service
public class PersonService {

	@Autowired
	private PersonRepository repo;
		
	/**
	 * 
	 * @return
	 */
	public ResponseEntity<List<Person>> getAllPeople() {
		List<Person> people = repo.getAllPeople();
		return new ResponseEntity<List<Person>>(people, HttpStatus.OK);
	}
	
	/**
	 * 
	 * @param person
	 * @return
	 */
	public ResponseEntity<Person> getPersonById(Person person) {
		Person dbPerson = repo.getPersonById(person);
		return new ResponseEntity<Person>(dbPerson, HttpStatus.OK);
	}
	
	/**
	 * 
	 * @param person
	 * @return
	 */
	public ResponseEntity<String> addPerson(Person person) {
		repo.addPerson(person);
		return new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
	}
	
	/**
	 * 
	 * @param person
	 * @return
	 */
	public ResponseEntity<String> updatePerson(Person person) {
		repo.updatePerson(person);
		return new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
	}
	
	/**
	 * 
	 * @param person
	 * @return
	 */
	public ResponseEntity<String> deletePerson(Person person) {
		repo.deletePerson(person);
		return new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
	}
	
}
