<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
.card {
  border-radius: 5px;
  background-color: #dbd3d3;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 340px;
}
body{
	background-color: #909692;
}
.container {
  padding: 2px 16px;
}
#msg{
	padding-left:auto;
	padding-right:auto;
	margin-left:500px;
	margin-right:500px;
}
</style>
</head>
<body>
<form action="Checkotp.jsp">
<center><br><br><br><br><br>

<div id="msg" text-align="center"></div><br><br><br>
<h2>Check your Mail</h2><br>
<div class="card"><br>
  <div class="container">
  <h4>Enter OTP</h4><br>
    <input type="text" name="otp" style="padding-top:-20px;width:80%;height: 30px;" /> <br><br>
    <input type="submit" value="Submit" class="btn btn-success" style="width:80%;"/> <br><br>
    
  </div>
</div>
<center>
</form>
</body>
</html>
