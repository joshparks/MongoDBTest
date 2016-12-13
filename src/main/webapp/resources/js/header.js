var header = (function () {

	var updateActive = function() {
		$(".nav a").on("click", function(){
		   $(".nav").find(".active").removeClass("active");
		   $(this).parent().addClass("active");
		});
	}
	
	return {
		updateActive: updateActive
	}

})();