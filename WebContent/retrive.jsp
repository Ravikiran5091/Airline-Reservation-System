<%@ page import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>AirLine Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
  .card {
    border-radius: 7px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 1100px;
  margin: auto;
  text-align: left;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}
.column1 {
  float: left;
  width: 19.33%;
}

.row{
padding-left:58px;
padding-right:8px;
}
.row:after {
  content: "";
  display: table;
  clear: both;
}
.card button {
  float:right;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  height:40px;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
h5,h3,P{
 padding:0px;
 margin:2px;
 padding-bottom:0px;
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
  padding-left:250px;
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
.small {
text-align: center;
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
      <li class="nav-item active">
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
      	if(c1!=null){
      		name=c1[0].getValue();
      	}
      %>
        <h6 style="color:white;"> <% out.println(name); %> </h6>
      </div>
      
    </div>
  </a>
  </div>
</nav><br><br>
<%

String from= request.getParameter("from");
String dest= request.getParameter("destination");
String date= request.getParameter("date");
String tclass=request.getParameter("travelclass");
%>
<div style="background-color: #787878;position:sticky;">
<br><br>

<form action = "retrive.jsp" method="post">
<center>
<select name="from" id="from" class="dop">
    <option value="Vizag" <%if(from.equals("Vizag")){ %> selected <% } %>>Visakhapatnam</option>
    <option value="Chennai" <% if(from.equals("Chennai")){ %> selected <% } %>>Chennai</option>
    <option value="Pune" <% if(from.equals("Pune")){ %> selected <% } %>  >Pune</option>
    <option value="Delhi" <% if(from.equals("Delhi")){ %> selected <% } %>>Delhi</option>
    <option value="Hyderabad" <% if(from.equals("Hyderabad")){ %> selected <% } %>>Hyderabad</option>
  </optgroup>
  </select>
  <i style="font-size:25px" class="fa">&#xf0ec;</i>
 <select name="destination" id="destination" class="dop">
    <option value="Vizag" <%if(dest.equals("Vizag")){ %> selected <% } %>>Visakhapatnam</option>
    <option value="Chennai" <% if(dest.equals("Chennai")){ %> selected <% } %>>Chennai</option>
    <option value="Pune" <% if(dest.equals("Pune")){ %> selected <% } %>  >Pune</option>
    <option value="Delhi" <% if(dest.equals("Delhi")){ %> selected <% } %>>Delhi</option>
    <option value="Hyderabad" <% if(dest.equals("Hyderabad")){ %> selected <% } %>>Hyderabad</option>
  </optgroup>
</select>
<input type="date" name ="date" class="dop" value=<%= date%> >
<select name="travelclass" id="travelclass" class="dop">
    <option value="Economy" <%if(tclass.equals("Economy")){ %> selected <% } %>>Economy</option>
    <option value="Business" <%if(tclass.equals("Business")){ %> selected <% } %>>Business</option>
    <option value="Firstclass" <%if(tclass.equals("Firstclass")){ %> selected <% } %>>First Class</option>
    <option value="Premiumeconomy" <%if(tclass.equals("Premiumeconomy")){ %> selected <% } %>>Premium Economy</option>
  </optgroup>
</select>
<button class="btn" value = "Search"><i style="font-size:24px" class="fa">&#xf002;</i></button>
</center>
</form>

<br>
</div>
<br><br><br>
<% 

int count=0;
try{  
	
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/ravishankar","root","Shankar@1946");    
	Statement stmt=con.createStatement();  
	ResultSet rs=stmt.executeQuery("select * from flights where date='"+date+"' ");  
	while(rs.next())  {
		count++;
	%>
		<div class="card">
  <div class="row" style="padding-left:55px;">
    <div class="column1"><h2><%out.println(rs.getString(10)); %></h2></div>
    <div class="column1"><h2><%out.println(rs.getString(1)); %></h2></div>
  </div>
  <div class="row">
    <div class="column1"><p> <%out.println(from); %> </p></div>
    <div class="column1"><p></p></div>
    <div class="column1"><p> <%out.println(dest); %> </p></div>
    <div class="column1"><p></p></div>
  </div><br>
  <div class="row">
    <div class="column1"><h3> <%out.println(rs.getString(6)); %> </h3></div>
    <div class="column1"><h5 class="price"> <%out.println(rs.getString(8)); %> </h5></div>
    <div class="column1"><h3> <%out.println(rs.getString(7)); %> </h3></div>
    <div class="column1"><h3> <%out.println(rs.getString(9)); %>  RS</h3></div>
    <div class="column1" style="padding-bottom:9px;" id="myBtn"><p><button>Book Now</button></p></div>
  </div> 
</div><br><br>
<% 
	}
	if(count==0){
		count++;
	%>
			<br><br><br><br><h1 class="small">Sorry no flights available!!!</h1><br><br><br><br><br><br><br><br><br>
   <%}
	
	con.close();  
	}
	catch(Exception e){ 
		System.out.println(e);
	}  
%>

<br><br>
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