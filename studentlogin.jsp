<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
</head>
<body background="images\pic1.jpg" style="	background-repeat: no-repeat;background-size: 100%;" >
<jsp:include page="indexmenu.jsp"/>
		<br/>
		<br/>
	 <div style="color: black;font-weight: bold;" align="center">
	 <h2>STUDENT LOGIN</h2>
	 </div>
	 <br/>
	 <div align="center">
	  <%
		 if (request.getAttribute("errormsg") != null)
   		   out.print(request.getAttribute("errormsg"));
	 %></div>
	 <br/>
	 <form action="studentloginservlet" method="post">
	 <div align="center">
	 <table>
           <tr>
              <th> STUDENTS REG. NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</th>
              <td><input type="number" name="uniregno"></td>
           </tr>
               <tr>
              <th><br/></th>
              <td><br/></td>
           </tr>    
           <tr>
              <th> STUDENTS PASSWORD :</th>
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
		<span>Not Registered?</span>
		<a href="studentreg.jsp" style="color:white;">Sign Up</a>
	</div>
</body>
</html>