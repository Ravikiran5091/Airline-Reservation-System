<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="">
.avatar {
  vertical-align: middle;
  width: 40px;
  height: 40px;
  border-radius: 50%;
}

.btn{
  width: 290px;
  background: -webkit-linear-gradient(right, #a6f77b,#2dbd6e);
  border: none;
  border-radius: 21px;
  box-shadow: 0px 1px 8px #24c64f;
  cursor: pointer;
  color: white;
  font-family: "Raleway SemiBold", sans-serif;
  height: 42.3px;
  margin: 0 auto;
  margin-top: 10px;
  transition: 0.25s;
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
body {
  background-image: url("https://images.unsplash.com/photo-1436491865332-7a61a109cc05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80");
  height: 70%;
  margin:0;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}	
h1{
	text-align: center;
	color:black;
}
h1.small {
  font-variant: small-caps;
  font-size: 50px;
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
h5, li{
	color:white;
}
span {
  font-size:24px;
  content: "\2708";
}
a{
	color:white;
  padding-left: 15px;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
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
      	if(c1!=null){
      		name=c1[0].getValue();
      	}
      %>
        <h6 style="color:white;"> <% out.println(name);%> </h6>
      </div>
      
    </div>
  </a>
  </div>
</nav>	
<br><br><br><br><br><br><br><br><br><br><br>
<h1 class="small">Welcome To CoolFlights</h1>
<h1 class="small">Let Your Dreams Take Flight!</h1><br><br>
<div style="text-align:center">
<a href="Home.jsp"><input type = "submit" class="btn" value = "Book Flights Now" /></a><br><br><br>
</div>

<br><br><br><br><br><br><br><br>





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
                <div class="col-xs-6 col-sm-5" >
                    <h5>Our Address</h5>
                    <address>121, Clear Water Bay Road Kowloon<br>HONG KONG<br>
                       <i class="fa fa-phone" id="phonenumber"></i>:6303504956<br>
                       <i class="fa fa-envelope"></i>:<a style="left:0;" href="bhangeravishankar2302@gmail.com">bhangeravishankar@gmail.com</a>
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
                <div class="col-xs-12">
                    <p style="padding:0px; border:0px;"></p>
                    <p style="text-align: center;padding-left: 450px; color:white;">© Copyright 2021 RavishankarBhange</p>
                </div>
            </div>
        </div>
    </footer>
</div>





</body>
</html>