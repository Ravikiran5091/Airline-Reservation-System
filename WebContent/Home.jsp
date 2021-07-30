<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>AirLine Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {
  background-color: #e8e6e6;
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
span {
  font-size:24px;
  content: "\2708";
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
</nav>
<div class="w3-content w3-display-container" style="max-width:1550px;"><br><br>
  <img class="mySlides" src="4.jpg" style="width:100%">
  <img class="mySlides" src="2.jpg" style="width:100%">
  <img class="mySlides" src="1.png" style="width:100%">
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 3500); // Change image every 2 seconds
}
</script>

<form action = "retrive.jsp" method="post">
<center>
<br><br><br><br>
<h2 class="small">Smart search Made simple!!!</h2><br><br><br>
<select name="from" id="from" class="dop">
	<option value="" selected disabled hidden><span class="glyphicon glyphicon-plane"></span></p>     From</option>
    <option value="Vizag">Visakhapatnam</option>
    <option value="Chennai">Chennai</option>
    <option value="Pune">Pune</option>
    <option value="Delhi">Delhi</option>
    <option value="Hyderabad">Hyderabad</option>
  </optgroup>
  </select>
  <i style="font-size:25px" class="fa">&#xf0ec;</i>
 <select name="destination" id="destination" class="dop">
    <option value="" selected disabled hidden> Destination</option>
    <option value="Pune">Pune</option>
    <option value="Delhi">Delhi</option>
    <option value="Vizag">Visakhapatnam</option>
    <option value="Chennai">Chennai</option>
    <option value="Hyderabad">Hyderabad</option>
  </optgroup>
</select>
<input type="date" name ="date"class="dop"/>
<select name="travelclass" id="travelclass" class="dop">
    <option value="" selected disabled hidden>Class</option>
    <option value="Economy">Economy</option>
    <option value="Business">Business</option>
    <option value="Firstclass">First Class</option>
    <option value="Premiumeconomy">Premium Economy</option>
  </optgroup>
</select>
<button class="btn" value = "Search"><i style="font-size:24px" class="fa">&#xf002;</i></button>
</center>
</form>
<br><br><br>
<center>
<h1 class="">Flights around the World</h1><br>
<h3 class="cool">Search for the cheapest flights to any airport anywhere in the world and we'll help you find </h3>
<h3 class="cool">the best airfare deals available.</center>
<img src="https://thumbs.dreamstime.com/b/simple-world-digital-map-outlined-continents-light-grey-colour-world-digital-outlined-map-background-157304566.jpg" class="center">


<br><br><br>
<h1 class="small center" style="text-align: center;">CoolFlights</h1>
<br>

<div class="rowW">
  <div class="col">
    <img src="https://patch.com/img/cdn20/users/112920/20161113/032041/styles/raw/public/article_images/airplane_and_palm_tree-1479068312-1093.jpg" alt="Snow" style="width:100%; height: 350px;" >
  </div>
  <div class="col">
    <img src="https://cdn1.matadornetwork.com/blogs/1/2018/07/Glacier-themed-airplane-Icelandair-560x420.jpg" alt="Forest" style="width:100%; height: 350px;">
  </div>
  <div class="col">
    <img src="https://s3.amazonaws.com/html5.powershow.com/9312215/data/img1.jpg" alt="Forest" style="width:100%; height: 350px;">
  </div>
</div>


<br><br><br><br><br>

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