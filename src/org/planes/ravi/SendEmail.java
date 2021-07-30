package org.planes.ravi;

import java.util.*;  
import com.email.durgesh.*;
import javax.mail.*;  
import javax.mail.internet.*;  
import javax.activation.*;  
  
public class SendEmail  
{  
	public static int otp(int len)
    {
        String numbers = "0123456789";
        Random rndm_method = new Random();
        char[] otp = new char[len];
        String sol="";
        for (int i = 0; i < len; i++)
        {
            otp[i] =numbers.charAt(rndm_method.nextInt(numbers.length()));
            sol+=otp[i];
        }
        return Integer.parseInt(sol);
    }
	public static int getotp(String em,String name){  
		int otp=500000;
		try {
			Email email = new Email("bhangeravishankar1211@gmail.com","Shankar@1946");
			email.setFrom("bhangeravishankar1211@gmail.com","COOLFLIGHTS INDIA");
			otp = SendEmail.otp(6);
			email.setSubject("CoolFlights Resitration");
			email.setContent("<h1>Registration for CoolFlights</h1><h3>Your OTP is "+otp+"</h3>","text/html");
			email.addRecipient(em);
			email.send();
		}
		catch(Exception e) {
			System.out.println(e);
		}	
		return otp;
   }  
}  