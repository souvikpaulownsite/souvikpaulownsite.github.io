<%@page import="com.proj.model.company"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
	if(session.getAttribute("cinfo")==null){
		response.sendRedirect("companylogin.jsp");
	}
    %>
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
<jsp:include page="companymenu.jsp"/>
 <!-- main app container -->
 
<div class="container">
<%
 company cobj=(company)session.getAttribute("cinfo");
%>

<br/>

  <div class="row">
    <div class="col-sm-12 mx-auto">
       <div class="card">
          <div class="card-body" style="background-color: #eeefff">
                                                    
            <div class="mt-2 text-center">
               <h3 style="color: brown;">UPDATE COMPANY ACCOUNT </h3>
            </div>
              <%
		 if (request.getAttribute("csuccess") != null)
   		   out.print(request.getAttribute("csuccess"));
	 %>
            <div class="mt-4 text-left">
                 
				              <form action="companyupdateservlet" method="post">
                                                             
                <div class="form-group">
                   <label for="name" class="text-uppercase font-weight-bold text-primary" > Company Name :</label>
                   <input type="text" name="name" class="form-control" id="name" value="<%= cobj.getName()%>" onfocus= "clearname()">
                    <div class="text-danger font-weight-bold" id="nameerrormessage"></div>
                </div>
                
                        
                <div class="form-group">
                    <label for="offsite" class="text-uppercase font-weight-bold text-primary">Company's Official Site :</label>
                    <input type="text" name="offsite" class="form-control"value="<%= cobj.getOffsite()%>" readonly>
                </div>
                
                
                
                   <div class="form-group">
                    <label for="drivedate" class="text-uppercase font-weight-bold text-primary">Date Of Drive :</label>
                    <input type="date" name="drivedate" class="form-control" value="<%= cobj.getDrivedate()%>" required>
                   
                </div>
                
                 
                <div class="form-group">
                    <label for="ctc" class="text-uppercase font-weight-bold text-primary">CTC :</label>
                    <input type="number" name="ctc" class="form-control" value="<%= cobj.getCtc()%>" required>
                     
                </div>
                
                
                  <div class="form-group">
                    <label for="intrnprd" class="text-uppercase font-weight-bold text-primary">Internship Period :</label>
                    <input type="number" name="intrnprd" class="form-control" required value="<%= cobj.getIntrnprd()%>">
                </div>
                
                
                  <div class="form-group">
                    <label for="stpn" class="text-uppercase font-weight-bold text-primary">Stipend :</label>
                    <input type="number" name="stpn" class="form-control" required value="<%= cobj.getStpn()%>">
                </div> 
                
                 
                 <div class="form-group">
                    <label for="drivedtl" class="text-uppercase font-weight-bold text-primary">Enter Drive Details :</label> &nbsp;&nbsp;&nbsp;<br/>
                      <textarea name="drivedtl" rows="5" cols="40"  required><%= cobj.getDrivedtl()%></textarea>                   
              
                </div>
                
                 
                  <div class="form-group">
                    <label for="position" class="text-uppercase font-weight-bold text-primary">Enter Employees Designation :</label>
                      <input type="text" name="position" class="form-control" required value="<%= cobj.getPosition()%>" onblur="checkname()" onfocus= "clearname()">
                  <div  class="text-danger font-weight-bold" id="nameerrormessage">
                  </div>
                </div> 
                
                   
                  <div class="form-group">
                    <label for="driveplace" class="text-uppercase font-weight-bold text-primary">Enter Drive Location :</label>
					<input type="text" name="driveplace" class="form-control" required value="<%= cobj.getDriveplace()%>">

                   </div> 
                   
                      
               
                
                 
                  <div class="form-group">
                   <label for="email" class="text-uppercase font-weight-bold text-primary" > Company Email Address :</label>
                   <input type="email" name="email" class="form-control" value="<%= cobj.getEmail()%>" readonly onblur="checkemail()" onfocus= "clearemail()" >
                    <div class="text-danger font-weight-bold" id="emailerrormessage"></div>
                </div>
                       
                   <div class="form-group">
                    <label for="password" class="text-uppercase font-weight-bold text-primary">Enter Password :</label>
                    <input type="password" name="password" class="form-control" value="<%= cobj.getPassword()%>" required onblur="checkpassword()" onfocus= "clearpassword()">
                     <div class="text-danger font-weight-bold" id="passerrormessage"></div>
                </div>
                
                
                   <fieldset>
            
    				<legend style="color: brown;">ACADEMIC CRITERIA FOR STUDENTS :</legend>	       
                <div class="form-group">
                    <label for="req10perc" class="text-uppercase font-weight-bold text-primary">Class X Criteria :</label>
                    <input type="number" name="req10perc" class="form-control" value="<%= cobj.getReq10perc()%>" required>
                  </div>
                
                
                <div class="form-group">
                    <label for="req12perc" class="text-uppercase font-weight-bold text-primary">Class XII Criteria :</label>
                    <input type="number" name="req12perc" class="form-control" value="<%= cobj.getReq12perc()%>" required>
          
                </div>
                
                
                <div class="form-group">
                    <label for="reqbtechcgpa" class="text-uppercase font-weight-bold text-primary">B.Tech CGPA Criteria :</label>
                    <input type="number" name="reqbtechcgpa" class="form-control" value="<%= cobj.getReqbtechcgpa()%>" required>
                  
                </div>
                
                 <div class="form-group">
                    <label for="yeargap" class="text-uppercase font-weight-bold text-primary">Year Gap Allowed For Students[YES/NO] :</label>
                    <input type="text" name="yeargap" class="form-control" value="<%= cobj.getYeargap()%>" required maxlength="3">
                </div>
                
                
                <div class="form-group">
                    <label for="backlog" class="text-uppercase font-weight-bold text-primary">Backlog Allowed For Students[YES/NO] :</label>
                    <input type="text" name="backlog" class="form-control" value="<%= cobj.getBacklog()%>" required onblur="checkname()" onfocus= "clearname()">
                  <div  class="text-danger font-weight-bold" id="nameerrormessage">
                  </div>
                </div>
                
                
              	<div class="form-group">
                    <label for="reqstream" class="text-uppercase font-weight-bold text-primary">Stream :</label> &nbsp;&nbsp;
                    <input type="checkbox"  name="CSE" value="CSE" <% if(cobj.getReqstream().indexOf("CSE")!=-1) { %> checked <% } %> />
                       <span class="text-info">CSE</span> &nbsp;&nbsp;
                    <input type="checkbox" name="ECE" value="ECE" <% if(cobj.getReqstream().indexOf("ECE")!=-1) { %> checked <% } %> />
                       <span class="text-info">ECE</span> &nbsp;&nbsp;
                    <input type="checkbox" name="IT" value="IT"  <% if(cobj.getReqstream().indexOf("IT")!=-1) { %> checked <% } %>/>
                       <span class="text-info">IT</span>
                       <br/>   &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         
                       
                        <input type="checkbox" name="ME" value="ME" <% if(cobj.getReqstream().indexOf("ME")!=-1) { %> checked <% } %> />
                       <span class="text-info">ME</span>
                        <input type="checkbox" name="EEE" value="EEE" <% if(cobj.getReqstream().indexOf("EEE")!=-1) { %> checked <% } %> />
                       <span class="text-info">EEE</span>
                        <input type="checkbox" name="CE" value="CE" <% if(cobj.getReqstream().indexOf("CE")!=-1) { %> checked <% } %> />
                       <span class="text-info">CE</span>
                </div>
                
                
                 <div class="form-group">
                    <label for="reqskill" class="text-uppercase font-weight-bold text-primary">Skills Required :</label> &nbsp;&nbsp;&nbsp;<br/>
                      <textarea name="reqskill"  rows="5" cols="20" required ><%= cobj.getReqskill()%></textarea>    
                 
                </div>
           
                   </fieldset>  
               
                        
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;         
                <input type="submit" class="btn btn-primary" value="UPDATE ACOUNT"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
              </form>
            </div> <!-- Form tag div -->
          </div> <!-- Card Body End -->
       </div> <!-- Card End -->
     </div> <!-- Col alignment end -->
    </div> <!-- Row End -->
</div> <!-- Container End -->

 </body>
</html>
