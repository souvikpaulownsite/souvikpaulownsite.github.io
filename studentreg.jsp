<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Student Registration</title>
<link href="bootstrap4.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<style>
.card{
	margin: 50px 50px 0px 50px;
	background-color: #eeefff;
}
.card-body{
	
	padding:0px !important;
	    margin: 1.25rem !important;
}
.full-body{
    margin: 0.40rem !important;
}
.text-center{
	text-align: center;
}
.lang_table{
	width: 100%;
	border: 1px solid #000;
	background-color: #fff;
}
.lang_table td,th{
border: 1px solid #000 !important;
padding: 5px;
text-align: center;
}
.mar_0{
	margin: 0px !important;
}
.profile_photo{
	height: 120px;
    width: 100px;
    position: absolute;
    right: 0;
    cursor: pointer;
    border: 5px solid #000;
}
.header {
    background: #000;
    position: fixed;
    width: 100%;
    height: 60px;
    z-index: 999;
}
.red_border{
	border: 2px solid #f00;
}
.red_border:focus{
	border: 2px solid #f00 !important;
}
</style>
<script src="js/validation.js"></script>
<script>
function openFile() {
	document.getElementById("fileChooser").click();
}
<!-- function setImage() {
	var reader = new FileReader();
	var input = document.getElementById("fileChooser");
    
    reader.onload = function(e) {
    	document.getElementById("profile_photo").src = e.target.result;
    }    
    reader.readAsDataURL(input.files[0]);
}-->
function validateForm(){ 
	var ret =true;
	if(document.getElementById("uniregno").value===""){
		document.getElementById("uniregno").classList.add("red_border");
		document.getElementById("uniregno").focus();
		ret = false;
	}
	return ret;
}
function checkRegNo(){
	if(document.getElementById("uniregno").value!==""){
		document.getElementById("uniregno").classList.remove("red_border");
	}else{
		document.getElementById("uniregno").classList.add("red_border");
	}

}
</script>
</head>
<body>
<jsp:include page="indexmenu.jsp"/>
 <!-- main app container --> 

