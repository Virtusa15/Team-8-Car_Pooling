<%@ page language="java" import="java.sql.*,javax.servlet.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>

<link href="css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/popper.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<style>
.windows-loader 
{
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
<div id="maindiv">
	<header>
	<nav class="navbar navbar-expand-lg navbar-dark " style="background-color:#03a9f4 !important">
    <a class="navbar-brand" href="index.jsp"><strong>V-CARPOOLING</strong></a>
	</nav>
	</header>
	
	<%

	Object obj1=session.getAttribute("id");
	String str = (String) obj1;
	int eid = Integer.parseInt(str);
		try
		{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");   
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","root");  
            PreparedStatement ps=con.prepareStatement("SELECT * FROM V_USER WHERE emp_id=?");
            ps.setInt(1,eid);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {%>
            	<%-- <% out.println(rs.getString(1)+" ");
            	out.println(rs.getString(2)+" ");
            	out.println(rs.getString(3)+" ");
            	out.println(rs.getString(4)+" ");
            	out.println(rs.getString(5)+" ");%> --%>
	
	
	
	<main style="height:600px;">
		<div class="main-div">
		<div class="container">
  		<div class="row">
    		<div class="col">
      			<div class="card" style="width: 45rem;margin-left:-100px">
  				<div class="card-body">
    			<h5 class="card-title">UPDATE DETAILS</h5>
    			<hr>
   <form method="post" action="UpdateUserServlet">
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label" >EMPLOYEE ID</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="formGroupExampleInput" name="emp_id" value="<% out.println(rs.getString(1));%>" readonly>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">FULLNAME</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="formGroupExampleInput" name="full_name" value="<% out.println(rs.getString(2));%>">
    </div>
  </div>
  <fieldset class="form-group">
    <div class="row">
      <legend class="col-form-label col-sm-2 pt-0">GENDER</legend>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios1" value="Male">
          <label class="form-check-label" for="gridRadios1">
            Male
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios2" value="Female">
          <label class="form-check-label" for="gridRadios2">
            Female
          </label>
        </div>
      </div>
    </div>
  </fieldset>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">EMAIL</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" name="email" value="<% out.println(rs.getString(4));%>">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">MOBILE</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" name="email" value="<% out.println(rs.getString(6));%>">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">PASSWORD</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3" name="password" value="<% out.println(rs.getString(5));%>">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label"></label>
    <div class="col-sm-10">
      <div class="custom-control custom-switch">
  <input type="checkbox" class="custom-control-input" id="customSwitch1" onclick="showPass()">
  <label class="custom-control-label" for="customSwitch1">Show password</label>
</div>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">
      <input type="submit" class="btn btn-info" style="background-color:#FFC107 ;border-color:#FFC107" value="UPDATE">
    </div>
  </div>
</form>
 		  		</div>
			</div>
    	 </div>
    		<div class="col">
      		
    		</div>
  		</div>
		</div>
		</div>
	</main>
</div>
<% }
		}
       		catch(Exception e)
       		{
       		System.out.print(e);
       		e.printStackTrace();
       		}
       		%>
       		
<script>
function showPass() {
  var x = document.getElementById("inputPassword3");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
</body>
</html>