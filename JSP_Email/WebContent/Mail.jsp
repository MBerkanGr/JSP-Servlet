<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.activation.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.servlet.http.*,javax.servlet.*"%>
<%@page import="java.io.UnsupportedEncodingException"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-MAİL</title>
</head>
<body>

	<h2>JSP İLE EMAİL</h2>

	<%
		try
		{
			String SMTP_HOST ="smtp.gmail.com";
			
			InternetAddress kime = new InternetAddress("mehmetberkangorel@hotmail.com","Mehmet Görel");
			InternetAddress kimden = new InternetAddress("berkangr61@gmail.com","Berkan Görel");
			InternetAddress bilgiCC = new InternetAddress("bilgicc@domain.com","BilgilendirilenCC");
			InternetAddress bilgiBCC = new InternetAddress("bilgibcc@domain.com","BilgilendirilenBCC");
			
			Properties propertylerimiz = new Properties();
			//propertylerimiz.put("mail.smtp.host", "localhost");
			propertylerimiz.put("mail.smtp.host", SMTP_HOST);
			propertylerimiz.put("mail.smtp.auth", "true");
			propertylerimiz.put("mail.debug", "false");
			propertylerimiz.put("mail.smtp.ssl.enable", "true");
			
			Session oturum = Session.getInstance(propertylerimiz, new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication(){
					return new PasswordAuthentication("berkangr61@gmail.com","2b0er8ka09761b");
				}
			});
			
			Message mesaj = new MimeMessage(oturum);
			
			mesaj.addRecipient(Message.RecipientType.TO, kime);
			mesaj.addRecipient(Message.RecipientType.CC, bilgiCC);
			mesaj.addRecipient(Message.RecipientType.BCC, bilgiBCC);
			
			mesaj.setSubject("JSPden size e-mail var!!");
			mesaj.setFrom(kimden);
			mesaj.setText("Merhaba Sayin okur,\rİşte size JSP sayfasından gönderilen mail içeriği.\nSaygılar.");
			
			Transport.send(mesaj);
			out.println("E-mailiniz gönderildi..");
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	
	%>

</body>
</html>