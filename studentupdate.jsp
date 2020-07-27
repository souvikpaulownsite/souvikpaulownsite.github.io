<%@page import="com.proj.model.student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
	if(session.getAttribute("sinfo")==null){
		response.sendRedirect("studentlogin.jsp");
	}
    %>
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
<jsp:include page="studentmenu.jsp"/>
 <!-- main app container --> 
<%
student sobj=(student)session.getAttribute("sinfo");
%>
<div class="container-fluid">
<form action="studentupdateservlet" method="post">
<h3 style="color: brown;text-align:center;">UPDATE STUDENT ACCOUNT </h3>
<br/>
<%
		 if (request.getAttribute("ssuccess") != null)
   		   out.print(request.getAttribute("ssuccess"));
	 %>
 
  <div class="row">
    <div class="col-md-12 col-sm-12">
    <div class="row" style="margin: 50px 50px 0px 50px;">
       <div class="card card mar_0 col-sm-11" style="background-color: #add8ec;">
          <div class="card-body row">
                   	<label for="uniregno" class="text-uppercase font-weight-bold text-primary col-sm-2" >University Reg No. :</label>
                   	<input type="number" name="uniregno" 
                   	class="form-control col-sm-3" id="uniregno" readonly value="<%= sobj.getUniregno()%>">
                <div class="col-sm-2"></div>
                <label for="stream" class="text-uppercase font-weight-bold text-primary col-sm-2" > Stream :</label>
                   <input type="text" name="stream" class="form-control col-sm-3" id="stream" readonly value="<%= sobj.getStream()%>">                            
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
                   	<input type="text" name="fullname" class="form-control col-sm-3" id="fullname" value="<%= sobj.getFullname()%>" required onblur="checkname()" onfocus= "clearname()">
                     <div class="text-danger font-weight-bold" id="nameerrormessage"></div>
                	 <div class="col-sm-1"></div>      
                	<label for="dob" class="text-uppercase font-weight-bold text-primary col-sm-2" > Date of Birth :</label>
                   	<input type="date" name="dob" class="form-control col-sm-3" id="dob"  required  value="<%= sobj.getDob()%>">
                 <div class="col-sm-1"></div>                               
             </div> <!-- Card Body End -->
             <div class="card-body full-body row">
                   	<label for="name" class="text-uppercase font-weight-bold text-primary col-sm-2" > Gender :</label>
                   	<span class="text-center col-sm-1"><input type="radio" name="gender" class="form-control" id="gender" value="Male" <% if(sobj.getGender().equals("Male")) { %> checked <% } %>> Male</span>
                   	<span class="text-center col-sm-1"><input type="radio" name="gender" class="form-control" id="gender" value="Female" <% if(sobj.getGender().equals("Female")) { %> checked <% } %>> Female</span>
                   	<span class="text-center col-sm-1"><input type="radio" name="gender" class="form-control" id="gender" value="Other" <% if(sobj.getGender().equals("Other")) { %> checked <% } %>> Other</span>
                	 <div class="col-sm-1"></div>      
                	<label for="phnno" class="text-uppercase font-weight-bold text-primary col-sm-2" > Phone No.:</label>
                   	<input type="number" name="phnno" class="form-control col-sm-3" id="phnno" required value="<%= sobj.getPhnno()%>" maxlength="10">
                <div class="col-sm-1"></div>                            
             </div> <!-- Card Body End -->
             <div class="card-body full-body row">
                   	<label for="email" class="text-uppercase font-weight-bold text-primary col-sm-2" > Email :</label>
                   	<input type="email" name="email" id="email" class="form-control col-sm-3" required value="<%= sobj.getEmail()%>" onblur="checkemail()" onfocus= "clearemail()">
                   	<div class="col-sm-1"></div>
                   	<label for="password" class="text-uppercase font-weight-bold text-primary col-sm-2" > Password :</label>
                   	<input type="password" name="password" class="form-control col-sm-3" id="password" required value="<%= sobj.getPassword()%>" onblur="checkpassword()" onfocus= "clearpassword()">
                	<div class="col-sm-1"></div>                            
             </div> <!-- Card Body End -->
             <div class="card-body full-body row">
                   	<label for="fathername" class="text-uppercase font-weight-bold text-primary col-sm-2" > Father's Name :</label>
                   	<input type="text" name="fathername" class="form-control col-sm-3" id="fathername" required value="<%= sobj.getFathername()%>" onblur="checkname()" onfocus= "clearname()">
                <div class="col-sm-1"></div>
                <label for="mothername" class="text-uppercase font-weight-bold text-primary col-sm-2" > Mother's Name :</label>
                   	<input type="text" name="mothername" class="form-control col-sm-3" id="mothername" required value="<%= sobj.getMothername()%>" onblur="checkname()" onfocus= "clearname()">                            
             		<div class="col-sm-1"></div>
             </div> <!-- Card Body End -->
             <div class="card-body full-body row">
                   	<label for="phydisblty" class="text-uppercase font-weight-bold text-primary col-sm-2" > Physical Disability :</label>
                   	<input type="radio" name="phydisblty" class="form-control col-sm-1" id="yes" value="yes" <% if(sobj.getPhydisblty().equals("yes")) { %> checked <% } %>>Yes
                   	<input type="radio" name="phydisblty" class="form-control col-sm-1" id="no" value="no" <% if(sobj.getPhydisblty().equals("no")) { %> checked <% } %>>No
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
                   	<td><input type="radio" name="l_bengali" class="form-control" id="l_bengali" value="Beginner" <% if(sobj.getL_bengali().equals("Beginner")) { %> checked <% } %>/></td>
                   	<td><input type="radio" name="l_bengali" class="form-control" id="l_bengali" value="Proficient" <% if(sobj.getL_bengali().equals("Proficient")) { %> checked <% } %>/></td>
    				<td><input type="radio" name="l_bengali" class="form-control" id="l_bengali" value="Expert"<% if(sobj.getL_bengali().equals("Expert")) { %> checked <% } %>/></td>
                   	</tr>
                   	<tr>
                   	<th>English</th>
                   	<td><input type="radio" name="l_english" class="form-control" id="l_english" value="Beginner"<% if(sobj.getL_english().equals("Beginner")) { %> checked <% } %>/></td>
                   	<td><input type="radio" name="l_english" class="form-control" id="l_english" value="Proficient"<% if(sobj.getL_english().equals("Proficient")) { %> checked <% } %>/></td>
    				<td><input type="radio" name="l_english" class="form-control" id="l_english" value="Expert"<% if(sobj.getL_english().equals("Expert")) { %> checked <% } %>/></td>
                   	</tr>
                   	<tr>
                   	<th>Hindi</th>
                   	<td><input type="radio" name="l_hindi" class="form-control" id="l_hindi" value="Beginner"<% if(sobj.getL_hindi().equals("Beginner")) { %> checked <% } %>/></td>
                   	<td><input type="radio" name="l_hindi" class="form-control" id="l_hindi" value="Proficient"<% if(sobj.getL_hindi().equals("Proficient")) { %> checked <% } %>/></td>
    				<td><input type="radio" name="l_hindi" class="form-control" id="l_hindi" value="Expert"<% if(sobj.getL_hindi().equals("Expert")) { %> checked <% } %>/></td>
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
                   	<td><input type="text" name="xboard" class="form-control" id="xboard" readonly value="<%= sobj.getXboard()%>"/></td>
                   	<td><input type="number" name="xyop" class="form-control" id="xyop" readonly value="<%= sobj.getXyop()%>"/></td>
    				<td><input type="text" name="xperc" class="form-control" id="xperc" readonly value="<%= sobj.getXperc()%>"/></td>
    				<td><input type="text" name="xschool" class="form-control" id="xschool" readonly value="<%= sobj.getXschool()%>"/></td>
    				<td></td>
                   	</tr>
                   	<tr>
                   	<th>12<sup>th</sup></th>
                   		<td><input type="text" name="xiiboard" class="form-control" id="xiiboard" readonly value="<%= sobj.getXiiboard()%>"/></td>
                   	<td><input type="number" name="xiiyop" class="form-control" id="xiiyop" readonly value="<%= sobj.getXiiyop()%>"/></td>
    				<td><input type="text" name="xiiperc" class="form-control" id="xiiperc" readonly value="<%= sobj.getXiiperc()%>"/></td>
    				<td><input type="text" name="xiischool" class="form-control" id="xiischool" readonly value="<%= sobj.getXiischool()%>"/></td>
    				<td><input type="checkbox" name="yeargap" class="form-control" id="yeargap" value="yes" disabled="disabled" <% if(sobj.getYeargap().equals("yes")) { %> checked <% } %>/>Yeargap</td>
                   	</tr>
                   	<tr>
                   	<th>Diploma(if any)</th>
                   		<td><input type="text" name="diplomaboard" class="form-control" id="diplomaboard" readonly value="<%= sobj.getDiplomaboard()%>"/></td>
                   	<td><input type="number" name="dipyop" class="form-control" id="dipyop" readonly value="<%= sobj.getDipyop()%>"/></td>
    				<td><input type="text" name="dipperc" class="form-control" id="dipperc" readonly value="<%= sobj.getDipperc()%>"/></td>
    				<td><input type="text" name="dipclg" class="form-control" id="dipclg" readonly value="<%= sobj.getDipclg()%>"/></td>
    				<td></td>
                   	</tr>
                   	<tr>
                   	<th>Graduation(BTech)</th>
                   		<td><input type="text" name="btechboard" class="form-control" id="btechboard" readonly value="<%= sobj.getBtechboard()%>"/></td>
                   	<td><input type="number" name="btechyop" class="form-control" id="btechyop" readonly value="<%= sobj.getBtechyop()%>"/></td>
    				<td><input type="text" name="btechcgpa" class="form-control" id="btechcgpa" readonly value="<%= sobj.getBtechcgpa()%>"/></td>
    				<td><input type="text" name="btechcollegename" class="form-control" id="btechcollegename" readonly value="<%= sobj.getBtechcollegename()%>"/></td>
    				<td><input type="checkbox" name="backlog" class="form-control" id="backlog" value="yes" disabled="disabled" <% if(sobj.getBacklog().equals("yes")) { %> checked <% } %>/>Backlog</td>
                   	</tr>
                   	</tbody>
                   	</table>                            
             </div> <!-- Card Body End -->
       </div> <!-- Card End -->
       <div class="row"  style="margin: 50px 50px 50px 50px;">
       <div class="col-sm-1"></div>
       <!--  ><div class="btn btn-danger col-sm-3"></div>
       <div class="col-sm-1"></div>
       <div class="btn btn-primary col-sm-3"> </div>
       <div class="col-sm-1"></div> -->
       <button type="submit" class="btn btn-success col-sm-6" onsubmit="return validateForm()"> Update </button>
       </div>
     </div> <!-- Col alignment end -->
    </div> <!-- Row End -->
    </form>
</div> <!-- Container End -->

 </body>
</html>
