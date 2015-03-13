
function checkUserName()
{
//alert("entering checkUserName");
var a=/[a-zA-Z0-9_]{6,15}/;
//alert(document.cregistration.userName.value);
//alert(a.test(document.cregistration.userName.value));
if(!(a.test(document.cregistration.userName.value)))
	{
	  alert("minimum 6 charecters");
      document.cregistration.userName.value="";
	 // document.getElementById("userName1").src="wrong.png";
	  }
else{
   //document.getElementById("userName1").src="tick.png";
	}
      
}


function checkPassword()
{
//alert("entering checkPassword");
//alert(document.cregistration.password.value);
var a=/[a-zA-Z0-9]{6,15}/;
	if(!(a.test(document.cregistration.password.value)))
	{
          alert("password should be min 6 charecters and max 15 charecters");
		  document.cregistration.confirmPassword.value="";
		  document.cregistration.password.value="";
		  document.cregistration.confirmPassword.disabled=true;
        //  document.getElementById("password1").src="wrong.png";
		  //alert(document.getElementById("confirmPassword1").src);
         // document.getElementById("confirmPassword1").src="wrong.png";
	}
	else{
		
		document.cregistration.confirmPassword.value="";
    document.cregistration.confirmPassword.disabled=false;
	 //document.getElementById("password1").src="tick.png";
	}
}
function checkMatchPassword()
{
//alert("entering checkMatchPassword");
if(!(document.cregistration.confirmPassword.value==document.cregistration.password.value))
	{
	alert("password did not match");
	//document.cregistration.password.value="";
	document.cregistration.confirmPassword.value="";
	//document.getElementById("confirmPassword1").src="wrong.png";
    
	}
	//else
	//	document.getElementById("confirmPassword1").src="tick.png";
}
function checkPassword1()
{
//alert("entering checkPassword");
//alert(document.cregistration.password.value);
var a=/[a-zA-Z0-9]{6,15}/;
	if(!(a.test(document.changePassword.oldPassword.value)))
	{
          alert("password should be min 6 charecters and max 15 charecters");
		 // document.changePassword.confirmPassword.value="";
		  document.changePassword.oldPassword.value="";
		  //document.changePassword.confirmNewPassword.disabled=true;
        //  document.getElementById("password1").src="wrong.png";
		  //alert(document.getElementById("confirmPassword1").src);
         // document.getElementById("confirmPassword1").src="wrong.png";
	}
	else{
		
		//document.changePassword.confirmNewPassword.value="";
    //document.changePassword.confirmNewPassword.disabled=false;
	 //document.getElementById("password1").src="tick.png";
	}
}

function checkPassword2()
{
//alert("entering checkPassword");
//alert(document.cregistration.password.value);
var a=/[a-zA-Z0-9]{6,15}/;
	if(!(a.test(document.changePassword.newPassword.value)))
	{
          alert("password should be min 6 charecters and max 15 charecters");
		  document.changePassword.confirmNewPassword.value="";
		  document.changePassword.newPassword.value="";
		//  document.changePassword.confirmNewPassword.disabled=true;
        //  document.getElementById("password1").src="wrong.png";
		  //alert(document.getElementById("confirmPassword1").src);
         // document.getElementById("confirmPassword1").src="wrong.png";
	}
	else{
		document.changePassword.confirmNewPassword.value="";
    //document.changePassword.confirmNewPassword.disabled=false;
	 //document.getElementById("password1").src="tick.png";
	}
}

function checkMatchPassword1()
{
//alert("entering checkMatchPassword");
if(!(document.changePassword.confirmNewPassword.value==document.changePassword.newPassword.value))
	{
	alert("password did not match");

	document.changePassword.confirmNewPassword.value="";
	document.changePassword.newPassword.value="";
	//document.getElementById("confirmPassword1").src="wrong.png";
    
	}
	//else
	//	document.getElementById("confirmPassword1").src="tick.png";
}


function checkMobileNumber(){
//alert("entering checkMobileNumber");
var a=/^([7-9]{1})([0-9]{9})$/;
if(!(a.test(document.cregistration.mobileNumber.value)))
	{
       alert("not a mobile number");
	   document.cregistration.mobileNumber.value="";
	  // document.getElementById("mobileNumber1").src="wrong.png";
	}
	//else
	//document.getElementById("mobileNumber1").src="tick.png";
}

function checkZipCode()
{
	var a=/[0-9]{6}/;
	if(!(a.test(document.cregistration.pinCode.value)))
	{
		alert("Only 6 digit number can be pincode")
		 document.cregistration.pinCode.value="";
     //   document.getElementById("pinCode1").src="wrong.png";  
	}
	else
	{
	//	document.getElementById("pinCode1").src="tick.png";
	}
}

