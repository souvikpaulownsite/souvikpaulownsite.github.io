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
<title>Company Home</title>
</head>
<body background="images/companybackground.jpg" style="background-repeat:no repeat;background-size:100% 100%;height:800px;">
<jsp:include page="companymenu.jsp"/>
<h1 style="color:white; margin-top:150px; text-align:center;font-family:vardana">&nbsp;&nbsp;&nbsp;"If you are trying to create a company,<br/>&nbsp;&nbsp;&nbsp;&nbsp; it's like baking a cake.<br/>&nbsp;&nbsp;&nbsp;&nbsp; You have to have all the ingredients<br/>&nbsp;&nbsp;&nbsp;&nbsp; in the right proprotion." </h1>
<h1 style="color:white;text-align:center;font-family:vardana;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Elon Musk</h1>
</body>
</html>