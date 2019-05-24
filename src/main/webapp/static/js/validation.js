//form validation


function validateForm() {
	var a = document.forms["regform"]["cmpName"].value;
	var b = document.forms["regform"]["agt_name"].value;
	var c = document.forms["regform"]["cmp_address"].value;
	var d = document.forms["regform"]["cmp_country"].value;
	var e = document.forms["regform"]["cmp_website"].value;
	var f = document.forms["regform"]["cmp_email"].value;
	var g = document.forms["regform"]["cmp_phnumber"].value;
//	var h = document.forms["regform"]["password"].value;
//	var i = document.forms["regform"]["confpw"].value;
	
	var emailPattern = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	var mobilePattern = /^\d{10}$/;
	var websitepattern = /^(?:(?:https?|ftp):\/\/)?(?:(?!(?:10|127)(?:\.\d{1,3}){3})(?!(?:169\.254|192\.168)(?:\.\d{1,3}){2})(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))|(?:(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,})))(?::\d{2,5})?(?:\/\S*)?$/;
	
	if (a == "" || b == "" || c == "" || d == "" || e == "" || f == "" || g == "") {
		alert("All the fields must be filled out!");
		return false;
	}
	
	else if(!e.match(websitepattern)){
		alert("Invalid website");
		return false;
	}
	
	else if(!f.match(emailPattern)){
		alert("Invalid Email");
		return false;
	}
	
	else if(!g.match(mobilePattern)){
		alert("Invalid Mobile");
		return false;
	}

}

