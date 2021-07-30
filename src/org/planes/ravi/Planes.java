package org.planes.ravi;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Planes
 */
@WebServlet("/pln")
public class Planes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter out = response.getWriter();
		String a = request.getParameter("from");
		String b = request.getParameter("destination");
		String date = request.getParameter("date");
		int d = Integer.parseInt(date);
		String month = request.getParameter("month");
		String s1="",s2="",s4="",s5="",s6="";
		int n3=1,n7,count=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ravishankar","root","Shankar@1946");
		    Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from Planes where frompnt='"+a+"' and dstpnt='"+b+"' and month='"+month+"' and date>="+date+" order by date;  ");
			out.println("<html>");
			out.println("<head>");
			out.println("<style>");
			out.println(".topnav {\r\n" + 
					"  background-color: #333;\r\n" + 
					"  overflow: hidden;\r\n" + 
					"}\r\n" + 
					"\r\n" + 
					".popup .content {\r\n" + 
					" position: absolute;\r\n" + 
					" top: 50%;\r\n" + 
					" left: 50%;\r\n" + 
					" transform: translate(-50%,-150%) scale(0);\r\n" + 
					" width: 300px;\r\n" + 
					" height: 450px;\r\n" + 
					" z-index: 2;\r\n" + 
					" text-align: center;\r\n" + 
					" padding: 20px;\r\n" + 
					" border-radius: 20px;\r\n" + 
					" background: #262626;\r\n" + 
					" box-shadow:  38px 38px 56px #1e1e1e, \r\n" + 
					"             -25px -25px 38px #1e1e1e;\r\n" + 
					" z-index: 1;\r\n" + 
					"}\r\n" + 
					"\r\n" + 
					".popup .close-btn {\r\n" + 
					" position: absolute;\r\n" + 
					" right: 20px;\r\n" + 
					" top: 20px;\r\n" + 
					" width: 30px;\r\n" + 
					" height: 30px;\r\n" + 
					" color: white;\r\n" + 
					" font-size: 30px;\r\n" + 
					" border-radius: 50%;\r\n" + 
					" padding: 2px 5px 7px 5px;\r\n" + 
					" background: #292929;\r\n" + 
					" box-shadow:  5px 5px 15px #1e1e1e, \r\n" + 
					"             -5px -5px 15px #1e1e1e;\r\n" + 
					" }\r\n" + 
					"\r\n" + 
					".popup.active .content {\r\n" + 
					"transition: all 300ms ease-in-out;\r\n" + 
					"transform: translate(-50%,-50%) scale(1);\r\n" + 
					"}\r\n" + 
					"\r\n" + 
					"h1 {\r\n" + 
					" text-align: center;\r\n" + 
					" font-size: 32px;\r\n" + 
					" font-weight: 600;\r\n" + 
					" padding-top: 20px;\r\n" + 
					" padding-bottom: 10px;\r\n" + 
					"}\r\n" + 
					"\r\n" + 
					"a {\r\n" + 
					" font-weight: 600;\r\n" + 
					" color: white;\r\n" + 
					"}\r\n" + 
					"\r\n" + 
					".input-field .validate {\r\n" + 
					"padding: 20px;\r\n" + 
					"font-size: 16px;\r\n" + 
					"border-radius: 10px;\r\n" + 
					"border: none;\r\n" + 
					"margin-bottom: 15px;\r\n" + 
					"color: #bfc0c0;\r\n" + 
					"background: #262626;\r\n" + 
					"box-shadow: inset 5px 5px 5px #232323, \r\n" + 
					"            inset -5px -5px 5px #292929;\r\n" + 
					"outline: none;\r\n" + 
					"}\r\n" + 
					"\r\n" + 
					".first-button {\r\n" + 
					"color: white;\r\n" + 
					"font-size: 18px;\r\n" + 
					"font-weight: 500;\r\n" + 
					"padding: 30px 50px;\r\n" + 
					"border-radius: 40px;\r\n" + 
					"border: none;\r\n" + 
					"position: absolute;\r\n" + 
					"top: 50%;\r\n" + 
					"left: 20%;\r\n" + 
					"transform: translate(-50%, -50%);\r\n" + 
					"background: #262626;\r\n" + 
					"box-shadow:  18px 18px 25px #1e1e1e, \r\n" + 
					"             -15px -15px 25px #1e1e1e;\r\n" + 
					"transition: box-shadow .35s ease !important;\r\n" + 
					"outline: none;\r\n" + 
					"}\r\n" + 
					"\r\n" + 
					".first-button:active {  \r\n" + 
					"background: linear-gradient(145deg, #222222, #292929);\r\n" + 
					"box-shadow:  5px 5px 10px #262626, \r\n" + 
					"             -5px -5px 10px #262626;\r\n" + 
					"border: none;\r\n" + 
					"}\r\n" + 
					"\r\n" + 
					".second-button {\r\n" + 
					"color: white;\r\n" + 
					"font-size: 18px;\r\n" + 
					"font-weight: 500;\r\n" + 
					"margin-top: 20px;\r\n" + 
					"padding: 20px 30px;\r\n" + 
					"border-radius: 40px;\r\n" + 
					"border: none;\r\n" + 
					"background: #262626;\r\n" + 
					"box-shadow:  8px 8px 15px #202020, \r\n" + 
					"             -8px -8px 15px #2c2c2c;\r\n" + 
					"transition: box-shadow .35s ease !important;\r\n" + 
					"outline: none;\r\n" + 
					"}\r\n" + 
					"\r\n" + 
					".second-button:active{\r\n" + 
					"background: linear-gradient(145deg,#222222, #292929);\r\n" + 
					"box-shadow: 5px 5px 10px #262626, -5px -5px 10px #262626;\r\n" + 
					"border: none;\r\n" + 
					"outline: none;\r\n" + 
					"}\r\n" + 
					"p{\r\n" + 
					"color: #bfc0c0;\r\n" + 
					"padding: 20px;\r\n" + 
					"}\r\n" + 
					"\r\n" + 
					"/* Style the links inside the navigation bar */\r\n" + 
					".topnav a {\r\n" + 
					"  float: right;\r\n" + 
					"  color: #f2f2f2;\r\n" + 
					"  text-align: center;\r\n" + 
					"  padding: 14px 19px;\r\n" + 
					"  text-decoration: none;\r\n" + 
					"  font-size: 17px;\r\n" + 
					"  justify-content: space-between;\r\n" + 
					"  display: flex;\r\n" + 
					"}\r\n" + 
					"\r\n" + 
					"/* Change the color of links on hover */\r\n" + 
					".topnav a:hover {\r\n" + 
					"  background-color: #ddd;\r\n" + 
					"  color: black;\r\n" + 
					"}\r\n" + 
					"\r\n" + 
					"/* Add a color to the active/current link */\r\n" + 
					".topnav a.active {\r\n" + 
					"  background-color: #04AA6D;\r\n" + 
					"  color: white;\r\n" + 
					"}");
			out.println("body{\r\n" + 
					"margin:0;\r\n" + 
					"}body, html {"
					+ "\r\n" + 
					"  height: 90%;\r\n" + 
					"}\r\n" + 
					"\r\n" + 
					"body {"
					+ "\r\n" + 
					"  /* The image used */\r\n" + 
					"  background-image: url(\"https://gifdownload.net/wp-content/uploads/2020/03/plane-animation-gif-2.gif\");\r\n" + 
					"\r\n" + 
					"  /* Full height */\r\n" + 
					"  height: 50%;\r\n" + 
					"\r\n" + 
					"  /* Center and scale the image nicely */\r\n" + 
					"  background-position: center;\r\n" + 
					"  background-repeat: no-repeat;\r\n" + 
					"  background-size: cover;\r\n" + 
					"}"+"tr:nth-child(even) {background-color: #f2f2f2;}"+"tr:nth-child(odd) {background-color: #dea55b;}"+"table{ width:70% }"
					);
			out.println("</style>");
			out.println("</head>");
    		out.println("<body><div class=\"topnav\">\r\n" + 
    				"  \r\n" + 
    				"  <a href=\"Registration.html\">SingUp</a>\r\n" + 
    				"  <a href=\"help.html\">Help</a>\r\n" + 
    				"  <a class=\"active\" href=\"index.html\">Home</a>\r\n" + 
    				"  \r\n" + 
    				"</div>");
    		out.println("<center><br><br>");
    		//out.println("<div style=\"background-image: url('');\">");
    		out.println("<table border=\"5\">");
    		out.println("<tr>");
    				out.println("<th>From</th>");
    				out.println("<th>Destination</th>");
    				out.println("<th>Date</th>");
    				out.println("<th>Month</th>");
    				out.println("<th>Time</th>");
    				out.println("<th>AirLine</th>");
    				out.println("<th>Cost</th>");
    		out.println("</tr>");
    		boolean bf = false;
			while (rs.next()) 
            {  
                	s1=rs.getString("frompnt");
                	s2=rs.getString("dstpnt");
                	n3=rs.getInt("date");
                	s4=rs.getString("month");
                	s5=rs.getString("time");
                	s6=rs.getString("fname");
                	n7=rs.getInt("cost");
                	if(bf || n3==d ){
                		bf=true;
                	}
                		out.println("<tr>");
                				out.println("<td>"+s1+"</td>");
                				out.println("<td>"+s2+"</td>");
                				out.println("<td>"+n3+"</td>");
                				out.println("<td>"+s4+"</td>");
                				out.println("<td>"+s5+"</td>");
                				out.println("<td>"+s6+"</td>");
                				out.println("<td>"+n7+"</td>");
                		out.println("</tr>");
                		count++;
            }
			if(bf==false) {
				out.println("<h1 style=\"color:green;\">WE DON'T HAVE FLIGHTS ON YOUR DATE... </h1>");
				if(count>0) {
					out.println("<h1 style=\"color:green;\">SO PLEASE CHECK OHTERS FLIGHTS</h1>");
				}
			}
			out.println("</table>");		
    		out.println("</center>");
    		out.println("</body>");
    		out.println("</html>");
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
}