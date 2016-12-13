var personModule = (function() {
	
	var people = [];
	
	var elemPersonTbl = "#person-table"
	var elemPersonTblTbody = "#person-table tbody";
	var elemPersonTblTbodyRows = "#person-table tbody tr"; 
		
	var elemAddPersonFirstName = "#personFirstNameInput";
	var elemAddPersonLastName = "#personLastNameInput";
	var elemAddPersonAge = "#personAgeInput";
	
	var init = function() {
		
		clear();
		
		getAllPersonList().then(function(response) {
			people = response;
			populatePersonTable();	
		}).fail(function(error) {
			console.log(error);
		});
				
	};
	
	var clear = function() {
		
		$(elemAddPersonFirstName).val('');
		$(elemAddPersonLastName).val('');
		$(elemAddPersonAge).val('');
		
	};
	
	var populatePersonTable = function() {
		
		$(elemPersonTblTbodyRows).remove();
		$(elemPersonTblTbody).empty();
		
		var html = new Array();
		var i = -1;
		
		var peopleLen = people.length;
		
		for(var i = 0; i < peopleLen; i++) {
			var person = people[i];
			html[++i] = "<tr>";
			html[++i] = "<td>"+person.id+"</td>";
			html[++i] = "<td>"+person.firstName+"</td>";
			html[++i] = "<td>"+person.lastName+"</td>";
			html[++i] = "<td>"+person.age+"</td>";
			html[++i] = "<td>(-)</td>";
			html[++i] = "</tr>";
		}
		
		$(elemPersonTblTbody).append(html.join(''));
		
	};
	
	var addPersonSubmit = function() {
		
		var person = {
			id: '',
			firstName: $(elemAddPersonFirstName).val(),
			lastName: $(elemAddPersonLastName).val(),
			age: parseInt($(elemAddPersonAge).val())	
		};
		
		addPersonService(person).then(function(response) {
			init();
		}).fail(function(error) {
			console.log('AddPerson() - Error: ', error);
		});
		
	};
	
	var addPersonService = function(person) {
		
		var deferred = $.Deferred();
		
		$.ajax({
			type : 'POST',
			url : '/MongoDBTest/person/add',
			contentType : 'application/json',
			dataType : 'json',
			data : JSON.stringify(person),
			success : function(response) {
				console.log('AddPersonSvc() - Success: ', response);
				deferred.resolve(response);
			},
			error : function(error) {
				console.log('AddPersonSvc() - Error: ', error);
				deferred.reject(error);
			}
		});
		
		return deferred.promise();
		
	};
	
	var getAllPersonList = function() {
		
		var deferred = $.Deferred();
		
		$.ajax({
			type : 'GET',
			url : '/MongoDBTest/person/all',
			contentType : 'application/json',
			dataType : 'json',
			data : {},
			success : function(response) {
				console.log('getAllPersonList() - Success: ', response);
				deferred.resolve(response);
			},
			error : function(error) {
				console.log('getAllPersonList() - Error: ', error);
				deferred.reject(error);
			}
		});
		
		return deferred.promise();
		
	};
	
	return {
		init: init,
		addPersonSubmit: addPersonSubmit
	}
	
})();