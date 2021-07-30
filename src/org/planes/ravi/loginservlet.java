package org.planes.ravi;

import org.planes.ravi.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/logservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		boolean bol = false;          
		String a=request.getParameter("email");  
		String b=request.getParameter("password");
		String name="";
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/ravishankar","root","Shankar@1946");  
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select mail,password,name from custaccounts");  
			while(rs.next()) {  
				if((rs.getString(1)).equals(a) && (rs.getString(2)).equals(b)) {
					bol=true;
					name=rs.getString(3);
				}
			} 
		}
		catch(Exception e){
			System.out.println(e);
		}finally {
			if(bol==true) {
				Cookie ck=new Cookie("user",name); 
				response.addCookie(ck);
				Cookie c2=new Cookie("email",a);
				response.addCookie(c2);
				response.sendRedirect("http://localhost:3033/CaseStudyServlet/Coolflights.jsp"); 
			}else {
				response.sendRedirect("http://localhost:3033/CaseStudyServlet/login.html"); 
			}
		}
	}

}
