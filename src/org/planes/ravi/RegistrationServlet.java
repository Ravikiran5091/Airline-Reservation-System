package org.planes.ravi;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		boolean bol = false;          
		String name = request.getParameter("name");
		String mail = request.getParameter("email");
		String mobileno =request.getParameter("mobile");
		String password =request.getParameter("password");
		
		Cookie c1=new Cookie("user",name); 
		response.addCookie(c1);
		
		Cookie c2=new Cookie("email",mail); 
		response.addCookie(c2);
		
		Cookie c3=new Cookie("mobilno",mobileno); 
		response.addCookie(c3);
		
		Cookie c4=new Cookie("password",password); 
		response.addCookie(c4);
		
		int otp = SendEmail.getotp(mail,name);
		String o = Integer.toString(otp);
		
		Cookie c5=new Cookie("otp",o); 
		response.addCookie(c5);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Otp.jsp");	
		requestDispatcher.forward(request, response);
	}
}