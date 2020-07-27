<%@page import="com.proj.model.student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="    background-color: #87daba;">
	<%
    if(request.getAttribute("sobj") != null)
    {
      student sobj = (student) request.getAttribute("sobj");
    %>
        <h1> SEARCHED STUDENT DETAILS</h1>
        <table border="2">
           <tr>
              <th>UNIVERSITY REGISTRATION NO.</th>
              <th>STREAM</th>
              <th>FULLNAME </th>
              <th>GENDER </th>
              <th>DATE OF BIRTH </th>
              <th>CONTACT NO </th>
              <th>EMAIL_ID </th>
              <th>FATHER NAME </th>
              <th>MOTHER NAME </th>
              <th>PHYSICAL DISABILITY </th>
              <th>LANGUGE_BENAGLI </th>
              <th>LANGUGE_ENGLISH </th>
              <th>LANGUGE_HINDI </th>
              <th>CLASS X BOARD </th>
              <th>CLASS X YOP </th>
              <th>CLASS X PERCENTAGE  </th>
              <th>CLASS X SCHOOL</th>
              <th>CLASS XII BOARD</th>
              <th>CLASS XII YOP</th>
              <th>CLASS XII PERCENTAGE</th>
              <th>CLASS XII SCHOOL</th>
              <th>DIPLOMA BOARD</th>
              <th>DIPLOMA YOP</th>
              <th>DIPLOMA PERC</th>
              <th>DIPLOMA COLLEGE</th>
              <th>B.TECH BOARD</th>
              <th>B.TECH YOP</th>
              <th>B.TECH CGPA</th>
              <th>B.TECH COLLEGE NAME</th>
              <th>B.TECH YEARGAP</th>
              <th>B.TECH BACKLOG</th>
           </tr>
         
         
             <tr>
                <td><%= sobj.getUniregno() %></td>
                <td><%= sobj.getStream() %></td>
                <td><%= sobj.getFullname() %></td>
                <td><%= sobj.getGender() %></td>
                <td><%= sobj.getDob() %></td>
                <td><%= sobj.getPhnno() %></td>
                <td><%= sobj.getEmail() %></td>
                <td><%= sobj.getFathername() %></td>
                <td><%= sobj.getMothername() %></td>
                <td><%= sobj.getPhydisblty() %></td>
                <td><%= sobj.getL_bengali() %></td>
                <td><%= sobj.getL_english() %></td>
                <td><%= sobj.getL_hindi() %></td>
                <td><%= sobj.getXboard() %></td>
                <td><%= sobj.getXyop() %></td>
                <td><%= sobj.getXperc() %></td>
                <td><%= sobj.getXschool() %></td>
                <td><%= sobj.getXiiboard() %></td>
                <td><%= sobj.getXiiyop() %></td>
                <td><%= sobj.getXiiperc() %></td>
                <td><%= sobj.getXiischool() %></td>
                <td><%= sobj.getDiplomaboard() %></td>
                <td><%= sobj.getDipyop() %></td>
                <td><%= sobj.getDipperc() %></td>
                <td><%= sobj.getDipclg() %></td>
                <td><%= sobj.getBtechboard() %></td>
                <td><%= sobj.getBtechyop() %></td>
                <td><%= sobj.getBtechcgpa() %></td>
                <td><%= sobj.getBtechcollegename() %></td>
                <td><%= sobj.getYeargap() %></td>
                <td><%= sobj.getBacklog() %></td>
           
             <td> <a href="studentdelete?email=<%=sobj.getEmail()%>">DELETE</a> </td>
            </tr>   
                       
        </table>
     <%
     }
      else
      {
    %>
       <h2 style="color: red;">NO RECORD FOUND</h2>
    <%
      }
    
    %>
</body>
</html>