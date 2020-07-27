<%@page import="java.util.List"%>
<%@page import="com.proj.model.student"%>
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
   	<form action="studentsearchservlet" >
   	<div>
   		 <input type="text" name="search"  placeholder="Search Registration No" >
   		 <input type="submit" name="btn" value="SEARCH">
   	</div>
   	</form>
   <br/>
   
 <%
    if(request.getAttribute("slist") != null)
    {
      List<student> slist = (List<student>) request.getAttribute("slist");
      if(slist.size() > 0)
      {
    %>
        <h1> ALL STUDENT DETAILS</h1>
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
         
          <%
             for(student uobj : slist)
   	         {
         %>
             <tr>
                <td><%= uobj.getUniregno() %></td>
                <td><%= uobj.getStream() %></td>
                <td><%= uobj.getFullname() %></td>
                <td><%= uobj.getGender() %></td>
                <td><%= uobj.getDob() %></td>
                <td><%= uobj.getPhnno() %></td>
                <td><%= uobj.getEmail() %></td>
                <td><%= uobj.getFathername() %></td>
                <td><%= uobj.getMothername() %></td>
                <td><%= uobj.getPhydisblty() %></td>
                <td><%= uobj.getL_bengali() %></td>
                <td><%= uobj.getL_english() %></td>
                <td><%= uobj.getL_hindi() %></td>
                <td><%= uobj.getXboard() %></td>
                <td><%= uobj.getXyop() %></td>
                <td><%= uobj.getXperc() %></td>
                <td><%= uobj.getXschool() %></td>
                <td><%= uobj.getXiiboard() %></td>
                <td><%= uobj.getXiiyop() %></td>
                <td><%= uobj.getXiiperc() %></td>
                <td><%= uobj.getXiischool() %></td>
                <td><%= uobj.getDiplomaboard() %></td>
                <td><%= uobj.getDipyop() %></td>
                <td><%= uobj.getDipperc() %></td>
                <td><%= uobj.getDipclg() %></td>
                <td><%= uobj.getBtechboard() %></td>
                <td><%= uobj.getBtechyop() %></td>
                <td><%= uobj.getBtechcgpa() %></td>
                <td><%= uobj.getBtechcollegename() %></td>
                <td><%= uobj.getYeargap() %></td>
                <td><%= uobj.getBacklog() %></td>
                
            
             <td> <a href="studentdelete?uniregno=<%=uobj.getUniregno()%>">DELETE</a> </td>
              <td> <a href="admineligiblecompanyshow?uniregno=<%=uobj.getUniregno()%>">ELIGIBLE COMPANY</a> </td>
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