function checkEmail(){
//	alert("enetering checkEmail");
    var a=/(^[A-Za-z0-9\._\-]+@([A-Za-z0-9\-]+\.)+[A-Za-z]{2,4}$)/;
if(!(a.test(document.cregistration.email.value)))
	{
	alert("not an email ");
	document.cregistration.email.value="";
	//document.getElementById("email1").src="wrong.png";
	}
	//else
	//document.getElementById("email1").src="tick.png";
	}

function checkFirstName()
{
var x=checkName(document.cregistration.firstName.value);
if(!x)
	{
	alert("numbers and spaces not allowed");
//	document.getElementById("firstName1").src="wrong.png";
	document.cregistration.firstName.value="";
	
	}
	//else
	//document.getElementById("firstName1").src="tick.png";
}

function checkMiddleName()
{
	var x=checkName(document.cregistration.middleName.value);
if(!x)
	{
	alert("numbers and spaces not allowed");
	document.cregistration.middleName.value="";
//	document.getElementById("middleName1").src="wrong.png";
	
	}
	//else
//	document.getElementById("middleName1").src="tick.png";
}
function checkLastName()
{
	var x=checkName(document.cregistration.lastName.value);
if(!x)
	{
	alert("numbers and spaces not allowed");
	document.cregistration.lastName.value="";
	//	document.getElementById("lastName1").src="wrong.png";
	}
	//else
//	document.getElementById("lastName1").src="tick.png";
    
}

function checkAddress()
{
var b=/[A-Za-z0-9\._\-,]{1,}/;
if(!b.test(document.cregistration.address.value))
{
	document.cregistration.address.value="";
}
var a=istextEmpty(document.cregistration.address.value);
if(!a)
{
//document.getElementById("address1").src="wrong.png";
}
//else
//document.getElementById("address1").src="tick.png";
}

function checkName(nameValue)
{
	//alert("entering check name");
	//alert(nameValue);
	var a=/[A-Za-z]{1,}/;
    
	//alert(a.test(nameValue));
	if(!a.test(nameValue)){
		//alert("numbers are not allowed in name field");
		return false;
	}
	else
	return true;

}

function istextEmpty(name)
{
//	alert("entering text field validation");
// alert(name);
    if(name.length<1){
    // alert("Please enter data in empty fields")
	 return false;
     }
	 else
	{
	return true;
	}
}
function isPinCodeEmpty(pin)
{
	if(pin="")
		return false;
	else
		return true;
}

function isRadioEmpty(x){
//	alert("entering  validation");
 for(i=0;i<x.length;i++){
	 if(x[i].checked)
		 return true;
    }
  // alert("radio button field is empty ");
   return false;
}

function isDropDownEmpty(x)
{
if(x.selectedIndex==0)
	return false;
else 
	return true;
}
function checkAll()
{
	//alert("entering check all");
	var a1=istextEmpty(document.cregistration.userName.value);

    var a2=istextEmpty(document.cregistration.password.value);
	
	var a3=istextEmpty(document.cregistration.confirmPassword.value);
	
	var a4=istextEmpty(document.cregistration.mobileNumber.value);
	
	var a5=istextEmpty(document.cregistration.email.value);
	
	var a6=istextEmpty(document.cregistration.address.value);
	var a11=isPinCodeEmpty(document.cregistration.pincode.value);
	
    var a7=istextEmpty(document.cregistration.firstName.value);

	var a9=istextEmpty(document.cregistration.lastName.value);
	
	var a10=isRadioEmpty(document.cregistration.gender);
	
	alert(a1&a2&a3&a4&a5&a6&a7&a9&a10&a11);
	
	if(a1&a2&a3&a4&a5&a6&a7&a9&a10&a11)
	return true;
	else
	{
	alert("Please enter data in empty fields");
	return false;
    }
}


function grantEditOnAll()
{
 //document.cregistration.userName.disabled=false; 
 //document.cregistration.password.disabled=false; 
 document.Changepassword.passwordButton.disabled=false; 
 //document.cregistration.confirmPassword.disabled=false; 
 document.cregistration.mobileNumber.disabled=false; 
 document.cregistration.email.disabled=false; 
 document.cregistration.address.disabled=false; 
 document.cregistration.firstName.disabled=false; 
// document.cregistration.middleName.disabled=false; 
 document.cregistration.lastName.disabled=false; 
 document.cregistration.pinCode.disabled=false; 
 
 document.cregistration.gender[0].disabled=false;
 document.cregistration.gender[1].disabled=false;
 document.cregistration.updatebutton.disabled=false;
 document.viewprofile.okbutton.disabled=true;
 //document.cregistration.getElementById("updatebutton").disable=false;
 document.cregistration.offer1.disabled=false;
 document.cregistration.offer2.disabled=false;
 //document.cregistration.day.disabled=false; 
 
 //document.cregistration.month.disabled=false; 
 
}

