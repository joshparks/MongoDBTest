(function(){
	
	'use strict';
	 
	function PersonService ($http, $q) {
	 	
		// TODO: Update to $resource calls? (remove $http)
		
		var getPersonList = function() {
			
			var defer = $q.defer();
			
			$http({
				method: 'GET',
				url: '/MongoDBTest/person/all'
			}).then(function successCallback(response) {
			
			}, function errorCallback(response) {
			
			});
			
			return defer.promise;
			
		}
		
		var addPerson = function() {
			
		}
		
		var updatePerson = function() {
			
		}
		
		var deletePerson = function() {
			
		}
		
		return {
			getPersonList: getPersonList,
			addPerson: addPerson,
			updatePerson: updatePerson,
			deletePerson: deletePerson
		}
	 
	};
	
	PersonService.$inject = ['$http', '$q'];
	angular.module('mongoApp.components').factory('PersonService', PersonService);
	
})();