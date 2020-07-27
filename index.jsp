

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
  box-sizing: border-box;
}
.menu {
  float: left;
  width: 20%;
}
.menuitem {
  padding: 8px;
  margin-top: 7px;
  border-bottom: 1px solid #f1f1f1;
}
.main {
  float: left;
  width: 60%;
  padding: 0 20px;
  overflow: hidden;
}
.right {
  background-color: lightblue;
  float: left;
  width: 20%;
  padding: 10px 15px;
  margin-top: 7px;
}

@media only screen and (max-width:800px) {
  /* For tablets: */
  .main {
    width: 80%;
    padding: 0;
  }
  .right {
    width: 100%;
  }
}
@media only screen and (max-width:500px) {
  /* For mobile phones: */
  .menu, .main, .right {
    width: 100%;
  }
}
</style>
</head>
<body  background="images/placement-background-image-3.jpg" style="	background-repeat: no-repeat;background-size:100% 100%;height:660px;">
<jsp:include page="indexmenu.jsp"/>
<!-- Marquee TAGS -->
  
  <marquee width="100%" behavior="scroll" padding:10px 0;bgcolor="lightblue"><h1><i> We always assure that every student can get their best results,and we hope that they 
		 always prefer our site for recruitment system.</h1></i> </marquee>


<div style=padding:4px;">
<div align="center">
 <u> <h1>FIRST STEP WITH US</h1></u>
</div>
</div>

<div style="overflow:auto">
  <div class="menu">
    <div class="">.</div>
    <div class="">.</div>
  </div>

  <div class="main">
 
  
    <div style="padding-top:150px;padding-left:150px;" align="left">
<h1>"Tomorrow becomes never.<br/>No matter how small the task,<br/>Take the first step now!"</h1>
<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Tim Ferriss</h1>
</div>
  </div>

 
</div>
</body>
</html>