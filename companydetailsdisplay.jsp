
<%@page import="java.util.List"%>
<%@page import="com.proj.model.company"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
	if(session.getAttribute("ainfo")==null){
		response.sendRedirect("adminlogin.jsp");
	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="    background-color: #87daba;">
	<jsp:include page="adminmenu.jsp"/>
   <br/>
   	<form action="companysearchservlet" >
   	<div>
   		 <input type="text" name="search"  placeholder="Search Email" ><input type="submit" name="btn" value="SEARCH">
   	</div>
   	</form>
   <br/>
   
 <%
    if(request.getAttribute("clist") != null)
    {
      List<company> clist = (List<company>) request.getAttribute("clist");
      if(clist.size() > 0)
      {
    %>
        <h1> ALL COMPANY DETAILS</h1>
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
         
          <%
             for(company uobj : clist)
   	         {
         %>
             <tr>
                <td><%= uobj.getName() %></td>
                <td><%= uobj.getOffsite() %></td>
                <td><%= uobj.getReq10perc() %></td>
                <td><%= uobj.getReq12perc() %></td>
                <td><%= uobj.getReqbtechcgpa() %></td>
                <td><%= uobj.getYeargap() %></td>
                <td><%= uobj.getBacklog() %></td>
                <td><%= uobj.getDrivedate() %></td>
                <td><%= uobj.getCtc() %></td>
                <td><%= uobj.getIntrnprd() %></td>
                <td><%= uobj.getStpn() %></td>
                <td><%= uobj.getDrivedtl() %></td>
                <td><%= uobj.getReqstream() %></td>
                <td><%= uobj.getReqskill() %></td>
                <td><%= uobj.getPosition() %></td>
                <td><%= uobj.getDriveplace() %></td>
         
                <td><%= uobj.getEmail() %></td>
            
             <td> <a href="companydelete?email=<%=uobj.getEmail()%>">DELETE</a> </td>
             <td> <a href="admineligiblestudentshow?email=<%=uobj.getEmail()%>">ELIGIBLE STUDENT</a> </td>
            </tr>   
          <%
   	         }
         %>
               
        </table>
     <%
     }
      else
      {
    %>
       <h2 style="color: red;">NO RECORD FOUND</h2>
    <%
      }
    }
    %>
  
</body>
</html>