<div class="container-fluid">
<form action="studentregservlet" method="post">
<h3 style="color: brown;text-align:center;">CREATE STUDENT ACCOUNT </h3>
<br/>
<div align="center">
<%
		 if (request.getAttribute("ssuccess") != null)
   		   out.print(request.getAttribute("ssuccess"));
	 %>
 </div>
  <div class="row">
    <div class="col-md-12 col-sm-12">
    <div class="row" style="margin: 50px 50px 0px 50px;">
       <div class="card card mar_0 col-sm-11" style="background-color: #add8ec;">
          <div class="card-body row">
                   	<label for="uniregno" class="text-uppercase font-weight-bold text-primary col-sm-2" >University Reg No. :</label>
                   	<input type="number" name="uniregno" 
                   	class="form-control col-sm-3" id="uniregno" onkeyup="checkRegNo()" placeholder="Enter Registration no" required >
                <div class="col-sm-2"></div>
                <label for="stream" class="text-uppercase font-weight-bold text-primary col-sm-2" > Stream :</label>
                   <input type="text" name="stream" class="form-control col-sm-3" id="stream" placeholder="Eg. CSE" required>                            
             </div> <!-- Card Body End -->
       </div> <!-- Card End -->
       <!--  <div class="col-sm-1">
       <img src="images/upload-icon.png" class="profile_photo" id="profile_photo" onclick="openFile()"/>
       <input type="file" id="fileChooser" onchange="setImage()" style="display:none;">
       </div>-->
       </div>
       <div class="card" style="background-color: #add8ec;">
          <div class="card-body full-body row">
                   	<label for="fullname" class="text-uppercase font-weight-bold text-primary col-sm-2" > Full Name :</label>
                   	<input type="text" name="fullname" class="form-control col-sm-3" id="fullname" placeholder="Enter Full Name" required onblur="checkname()" onfocus= "clearname()">
                     <div class="text-danger font-weight-bold" id="nameerrormessage"></div>
                	 <div class="col-sm-1"></div>      
                	<label for="dob" class="text-uppercase font-weight-bold text-primary col-sm-2" > Date of Birth :</label>
                   	<input type="date" name="dob" class="form-control col-sm-3" id="dob"  required>
                 <div class="col-sm-1"></div>                               
             </div> <!-- Card Body End -->
             <div class="card-body full-body row">
                   	<label for="name" class="text-uppercase font-weight-bold text-primary col-sm-2" > Gender :</label>
                   	<span class="text-center col-sm-1"><input type="radio" name="gender" class="form-control" id="gender" value="Male" checked> Male</span>
                   	<span class="text-center col-sm-1"><input type="radio" name="gender" class="form-control" id="gender" value="Female"> Female</span>
                   	<span class="text-center col-sm-1"><input type="radio" name="gender" class="form-control" id="gender" value="Other" > Other</span>
                	 <div class="col-sm-1"></div>      
                	<label for="phnno" class="text-uppercase font-weight-bold text-primary col-sm-2" > Phone No.:</label>
                   	<input type="number" name="phnno" class="form-control col-sm-3" id="phnno" placeholder="Enter Mobile no" required maxlength="10">
                <div class="col-sm-1"></div>                            
             </div> <!-- Card Body End -->
             <div class="card-body full-body row">
                   	<label for="email" class="text-uppercase font-weight-bold text-primary col-sm-2" > Email :</label>
                   	<input type="email" name="email" id="email" class="form-control col-sm-3" placeholder="Enter Email id" required onblur="checkemail()" onfocus= "clearemail()">
                   	<div class="col-sm-1"></div>
                   	<label for="password" class="text-uppercase font-weight-bold text-primary col-sm-2" > Password :</label>
                   	<input type="password" name="password" class="form-control col-sm-3" id="password" placeholder="Enter password" required onblur="checkpassword()" onfocus= "clearpassword()">
                	<div class="col-sm-1"></div>                            
             </div> <!-- Card Body End -->
             <div class="card-body full-body row">
                   	<label for="fathername" class="text-uppercase font-weight-bold text-primary col-sm-2" > Father's Name :</label>
                   	<input type="text" name="fathername" class="form-control col-sm-3" id="fathername" placeholder="Enter Father's name" required onblur="checkname()" onfocus= "clearname()">
                <div class="col-sm-1"></div>
                <label for="mothername" class="text-uppercase font-weight-bold text-primary col-sm-2" > Mother's Name :</label>
                   	<input type="text" name="mothername" class="form-control col-sm-3" id="mothername" placeholder="Enter Mother's name" required onblur="checkname()" onfocus= "clearname()">                            
             		<div class="col-sm-1"></div>
             </div> <!-- Card Body End -->
             <div class="card-body full-body row">
                   	<label for="phydisblty" class="text-uppercase font-weight-bold text-primary col-sm-2" > Physical Disability :</label>
                   	<input type="radio" name="phydisblty" class="form-control col-sm-1" id="yes" value="yes" checked>Yes
                   	<input type="radio" name="phydisblty" class="form-control col-sm-1" id="no" value="no">No
                <div class="col-sm-7"></div>                            
             </div> <!-- Card Body End -->
       </div> <!-- Card End -->
        <div class="card" style="background-color: #add8ec;">
          <div class="card-body row">
          			<h3 style="color: brown; text-align: center;">LANGUAGE KNOWN </h3>
                   	<table  class="lang_table">
                   	<thead>
                   	<tr>
                   	<th>Language</th>
                   	<th>Beginner</th>
                   	<th>Proficient</th>
                   	<th>Expert</th>
                   	</tr>
                   	</thead>
                   	<tbody>
                   	<tr>
                   	<th>Bengali</th>
                   	<td><input type="radio" name="l_bengali" class="form-control" id="l_bengali" value="Beginner"/></td>
                   	<td><input type="radio" name="l_bengali" class="form-control" id="l_bengali" value="Proficient"/></td>
    				<td><input type="radio" name="l_bengali" class="form-control" id="l_bengali" value="Expert"/></td>
                   	</tr>
                   	<tr>
                   	<th>English</th>
                   	<td><input type="radio" name="l_english" class="form-control" id="l_english" value="Beginner"/></td>
                   	<td><input type="radio" name="l_english" class="form-control" id="l_english" value="Proficient"/></td>
    				<td><input type="radio" name="l_english" class="form-control" id="l_english" value="Expert"/></td>
                   	</tr>
                   	<tr>
                   	<th>Hindi</th>
                   	<td><input type="radio" name="l_hindi" class="form-control" id="l_hindi" value="Beginner"/></td>
                   	<td><input type="radio" name="l_hindi" class="form-control" id="l_hindi" value="Proficient"/></td>
    				<td><input type="radio" name="l_hindi" class="form-control" id="l_hindi" value="Expert"/></td>
                   	</tr>
                   	</tbody>
                   	</table>                            
             </div> <!-- Card Body End -->
       </div> <!-- Card End -->
       <div class="card" style="background-color: #add8ec;">
          <div class="card-body row">
          			<h3 style="color: brown; text-align: center;">ACADEMIC DETAILS </h3>
                   	<table  class="lang_table">
                   	<thead>
                   	<tr>
                   	<th> Class</th>
                   	<th>Board</th>
                   	<th>Y.O.P</th>
                   	<th>Percentage/CGPA</th>
                   	<th>School/College</th>
                   	<th>Year Gap/backlog</th>
                   	</tr>
                   	</thead>
                   	<tbody>
                   	<tr>
                   	<th>10<sup>th</sup></th>
                   	<td><input type="text" name="xboard" class="form-control" id="xboard" required placeholder="Enter Abbreviation only"/></td>
                   	<td><input type="number" name="xyop" class="form-control" id="xyop" required placeholder="yyyy"/></td>
    				<td><input type="text" name="xperc" class="form-control" id="xperc" required placeholder="percentage eg.86.7"/></td>
    				<td><input type="text" name="xschool" class="form-control" id="xschool" required placeholder="enter school name"/></td>
    				<td></td>
                   	</tr>
                   	<tr>
                   	<th>12<sup>th</sup></th>
                   		<td><input type="text" name="xiiboard" class="form-control" id="xiiboard" required placeholder="Enter Abbreviation only"/></td>
                   	<td><input type="number" name="xiiyop" class="form-control" id="xiiyop" required placeholder="yyyy"/></td>
    				<td><input type="text" name="xiiperc" class="form-control" id="xiiperc" required placeholder="percentage eg.86.7"/></td>
    				<td><input type="text" name="xiischool" class="form-control" id="xiischool" required placeholder="enter school name"/></td>
    				<td><input type="checkbox" name="yeargap" class="form-control" id="yeargap" value="yes"/>Yeargap</td>
                   	</tr>
                   	<tr>
                   	<th>Diploma(if any)</th>
                   		<td><input type="text" name="diplomaboard" class="form-control" id="diplomaboard" placeholder="Enter Abbreviation only"/></td>
                   	<td><input type="number" name="dipyop" class="form-control" id="dipyop" placeholder="yyyy"/></td>
    				<td><input type="text" name="dipperc" class="form-control" id="dipperc" placeholder="percentage eg.86.7"/></td>
    				<td><input type="text" name="dipclg" class="form-control" id="dipclg" placeholder="enter college name"/></td>
    				<td></td>
                   	</tr>
                   	<tr>
                   	<th>Graduation(BTech)</th>
                   		<td><input type="text" name="btechboard" class="form-control" id="btechboard" required placeholder="Enter Abbreviation only"/></td>
                   	<td><input type="number" name="btechyop" class="form-control" id="btechyop" required placeholder="yyyy"/></td>
    				<td><input type="text" name="btechcgpa" class="form-control" id="btechcgpa" required placeholder="avg. cgpa eg.8.2"/></td>
    				<td><input type="text" name="btechcollegename" class="form-control" id="btechcollegename" required placeholder="enter college name"/></td>
    				<td><input type="checkbox" name="backlog" class="form-control" id="backlog" value="yes"/>Backlog</td>
                   	</tr>
                   	</tbody>
                   	</table>                            
             </div> <!-- Card Body End -->
       </div> <!-- Card End -->
       <div class="row"  style="margin: 50px 50px 50px 50px;">
       <div class="col-sm-1"></div>
       <button type="button" class="btn btn-danger col-sm-3"> Cancel </button>
       <div class="col-sm-1"></div>
       <button type="button" class="btn btn-primary col-sm-3"> Reset </button>
       <div class="col-sm-1"></div>
       <button type="submit" class="btn btn-success col-sm-3" onsubmit="return validateForm()"> Save </button>
       </div>
     </div> <!-- Col alignment end -->
    </div> <!-- Row End -->
    </form>
</div> <!-- Container End -->

 </body>
</html>
