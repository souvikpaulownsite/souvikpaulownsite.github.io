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
<title>Admin Home</title>
</head>
<body background="images/admin.jpg" style="background-repeat:no repeat;background-size:100% 100%;height:800px;">
<jsp:include page="adminmenu.jsp"/>
</body>
</html>