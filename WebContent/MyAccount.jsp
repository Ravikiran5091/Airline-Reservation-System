<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>

* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.containerrr {
  width:50%;
  margin-left: 150px;
  margin-right: 150px;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.coll-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.coll-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.rowww:after {
  content: "";
  display: table;
  clear: both;
}
.button {
width:100%;
  float: right;
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 6px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .coll-25, .coll-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
h2 {
  padding-left:50px;
    padding-right:50px;
    display: flex;
    flex-direction: row;
}
h2:before,
h2:after {
    content: "";
    flex: 5 5;
    border-bottom: 2px solid #000;
    margin: auto;
}
h2 {
	padding-left:50px;
    padding-right:50px;
  	display: flex;
  	flex-direction: row;
}
h2:before,
h2:after {
    content: "";
    flex: 5 5;
    border-bottom: 2px solid #000;
    margin: auto;
}
body {
  background-color: #c9c9c9;
  height: 70%;
  margin:0;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.btn{
  width: 45px;
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  border-radius: 9px;
}
.dop{
  background-color: white;
  border: none;
  color: black;
  padding: 5px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  border-radius: 5px;
}
.footer {
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: #2e2525;
   color: white;
   text-align: center;
}.avatar {
  vertical-align: middle;
  width: 40px;
  height: 40px;
  border-radius: 50%;
}
.column {
  float: right;
  width: 5.33%;
  padding: 0px;
  padding-left: 30px;
  padding-right: 0px;
  border-right: 0px;
  overflow-x: visible;
}

.col {
  border-left:90px;
  float: left;
  width: 33.33%;
  padding: 5px;
}

.rowW{
  padding-left:90px;
    padding-right:90px;
}

.rowW::after {
  border:50px;
  content: "";
  clear: both;
  display: table;
}
address{
    font-size:80%;
    margin:0px;
    color:white;
}
.small {
  font-variant: small-caps;
  font-size: 50px;
}
select{
  width: 290px;
  height: 40px;
}
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
a{
  padding-left: 15px;
}
.col {
  border-left:90px;
  float: left;
  width: 33.33%;
  padding: 5px;
}

.rowWee{
  padding-left:90px;
    padding-right:90px;
}

.rowWee::after {
  border:50px;
  content: "";
  clear: both;
  display: table;
}
address{
    font-size:80%;
    margin:0px;
    color:white;
}
.row-content {
    margin:0px auto;
    padding: 50px 0px 50px 0px;
    border-bottom: 1px ridge;
    min-height:400px;
    color: white;
}

.row-footer{
    background-color: #363636;
    margin:0px auto;
    padding: 20px 0px 20px 0px;
}
span {
  font-size:24px;
  content: "\2708";
}
#msg{
	padding-left:auto;
	padding-right:auto;
	margin-left:400px;
	margin-right:400px;
}
.mySlides {display:none}
.w3-left, .w3-right, .w3-badge {cursor:pointer}
.w3-badge {height:13px;width:13px;padding:0}
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar fixed-top">
  <a class="navbar-brand" href="Coolflights.jsp">CoolFlights <span>&#9992;</span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="Home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">MyBookings</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">AboutUs</a>
      </li>
    </ul>
    <a href="MyAccount.jsp">
      <div class="row">

      <div class="column" style="width:10%;margin-top:8px;">
        <i style="font-size:25px;color:white;" class="fa">&#xf2bd;</i>
      </div>

      <div class="column">
      <%
      	Cookie[] c1 =null; 
    	c1=request.getCookies();    
    	String name = "MyAccount";
    	String mail = "Null";
    	for(Cookie c : c1){
    		if((c.getName()).equals("email")){
    			mail=c.getValue();
    		}
    		if((c.getName()).equals("user")){
    			name=c.getValue();
    		}
    	}
      %>
        <h6 style="color:white;"> <% out.println(name); %> </h6>
      </div>
      
    </div>
  </a>
  </div>
</nav>
<br><br><br><br>
<div id="msg" text-align="center"></div>
<br>

<%
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ravishankar","root","Shankar@1946");  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select mobileno from custaccounts where mail='"+mail+"' ");
rs.next();
String mobileno = rs.getString(1);

%>
<center>
<h1 style="margin-right: 590px;">My Profile</h1><br>
<div class="containerrr">
    <div class="rowww">
      <div class="coll-25">
        <label for="name">NAME</label>
      </div>
      <div class="coll-75">
        <input type="text" name="name" value=<%=name%> readonly>
      </div>
    </div>
    <div class="rowww">
      <div class="coll-25">
        <label for="email">EMAIL</label>
      </div>
      <div class="coll-75">
        <input type="text" name="email" value=<%=mail%> readonly>
      </div>
    </div>
    <div class="rowww">
      <div class="coll-25">
        <label for="mobileno">MOBILE NO</label>
      </div>
      <div class="coll-75">
        <input type="text" name="mobileno" value=<%=mobileno%> readonly>
      </div>
    </div>
</div><br><br>

<h1 style="margin-right: 470px;">Change Password</h1><br>
<form action="ChangePassword.jsp"> 
<div class="containerrr">
    <div class="rowww">
      <div class="coll-25">
        <label for="pass1">Enter Password</label>
      </div>
      <div class="coll-75">
        <input type="text" name="pass1">
      </div>
    </div>
    <div class="rowww">
      <div class="coll-25">
        <label for="pass2">Confirm Password</label>
      </div>
      <div class="coll-75">
        <input type="text" name="pass2">
      </div>
    </div><br><button class="button button3" style="background-color: #f05954;">Edit</button><br><br>
</div>
</form>



</center>
<br><br><br><br>
<div class="footer">
<footer class="row-footer">
  <br>
        <div class="container">
            <div class="row">             
                <div class="col-xs-5 col-xs-offset-1 col-sm-2 col-sm-offset-1">
                    <ul class="list-unstyled"><br>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col-xs-6 col-sm-5">
                    <h5>Our Address</h5>
                    <address>121, Clear Water Bay Road Kowloon<br>HONG KONG<br>
                       <i class="fa fa-phone" id="phonenumber"></i>:6303504956<br>
                       <i class="fa fa-envelope"></i>: 
                       <a href="bhangeravishankar2302@gmail.com">bhangeravishankar@gmail.com</a>
                    </address>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="nav navbar-nav" style="padding: 40px 10px;"><ul>
                        <a class="btn-social-icon btn-google-plus" href="http://google.com/+"><i class="fa fa-google-plus"></i></a>
                        <a class="btn-social-icon btn-facebook" href="http://www.facebook.com/profile.php?id="><i class="fa fa-facebook"></i></a>
                        <a class="btn-social-icon btn-linkedin" href="http://www.linkedin.com/in/"><i class="fa fa-linkedin"></i></a>
                        <a class="btn-social-icon btn-twitter" href="http://twitter.com/"><i class="fa fa-twitter"></i></a>
                        <a class="btn-social-icon btn-youtube" href="http://youtube.com/"><i class="fa fa-youtube"></i></a>
                        <a class="btn-social-icon" href="mailto:"><i class="fa fa-envelope-o"></i></a>
                        </ul>
                    </div>
                </div>
                <div class="col-xs-12" style="text-align: center;"><br>
                    <p style="text-align: center;padding-left: 450px; color:white;">© Copyright 2021 RavishankarBhange</p>
                </div>
            </div>
        </div>
    </footer>
</div>




</body>
</html>
