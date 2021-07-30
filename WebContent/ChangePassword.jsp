<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<% 
	
boolean bol = false;          
String a=request.getParameter("pass1");  
String b=request.getParameter("pass2");
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
boolean rs=false;
if(!a.equals(b)){
	%>
	<jsp:include page="MyAccount.jsp"></jsp:include>
	<script>
		document.getElementById("msg").innerHTML="<div class=\"alert alert-danger\" role=\"alert\">Both Passwords Should be same</div>";
	</script>
	<%
}else{
	try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/ravishankar","root","Shankar@1946");  
		Statement stmt=con.createStatement();
		if(a.equals(b)) {
			rs=stmt.execute("update custaccounts set password='"+a+"' where mail='"+mail+"' ");
		}
	}
	catch(Exception e){
		System.out.println(e);
	}finally {
		%>
			<jsp:include page="MyAccount.jsp"></jsp:include>
			<script>
				document.getElementById("msg").innerHTML="<div class=\"alert alert-success\" role=\"alert\">Password Changed Successfully</div>";
			</script>
		<%
	}
}
%>