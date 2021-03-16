<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP-MAIL 2</title>

<%

	//https://mkyong.com/java/javamail-api-sending-email-via-gmail-smtp-example/	

	String result;

	String to = "mehmetberkangorel@gmail.com";
	String from = "berkangr61@gmail.com";
	String host = "localhost";

	
	Properties prop = new Properties();
    prop.put("mail.smtp.host", "smtp.gmail.com");
    prop.put("mail.smtp.port", "587");
    prop.put("mail.smtp.auth", "true");
    prop.put("mail.smtp.starttls.enable", "true");
	
	Authenticator auth = new Authenticator() {
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication("berkangr61@gmail.com", "-----");
		}
	};
	
	Session mailSession = Session.getInstance(prop, auth);    
	
	try{
		
		MimeMessage message = new MimeMessage(mailSession);
		message.setFrom(new InternetAddress(from));
		message.addRecipient(Message.RecipientType.TO,
                new InternetAddress(to));
		
		message.setSubject("Hey JSP!");
		message.setText("Bu bir JSP sayfasından gelmektedir");
		Transport.send(message);
		result="Mesaj gönderildi! Başarılı";
		
	}catch(MessagingException mex){
		 mex.printStackTrace();
	     result = "Error: unable to send message....";
	}

%>

</head>
<body>
      <h1>Send Email using JSP</h1>
      
      <p align = "center">
         <% 
            out.println("Result: " + result + "\n");
         %>
      </p>


</body>
</html>