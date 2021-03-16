<%@page import="java.awt.image.BufferedImage"%>
<%@ page contentType="image/jpeg" %>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.*" %>
<!--<%@ page import="com.sun.image.codec.jpeg.*" %>-->
<%@ page import="javax.servlet.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dinamik Tablo - JSP</title>
</head>
<body>

	<%
		response.reset();
		ServletOutputStream cikti = response.getOutputStream();
		
		BufferedImage servletResim = new BufferedImage(550,300,BufferedImage.TYPE_INT_RGB);
		
		Graphics2D graf = (Graphics2D)servletResim.getGraphics();
	
		graf.setColor(Color.gray);
		graf.fill3DRect(0, 0, 550, 300, true);
		
		Font font = new Font("TimesRoman",Font.BOLD,25);
		graf.setFont(font);
		
		graf.setColor(Color.black);
		graf.drawString("JSP ile Dinamik Grafikler ve Banner'lar", 50, 30);
		
		graf.setColor(new Color(255,230,230));
		graf.drawString("JSP ile Dinamik Grafikler ve Banner'lar", 48, 28);
		
		graf.setColor(Color.white);
		graf.drawRect(50,70,60,60);
		graf.fillRect(50, 170, 80, 80);
		
		graf.drawOval(200, 70, 60, 60);
		graf.fillOval(200, 170, 120, 80);
		
		graf.drawLine(350, 100, 500, 220);
		graf.drawLine(350, 220, 500, 100);
		
		//JPEGImageEncoder enkoder = JPEGCodec.createJPEGEncoder(cikti);    ARTIK SUN.COM PAKETLER KULLANILMIYOR
		//enkoder.encode(servletResim);
		
		cikti.close();
		
	
	%>


</body>
</html>