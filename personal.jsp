<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</head>
<body>
<script>
function mailValidation()
{
var x=document.getElementById("eid").value;
var pattern="^[A-Za-z0-9]+[@]{1}[a-z]+(.com|.co.in.|.in)$";
if(x==null||x==""){
document.getElementById("errormail").innerHTML="plz enter your email";
return false;
}
else if(!x.match(pattern)){
document.getElementById("errormail").innerHTML="write in correct format";
return false;
}
else{
document.getElementById("errormail").innerHTML="";
return true;
}
}
function pwdValidation()
{
	var Value=document.getElementById("pid").value;
	var pwdPattern="^[A-Za-z0-9@!#$&*]{8,}$";
	if(!Value.match(pwdPattern)){
		document.getElementById("errorpwd").innerHTML="password should contain atleast 8 characters"
return false;
}
	else{
document.getElementById("errorpwd").innerHTML="";
return true;
}
}
function confirmpwdValidation()
{
	var password=document.getElementById("pid").value;
	var confirmpwd=document.getElementById("pid1").value;
	if(!password.match(confirmpwd)){
	document.getElementById("errorpwd1").innerHTML="plz match the password";
return false;
}
else{
	document.getElementById("errorpwd1").innerHTML="";
return true;
}
}
function userValidation()
{
	var userValue=document.getElementById("txtname").value;
	var namePattern="^[A-Za-z]+$";
	if(!userValue.match(namePattern)){
		document.getElementById("errorname").innerHTML="name should be alphabets";
return false;
}
	else{
		document.getElementById("errorname").innerHTML="";
return true;
}
}
function fnameValidation()
{
	var userValue=document.getElementById("fname").value;
	var namePattern="^[A-Za-z]+$";
	if(!userValue.match(namePattern)){
		document.getElementById("errorFname").innerHTML="name should be alphabets";
return false;
}
	else{
		document.getElementById("errorFname").innerHTML="";
return true;
}
}
function mnameValidation()
{
	var userValue=document.getElementById("mname").value;
	var namePattern="^[A-Za-z]+$";
	if(!userValue.match(namePattern)){
		document.getElementById("errorMname").innerHTML="name should be alphabets";
return false;
}
	else{
		document.getElementById("errorMname").innerHTML="";
return true;
}
}

function dtValidation()
{
var x=document.getElementById("dt").value;
if(x==null||x==""){
document.getElementById("errordt").innerHTML="plz enter your DOB";
return false;
}
else{
document.getElementById("errordt").innerHTML="";
return true;
}
}
function genderValidation()
{
	var elements=document.getElementsByName("gender");
	var count=0;
	for(var i=0;i<elements.length;i++)
	{
		if(elements[i].checked)
			count++;
	}
	if(count==0)
	{
		document.getElementById("errorGender").innerHTML="select atleast one gender";
		return false;
	}
	else{
		document.getElementById("errorGender").innerHTML="";
		return true;
	}
}
function addrValidation()
{
var x=document.getElementById("addr").value;
if(x==null||x==""){
document.getElementById("errorAddr").innerHTML="plz enter your address";
return false;
}
else{
document.getElementById("errorAddr").innerHTML="";
return true;
}
}
function numValidation()
{
var x=document.getElementById("num").value;
var pattern="^[6-9]{1}[0-9]{9}$";
if(x==0||x==""){
document.getElementById("errorNum").innerHTML="plz enter your phno";
return false;
}
else if(!x.match(pattern)){
document.getElementById("errorNum").innerHTML="plz enter valid phno";
return false;
}
else{
document.getElementById("errorNum").innerHTML="";
return true;
}
}
function formValidation()
{
a=mailValidation();
b=pwdValidation();
c=confirmpwdValidation();
d=userValidation();
e=fnameValidation();
f=mnameValidation();
g=dtValidation();
h=genderValidation();
i=addrValidation();
j=numValidation();
if(a&&b&&c&&d&&e&&f&&g&&h&&i&&j)
return true;
else
return false;
}
</script>
<div class="container"> 
<div class="row" >
<div class="col-lg-12" style="background-color:black ;font-size:50px;color:white;"> DELOITTE DESIGNATION
<img src="../image/d3.jpg" align="right" height="100px" width="100px"></div>  
</div>   
<form class="form-horizontal" onsubmit="return formValidation()"> 
<div class="row">
<div class="col-lg-12">
<h3>PERSONAL INFORMATION</h3>
</div>
</div>
<div class="row"> 
<div class="col-lg-4"><label>Email Id</label></div>
<div class="col-lg-4">          
<input type="email" onchange="mailValidation()" id="eid" placeholder="Enter your email">
</div>
<span id="errormail"></span>	 
</div>
<div class="row"> 
<div class="col-lg-4"><label>password</label></div>
<div class="col-lg-4">          
<input type="password" onchange="pwdValidation()" id="pid" placeholder="Enter your Password">
</div>
<span id="errorpwd"></span>	 
</div>
<div class="row"> 
<div class="col-lg-4"><label>confirm password</label></div>
<div class="col-lg-4">          
<input type="password" id="pid1" onchange="confirmpwdValidation()">
</div>
<span id="errorpwd1"></span>	 
</div>
<div class="row"> 
<div class="col-lg-4"><label>Name</label>
</div>
<div class="col-lg-4">          
<input id="txtname" onchange="userValidation()" type="text" placeholder="Enter your name">
    </div>
<span id="errorname"></span>	
</div>
<div class="row"> 
<div class="col-lg-4"><label>Fathers Name</label>
</div>
<div class="col-lg-4">          
<input id="fname" onchange="fnameValidation()" type="text" placeholder="Enter your Fathers name">
    </div>
<span id="errorFname"></span>	
</div>
<div class="row"> 
<div class="col-lg-4"><label>Mothers Name</label>
</div>
<div class="col-lg-4">          
<input id="mname" onchange="mnameValidation()" type="text" placeholder="Enter your mothers name">
    </div>
<span id="errorMname"></span>	
</div>

<div class="row">   
<div class="col-lg-4"><label>DOB</label></div>
<div class="col-lg-4">          
<input type="date" id="dt" onchange="dtValidation()">
</div> 
<span id="errordt"></span>	
</div>                                        
<div class="row"> 
<div class="col-lg-4">
<label>Gender</label></div>
<div class="col-lg-2">                                                              
<input type="radio" name="gender" value="M">Male                         
</div>
<div class="col-lg-2">      
<input type="radio" name="gender" value="F">Female                             
</div> 
<span id="errorGender"></span>
</div> 
<div class="row">
<div class="col-lg-4"><label>Address</label></div>
<div class="col-lg-4">          
<textarea id="addr" onchange="addrValidation()"></textarea>
</div>
<span id="errorAddr"></span>	
</div>
<div class="row">
<div class="col-lg-4"><label>Phone Number</label></div>
<div class="col-lg-4">
<input type="text" id="num" onchange="numValidation()"></div>
<span id="errorNum"></span>
</div>
<div class="row">
<div class="col-lg-4">
<input type="submit" value="next"></div>
</div>
</form>
</div> 
</body>
</html>