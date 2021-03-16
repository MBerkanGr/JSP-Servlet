<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Oluşturma</title>
</head>
<body>

	<h2>Cookie Oluşturma</h2>
	
	<% 
		Cookie isim = new Cookie("ad","MehmetBerkan");    //Value boşluk olmayacak 
		isim.setMaxAge(6000);
		response.addCookie(isim);
	
		Cookie soyIsim = new Cookie("soyad","Görel");
		isim.setMaxAge(6000);
		response.addCookie(soyIsim);
	
		out.println("Cookie oluşturuldu!");
		
	%>	
		
		Cookie okumak için <a href='Cookie_Oku.jsp'>Buraya</a> tıklayın...

	
</body>
</html>