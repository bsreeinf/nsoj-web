document.addEventListener("turbolinks:load", function() {  
	init_wow();
});

$.fn.getYoutubeID = function(url) {
	var regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/;
	var match = url.match(regExp);
	if (match && match[2].length == 11) {
	    return match[2];
	} else {
	    return 'error';
	}
}