<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<% 

String a=request.getParameter("otp");
int aa = Integer.parseInt(a);
Cookie[] c1 =null; 
c1=request.getCookies();    
String name = "MyAccount";
String mail = "-";
String password ="";
String mobileno="-";
for(Cookie c : c1){
	
	if((c.getName()).equals("user")){
		name=c.getValue();
	}
	if((c.getName()).equals("email")){
		mail=c.getValue();
	}
	if((c.getName()).equals("mobileno")){
		mobileno=c.getValue();
	}
	if((c.getName()).equals("password")){
		password=c.getValue();
	}
}
for(Cookie c :c1){
	if((c.getName()).equals("otp")){
		int otp = Integer.parseInt(c.getValue());
		if(aa==otp){
			
			try{  
				Class.forName("com.mysql.jdbc.Driver");  
				Connection con=DriverManager.getConnection(  
				"jdbc:mysql://localhost:3306/ravishankar","root","Shankar@1946");  
				
				PreparedStatement st=con.prepareStatement("insert into custaccounts values(?,?,?,?)");  
				st.setString(1,mail);
				st.setString(2,name);
				st.setString(3,password);
				st.setString(4,mobileno);
				int i=st.executeUpdate(); 
				
				Cookie[] cv = null;
				cv = request.getCookies();
				for(Cookie ct: cv){
					ct.setMaxAge(0);
					response.addCookie(ct);
				}
				
				con.close(); 
			}
			catch(Exception e){
				System.out.println(e);
			}
			
			response.sendRedirect("login.html");
		}else{
			Cookie[] cv = null;
			cv = request.getCookies();
			for(Cookie ct: cv){
				ct.setMaxAge(0);
				response.addCookie(ct);
			}
			%>
			<jsp:include page="Otp.jsp"></jsp:include>
			<script>
				document.getElementById("msg").innerHTML="<div class=\"alert alert-danger\" role=\"alert\">Invalid OTP. Please try after some time</div>";
			</script>
			<%
		}
	}
}

%>