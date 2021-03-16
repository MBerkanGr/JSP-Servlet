<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Sil</title>
</head>
<body>

	<h2>Cookie Silme</h2>

	<%
		Cookie cookieSil = new Cookie("ad",null);
		cookieSil.setMaxAge(0);
		response.addCookie(cookieSil);
		
		//Bu ikinci blok ile birlikte tüm cookie dosyası silinecek
		Cookie cookieSil2 = new Cookie("soyad",null);
		cookieSil2.setMaxAge(0);
		response.addCookie(cookieSil2);
		
		out.println("Cookie silindi. Tekrar oluşturmak için <br> <a href='Cookie_Olustur.jsp'>buraya</a> tıklayınız...");
	
	
	%>

</body>
</html>