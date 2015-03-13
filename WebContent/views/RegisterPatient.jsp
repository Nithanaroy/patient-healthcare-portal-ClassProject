<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
sup
{
color:red
}
div.left{
float:left;
width:50%
}
legend
{
font-weight:bold;
}
</style>

<script src="validations.js" type="text/javascript">
</script>


</head>
<body  bgcolor="ffffff">  
<form name="RegisterPatient"  method="post" action="ControllerServlet"   onsubmit="return checkAll()">
<input type="hidden" name="hiddenType" value="RegisterPatient"/> 
<div class="container" >

<h1 style="text-align:center">Register Patient</h1><br/>

<div > <!--style="background-image:url(lilac_ice.gif)" >-->
<div class="left">

  <fieldset>
  <legend > Login Credentials </legend>
  <table cellspacing="15px" cellpadding="10px"  >
  
    <tr><td width="38%">User Name:<sup>*</sup></td>
    <td ><input type="text"  size="30" name="userName"  onchange="checkUserName()"/></td>
	</tr>

    <tr><td >Password:<sup>*</sup></td>
    <td ><input type="password" size="30" name="password" onchange="checkPassword()"/></td>
	</tr>

    <tr><td>Confirm Password:<sup>*</sup></td>
    <td ><input type="password" size="30" name="confirmPassword" onchange="checkMatchPassword()" disabled/></td>
	</tr>
    <tr></tr>
	<tr></tr>
	<tr></tr>
   </table>
   </fieldset>
   
 <fieldset>
 <legend> Patient Details</legend>
 <table  cellspacing="15px" cellpadding="10px" >
  <tr><td width="35%">Mobile Number:        <sup>*</sup> </td>   
   <td><input type="text" size="30" name="mobileNumber" onchange="checkMobileNumber()"/></td>
   </tr>

   <tr><td>Email:<sup>*</sup></td>
   <td><input type="text" size="30" name="email" onchange="checkEmail()"/></td>
   </tr>

    <tr><td>Address:<sup>*</sup></td>
    <td><textarea name="address" rows="5" cols="25" onchange="checkAddress()"></textarea></td>
	</tr>
	
	 <tr>
<td>Zip Code:<sup>*</sup></td>
<td><input type="text" size="30" name="zipCode" onchange="checkZipCode()"/></td>
</tr>

<tr>
	
  </table>
  </fieldset>
 
</div>
 
 
 <div class="right" >
 
<fieldset>
<legend> Personel Information </legend>
<table cellspacing="15px" cellpadding="10px" >
 <tr><td width="20%"> First Name:<sup>*</sup> </td>
 <td> <input type="text" size="30" name="firstName" onchange="checkFirstName(document.cregistration.firstName.value)"/> </td>
 </tr>
 
<tr>
<td>Last Name:<sup>*</sup></td>
<td><input type="text" size="30" name="lastName" onchange="checkLastName(document.cregistration.lastName.value)"/></td>
</tr>

<tr>
<td width="20%">Gender:<sup>*</sup></td>
<td><input type="radio" name="gender" value="Male"/>Male
<input type="radio" name="gender"value="female"/>Female</td>
</tr>
	
		   
</table>
</fieldset>

</div>

<div  style=" height:70px;float:top">
<p>Note:<sup>*</sup>Indicates Mandatory Fields</p>
</div>

<div  align="right"  >
<input type="submit" value="Submit" />
<input type="reset" value="Reset"/>

</div>

</div>
</div>
</form>
</body>

</html>

 