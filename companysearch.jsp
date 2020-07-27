<%@page import="com.proj.model.company"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="    background-color: #87daba;">>
	<%
    if(request.getAttribute("cobj") != null)
    {
      company cobj = (company) request.getAttribute("cobj");
     
      
    %>
        <h1> SEARCH COMPANY DETAILS</h1>
        <table border="2">
           <tr>
              <th>NAME</th>
              <th>OFFICIAL SITE </th>
              <th>REQUIRED 10 PERCENTAGE </th>
              <th>REQUIRED 12 PERCENTAGE </th>
              <th>REQUIRED B.TECH CGPA </th>
              <th>YEARGAP </th>
              <th>BACKLOG </th>
              <th>DRIVE DATE </th>
              <th>CTC </th>
              <th>INTERN PERIOD </th>
              <th>STIPEND </th>
              <th>DRIVE DETAILS </th>
              <th>REQUIRED STREAM </th>
              <th>REQUIRED SKILL </th>
              <th>POSITION </th>
              <th>DRIVE PLACE </th>
              <th>EMAIL </th>
           </tr>
         
         
             <tr>
                <td><%= cobj.getName() %></td>
                <td><%= cobj.getOffsite() %></td>
                <td><%= cobj.getReq10perc() %></td>
                <td><%= cobj.getReq12perc() %></td>
                <td><%= cobj.getReqbtechcgpa() %></td>
                <td><%= cobj.getYeargap() %></td>
                <td><%= cobj.getBacklog() %></td>
                <td><%= cobj.getDrivedate() %></td>
                <td><%= cobj.getCtc() %></td>
                <td><%= cobj.getIntrnprd() %></td>
                <td><%= cobj.getStpn() %></td>
                <td><%= cobj.getDrivedtl() %></td>
                <td><%= cobj.getReqstream() %></td>
                <td><%= cobj.getReqskill() %></td>
                <td><%= cobj.getPosition() %></td>
                <td><%= cobj.getDriveplace() %></td>
         
                <td><%= cobj.getEmail() %></td>
            
             <td> <a href="companydelete?email=<%=cobj.getEmail()%>">DELETE</a> </td>
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