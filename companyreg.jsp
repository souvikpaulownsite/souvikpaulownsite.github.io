<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Company Registration</title>
<link href="bootstrap4.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="js/validation.js"></script>
</head>
<body>
<jsp:include page="indexmenu.jsp"/>
 <!-- main app container -->
 <div align="center">
 <%
		 if (request.getAttribute("csuccess") != null)
   		   out.print(request.getAttribute("csuccess"));
	 %>
	 </div>
<div class="container">


<br/>

  <div class="row">
    <div class="col-sm-12 mx-auto">
       <div class="card">
          <div class="card-body" style="background-color: #eeefff">
                                                    
            <div class="mt-2 text-center">
               <h3 style="color: brown;">CREATE COMPANY ACCOUNT </h3>
            </div>
              
            <div class="mt-4 text-left">
                 
				              <form action="companyregservlet" method="post">
                                                             
                <div class="form-group">
                   <label for="name" class="text-uppercase font-weight-bold text-primary" > Company Name :</label>
                   <input type="text" name="name" class="form-control" id="name" placeholder="Enter Company Name" required onblur="checkname()" onfocus= "clearname()">
                    <div class="text-danger font-weight-bold" id="nameerrormessage"></div>
                </div>
                
                        
                <div class="form-group">
                    <label for="offsite" class="text-uppercase font-weight-bold text-primary">Company's Official Site :</label>
                    <input type="text" name="offsite" class="form-control" placeholder="Enter Official site" required>
                </div>
                
                
                
                   <div class="form-group">
                    <label for="drivedate" class="text-uppercase font-weight-bold text-primary">Date Of Drive :</label>
                    <input type="date" name="drivedate" class="form-control" required>
                   
                </div>
                
                 
                <div class="form-group">
                    <label for="ctc" class="text-uppercase font-weight-bold text-primary">CTC :</label>
                    <input type="number" name="ctc" class="form-control" required>
                     
                </div>
                
                
                  <div class="form-group">
                    <label for="intrnprd" class="text-uppercase font-weight-bold text-primary">Internship Period :</label>
                    <input type="number" name="intrnprd" class="form-control" required placeholder="Enter Duration In Months">
                </div>
                
                
                  <div class="form-group">
                    <label for="stpn" class="text-uppercase font-weight-bold text-primary">Stipend :</label>
                    <input type="number" name="stpn" class="form-control" required>
                </div> 
                
                 
                 <div class="form-group">
                    <label for="drivedtl" class="text-uppercase font-weight-bold text-primary">Enter Drive Details :</label> &nbsp;&nbsp;&nbsp;<br/>
                      <textarea name="drivedtl" placeholder="Enter Recruitment Process" rows="5" cols="40"  required></textarea>                   
              
                </div>
                
                 
                  <div class="form-group">
                    <label for="position" class="text-uppercase font-weight-bold text-primary">Enter Employees Designation :</label>
                      <input type="text" name="position" class="form-control" required onblur="checkname()" onfocus= "clearname()">
                  <div  class="text-danger font-weight-bold" id="nameerrormessage">
                  </div>
                </div> 
                
                   
                  <div class="form-group">
                    <label for="driveplace" class="text-uppercase font-weight-bold text-primary">Enter Drive Location :</label>
					<input type="text" name="driveplace" class="form-control" required>

                   </div> 
                   
                      
               
                
                 
                  <div class="form-group">
                   <label for="email" class="text-uppercase font-weight-bold text-primary" > Company Email Address :</label>
                   <input type="email" name="email" class="form-control" placeholder="Enter Company Email Address" required onblur="checkemail()" onfocus= "clearemail()" >
                    <div class="text-danger font-weight-bold" id="emailerrormessage"></div>
                </div>
                       
                   <div class="form-group">
                    <label for="password" class="text-uppercase font-weight-bold text-primary">Enter Password :</label>
                    <input type="password" name="password" class="form-control" placeholder="Enter password" required onblur="checkpassword()" onfocus= "clearpassword()">
                     <div class="text-danger font-weight-bold" id="passerrormessage"></div>
                </div>
                
                
                   <fieldset>
            
    				<legend style="color: brown;">ACADEMIC CRITERIA FOR STUDENTS :</legend>	       
                <div class="form-group">
                    <label for="req10perc" class="text-uppercase font-weight-bold text-primary">Class X Criteria :</label>
                    <input type="number" name="req10perc" class="form-control" placeholder="Enter criteria in %" required>
                  </div>
                
                
                <div class="form-group">
                    <label for="req12perc" class="text-uppercase font-weight-bold text-primary">Class XII Criteria :</label>
                    <input type="number" name="req12perc" class="form-control" placeholder="Enter criteria in %" required>
          
                </div>
                
                
                <div class="form-group">
                    <label for="reqbtechcgpa" class="text-uppercase font-weight-bold text-primary">B.Tech CGPA Criteria :</label>
                    <input type="number" name="reqbtechcgpa" class="form-control" placeholder="Enter criteria in cgpa" required>
                  
                </div>
                
                 <div class="form-group">
                    <label for="yeargap" class="text-uppercase font-weight-bold text-primary">Year Gap Allowed For Students :</label>
                    <input type="text" name="yeargap" class="form-control" placeholder="If You Dont Want Then Type 'no'" required maxlength="3">
                </div>
                
                
                <div class="form-group">
                    <label for="backlog" class="text-uppercase font-weight-bold text-primary">Backlog Allowed For Students :</label>
                    <input type="text" name="backlog" class="form-control" placeholder="If You Dont Want Then Type 'no'" required onblur="checkname()" onfocus= "clearname()">
                  <div  class="text-danger font-weight-bold" id="nameerrormessage">
                  </div>
                </div>
                
                
              	<div class="form-group">
                    <label for="reqstream" class="text-uppercase font-weight-bold text-primary">Stream :</label> &nbsp;&nbsp;
                    <input type="checkbox" checked name="CSE" value="CSE" />
                       <span class="text-info">CSE</span> &nbsp;&nbsp;
                    <input type="checkbox" name="ECE" value="ECE" />
                       <span class="text-info">ECE</span> &nbsp;&nbsp;
                    <input type="checkbox" name="IT" value="IT" />
                       <span class="text-info">IT</span>
                       <br/>   &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         
                       
                        <input type="checkbox" name="ME" value="ME" />
                       <span class="text-info">ME</span>
                        <input type="checkbox" name="EEE" value="EEE" />
                       <span class="text-info">EEE</span>
                        <input type="checkbox" name="CE" value="CE" />
                       <span class="text-info">CE</span>
                </div>
                
                
                 <div class="form-group">
                    <label for="reqskill" class="text-uppercase font-weight-bold text-primary">Skills Required :</label> &nbsp;&nbsp;&nbsp;<br/>
                      <textarea name="reqskill" placeholder="Write your required skills" rows="5" cols="20" required ></textarea>    
                 
                </div>
           
                   </fieldset>  
               
                        
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;         
                <input type="submit" class="btn btn-primary" value="CREATE ACOUNT"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" class="btn btn-dark" value="RESET FORM">
              </form>
            </div> <!-- Form tag div -->
          </div> <!-- Card Body End -->
       </div> <!-- Card End -->
     </div> <!-- Col alignment end -->
    </div> <!-- Row End -->
</div> <!-- Container End -->

 </body>
</html>
