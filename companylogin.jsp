<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company Login</title>
</head>
<body background="images\companylogin.png" style="	background-repeat: no-repeat;background-size: 100%;" >
<jsp:include page="indexmenu.jsp"/>
		<br/>
		<div align="center">
		 <%
		 if (request.getAttribute("errormsg") != null)
   		   out.print(request.getAttribute("errormsg"));
	 %></div>
		<br/>
	 <div style="color: white;font-weight: bold;" align="center">
	 <h2>COMPANY LOGIN</h2>
	 </div>
	 <br/>
	 <br/>
	 <form action="companyloginservlet" method="post">
	 <div align="center">
	 <table>
           <tr>
              <th style="color:white;"> COMPANY EMAIL ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</th>
              <td><input type="email" name="email"></td>
           </tr>
               <tr>
              <th><br/></th>
              <td><br/></td>
           </tr>    
           <tr>
              <th style="color:white;"> COMPANY PASSWORD :</th>
              <td><input type="password" name="password"></td>
           </tr>
           <tr>
              <th><br/></th>
              <td><br/></td>
           </tr>
           <tr>
              <td><br/></td>
              <td><br/><input type="submit" value="LOGIN" style="color: snow;background-color: blueviolet;width:100px;height:50px;font-size:25px" ></td>
           </tr>
        	<tr>
              <th><br/></th>
              <td><br/></td>
           </tr>
        </table>
       </div> 
       </form>
       <div align="center">
		<h4><span style="color:white;">New User? </span></h4>
		<a href="companyreg.jsp" style="color:white;">Sign Up</a>
	</div>
</body>
</html>