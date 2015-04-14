
function checkUserName(uname) {
	// alert("entering checkUserName");
	var a = /[a-zA-Z0-9_]{3,15}/;
	if (!(a.test(uname))) {
		alert("minimum 3 charecters");
		
	}
}


function checkPassword(pwd) {
	// alert("entering checkPassword");
	// alert(document.cregistration.password.value);
	var a = /[a-zA-Z0-9]{6,15}/;
	if (!(a.test(pwd))) {
		alert("password should be min 6 charecters and max 15 charecters");
		document.cregistration.confirmPassword.value = "";
		document.cregistration.password.value = "";
		document.cregistration.confirmPassword.disabled = true;
	} else {

		document.pregistration.cpwd.value = "";
		document.pregistration.cpwd.disabled = false;
	}
}

function checkMatchPassword() {
	// alert("entering checkMatchPassword");
	if (!(document.pregistration.cpwd.value == document.pregistration.pwd.value)) {
		alert("password did not match");
		document.pregistration.pwd.value = "";
		document.pregistration.cpwd.value = "";
	}
}

function checkName(nameValue) {
	// alert("entering check name");
	// alert(nameValue);
	var a = /[A-Za-z]{1,}/;
	if (!a.test(nameValue)) {
		alert("numbers are not allowed");
		return false;
	} else
		return true;
}

function checkEmail(email) {
	// alert("enetering checkEmail");
	var a = /(^[A-Za-z0-9\._\-]+@([A-Za-z0-9\-]+\.)+[A-Za-z]{2,4}$)/;
	if (!(a.test(email))) {
		alert("This is not an email ");
	}
}

function checkMobileNumber(mobilenumber) {
	// alert("entering checkMobileNumber");
	var a = /^[0-9]{3}-[0-9]{3}-[0-9]{4}$/;
	if (!(a.test(mobilenumber))) {
		alert("not a mobile number");
	}
}

function checkAddress(address) {
	var b = /[A-Za-z0-9\._\-,]{1,}/;
	if (!b.test(address)) {
		alert("no special charecters")
	}

}

function checkZipCode() {
	var a = /[0-9]{6}/;
	if (!(a.test(document.pregistration.zipcode.value))) {
		alert("Only 6 digit number can be pincode")
	}

}

function CheckChanged() {
	/*
	 * if((document.options.pwd.value != null) & (document.options.cpwd.value !=
	 * null)) { var a2 = istextEmpty(document.options.pwd.value); var a3 =
	 * istextEmpty(document.options.cpwd.value); } Fixing currently
	 */

	if (document.options.mobilenumber.value != null) {
		var a4 = istextEmpty(document.options.mobilenumber.value);
	}

	if (document.options.email.value != null) {
		var a5 = istextEmpty(document.options.email.value);
	}

	if (document.options.address.value != null) {
		var a6 = istextEmpty(document.options.address.value);
	}

	if (document.options.zipcode.value != null) {
		var a11 = istextEmpty(document.options.zipcode.value);
	}

	// Check for password and repeated password

	if ((a2 & !a3) || (!a2 & a3)) {
		alert("Please enter data in empty fields");
		return false;
	} else {
		return true;
	}
}

function checkAll() {
	// alert("entering check all");
	var a1 = istextEmpty(document.pregistration.uname.value);

	var a2 = istextEmpty(document.pregistration.pwd.value);

	var a3 = istextEmpty(document.pregistration.cpwd.value);

	var a4 = istextEmpty(document.pregistration.mobilenumber.value);

	var a5 = istextEmpty(document.pregistration.email.value);

	var a6 = istextEmpty(document.pregistration.address.value);
	var a11 = istextEmpty(document.pregistration.zipcode.value);

	var a7 = istextEmpty(document.pregistration.fname.value);

	var a9 = istextEmpty(document.pregistration.lname.value);

	var a10 = isRadioEmpty(document.pregistration.gender);

	// alert(a1&a2&a3&a4&a5&a6&a7&a9&a10&a11);

	if (a1 & a2 & a3 & a4 & a5 & a6 & a7 & a9 & a10 & a11)
		return true;
	else {
		alert("Please enter data in empty fields");
		return false;
	}
}

function istextEmpty(name) {
	// alert("entering text field validation");
	// alert(name);
	if (name.length < 1) {
		return false;
	} else {
		return true;
	}
}

function isDropDownEmpty(x) {
	if (x.selectedIndex == 0)
		return false;
	else
		return true;
}

function isRadioEmpty(x) {
	// alert("entering validation");
	for (i = 0; i < x.length; i++) {
		if (x[i].checked)
			return true;
	}
	// alert("radio button field is empty ");
	return false;
}

function checkFieldsOfLogin() {
	
	var a1 = istextEmpty(document.login.uname.value);

	var a2 = istextEmpty(document.login.pwd.value);
	if (a1 & a2)
		return true;
	else {
		alert("Please enter data in empty fields");
		return false;
	}
}
function checkLoginPassword(pwd)
{
	
	var a = /[a-zA-Z0-9]{3,15}/;
	if (!(a.test(pwd))) {
		alert("password should be min 3 charecters and max 15 charecters and no special charecters are allowed in pwd");
		document.login.pwd.value = "";
	}
}
function checkLoginUserName(uname) {
	// alert("entering checkUserName");
	var a = /[a-zA-Z0-9_]{3,15}/;
	if (!(a.test(uname))) {
		alert("minimum 3 charecters");
		document.login.uname.value = "";
	}
}

function getmin()
{
	var date=curentDate();
	document.createAppointment.time.min=currentDate;
	}
