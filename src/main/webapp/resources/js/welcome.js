var welcomeModule = (function() {
	
	var people = [];
	
	var elemPersonTbl = "#person-table"
	var elemPersonTblTbody = "#person-table tbody";
	var elemPersonTblTbodyRows = "#person-table tbody tr"; 
		
	var init = function() {
		
		getAllPersonList().then(function(response) {
			people = response;
			populatePersonTable();	
		}).fail(function(error) {
			console.log(error);
		});
				
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
			html[++i] = "</tr>";
		}
		
		$(elemPersonTblTbody).append(html.join(''));
		
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
		init: init
	}
	
})();