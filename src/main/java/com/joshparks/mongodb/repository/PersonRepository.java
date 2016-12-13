package com.joshparks.mongodb.repository;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.joshparks.mongodb.model.Person;

@Repository
public class PersonRepository {

	@Autowired
	MongoTemplate mongoTemplate;
	
	public static final String PERSON_COLLECTION = "person";
	
	/**
	 * Find all Person(s) in collection
	 * @return
	 */
	public List<Person> getAllPeople() {
		return mongoTemplate.findAll(Person.class, PERSON_COLLECTION);
	}
	
	/**
	 * Find an individual Person in collection
	 * @param person
	 * @return
	 */
	public Person getPersonById(Person person) {
		return mongoTemplate.findById(person.getId(), Person.class, PERSON_COLLECTION);
	}
	
	/**
	 * Add a new Person to collection
	 * @param person
	 */
	public void addPerson(Person person) {
		if(!mongoTemplate.collectionExists(Person.class)) {
			mongoTemplate.createCollection(Person.class);
		}
		person.setId(UUID.randomUUID().toString());
		mongoTemplate.insert(person, PERSON_COLLECTION);
	}
	
	/**
	 * Update a Person entry in collection
	 * @param person
	 */
	public void updatePerson(Person person) {
		mongoTemplate.insert(person, PERSON_COLLECTION);
	}
	
	/**
	 * Remove a Person from collection
	 * @param person
	 */
	public void deletePerson(Person person) {
		mongoTemplate.remove(person, PERSON_COLLECTION);
	}
	
}
