(function(){
	
	'use strict';

	function PersonController ($scope, PersonService) {

		var self = this;
		
		self.cities = [];
		
		self.tableSort = 'id'; // set the default sort type
		self.sortReverse = false;  // set the default sort order
		self.tableFilter = '';     // set the default search/filter term
		
		self.getCities = function() {
			
			$('#city-btn').html('Loading...');
			
			var result = CityService.getCityList().then(function(response) {
				console.log('I found: ', response);
				$('#city-btn').html('Get Cities');
				self.cities = response;
			}).error(function() {
				
			});
			
		};
		
	};
	
	PersonController.$inject = ['$scope', 'PersonService', 'ErrorService'];
	angular.module('mongoApp.components').controller('PersonController', PersonController);
	
})();