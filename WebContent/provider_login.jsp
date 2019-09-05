<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User</title>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/popper.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<style>
.windows-loader {
  width: 100vw;
  height: 100vh;
}
.windows-loader .ball {
  border-radius: 50%;
  background: orange;
  position: absolute;
  transform: translate(-50%, -50%);
  transform-origin: 40px 40px;
}
.windows-loader .ball:nth-child(1) {
  width: 17.5px;
  height: 17.5px;
  left: calc(50% -  40px);
  top: calc(50% - 40px);
  animation: spin 2s 0.075s ease-in-out infinite;
}
.windows-loader .ball:nth-child(2) {
  width: 15px;
  height: 15px;
  left: calc(50% -  40px);
  top: calc(50% - 40px);
  animation: spin 2s 0.15s ease-in-out infinite;
}
.windows-loader .ball:nth-child(3) {
  width: 12.5px;
  height: 12.5px;
  left: calc(50% -  40px);
  top: calc(50% - 40px);
  animation: spin 2s 0.225s ease-in-out infinite;
}
.windows-loader .ball:nth-child(4) {
  width: 10px;
  height: 10px;
  left: calc(50% -  40px);
  top: calc(50% - 40px);
  animation: spin 2s 0.3s ease-in-out infinite;
}
.windows-loader .ball:nth-child(5) {
  width: 7.5px;
  height: 7.5px;
  left: calc(50% -  40px);
  top: calc(50% - 40px);
  animation: spin 2s 0.375s ease-in-out infinite;
}
.windows-loader .ball:nth-child(6) {
  width: 5px;
  height: 5px;
  left: calc(50% -  40px);
  top: calc(50% - 40px);
  animation: spin 2s 0.45s ease-in-out infinite;
}
.windows-loader .ball:nth-child(7) {
  width: 2.5px;
  height: 2.5px;
  left: calc(50% -  40px);
  top: calc(50% - 40px);
  animation: spin 2s 0.525s ease-in-out infinite;
}
.windows-loader .ball:nth-child(8) {
  width: 0px;
  height: 0px;
  left: calc(50% -  40px);
  top: calc(50% - 40px);
  animation: spin 2s 0.6s ease-in-out infinite;
}

body {
  margin: 0;
}
.main-div
{
	margin-top: 50px;
}
.rad
{
	border-radius:40px;
}
@keyframes spin {
  0% {
    transform: rotate(0deg) translate(-50%, -50%);
  }
  90% {
    transform: rotate(360deg) translate(-50%, -50%);
  }
}
.sp
{
float: left;
width: 10%;
height: 550px; /* only for demonstration, should be removed */
background: #ccc;
/*padding: 20px;*/
margin-top: -50px;
}
.hov:hover
{
	text-decoration:none; 
}
</style>
</head>
<body onload="myFunction()">
<!-- <div class="windows-loader" id="loader">
  <div class="ball" ></div>
  <div class="ball" ></div>
  <div class="ball" ></div>
  <div class="ball" ></div>
  <div class="ball" ></div>
  <div class="ball" ></div>
  <div class="ball" ></div>
  <div class="ball" ></div>
</div> -->

<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    if(session.getAttribute("id")==null)
    {
    response.sendRedirect("provider_login.html");
    }

	Object obj1=session.getAttribute("id");
	String str = (String) obj1;
	int eid = Integer.parseInt(str);
	//out.println(eid);
%>
<div id="maindiv">
	<header>
	<nav class="navbar navbar-expand-lg navbar-dark " style="background-color:#03a9f4 !important">
    <a class="navbar-brand" href="index.jsp"><strong>V-CARPOOLING</strong></a>
	</nav>
	</header>
	<main style="height:600px;">
		<div class="main-div">
  			<div class="sp">
  			<img src="img/user.png" class="img-thumbnail">
  			<ul class="list-group">
  				<li class="list-group-item"><%out.println("ID: "+eid); %></li>
  				<a href="provider_login.jsp" class="hov"><li class="list-group-item"><i style='font-size:24px' class='fas'>&#xf015;</i>Home</li></a>
  				<a href="provider_update_det.jsp " class="hov"><li class="list-group-item"><i style='font-size:24px' class='fas'>&#xf4ff;</i>Update</li></a>
  				<a href="ProviderLogoutServlet" class="hov"><li class="list-group-item"><i style='font-size:24px' class='fas'>&#xf011;</i>Logout</li></a>
			</ul>
		</div>
		
	</main>
</div>
<!-- <script>
var myVar;

function myFunction() {
    myVar = setTimeout(showPage, 3000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("maindiv").style.display = "block";
}
</script> --> 
<!-- <footer class="page-footer font-small blue pt-4" style="height: -webkit-fill-available;">

  <div class="footer-copyright text-center py-3">© 2019 Copyright:
    <p> V-CARPOOLING</p>
  </div>

</footer>-->
</body>
 </html>  	 	