<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="bootstrap4.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<style>
body {
  font-family: "Lato", sans-serif;
}
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #3b8bc3;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: white;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
  margin-top: 50px;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

</style>
</head>
<body>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
   <br/>
  <a href="index.jsp">Home</a>
  <br/>
  <a href="studentlogin.jsp">Student</a>
  <br/>
  <a href="companylogin.jsp">Company</a>
  <br/>
  <a href="adminlogin.jsp">Admin</a>
  <br/>
  <a href="aboutus.jsp">About Us</a>
  <br/>
  <a href="contactus.jsp">Contact Us</a>
  <br/>
</div>
<div id="main" style="background-color:#3b8bc3;">
<div class="row">
  <div class="col-md-1"><span style="font-size:25px;cursor:pointer" onclick="openNav()">&#9776;</span></div>
  <div class="col-md-11"><h1 style="text-align:center;color: white;    margin-top: 25px;">OPPORTUNITY</h1></div>
  </div>
</div>


<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}

</script>
   
</body>
</html> 
