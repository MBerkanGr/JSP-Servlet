<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hatırla Beni!</title>
</head>
<body>

	<%!
		String kullaniciAdi, sifre, hatirlatma;
	%>
	
	<%
		kullaniciAdi = request.getParameter("kullaniciAdi");
		sifre = request.getParameter("sifre");
		hatirlatma = request.getParameter("hatirlatma");
		
		if(hatirlatma!=null){
			Cookie cookieKullaniciAdi = new Cookie("kullaniciAdi",kullaniciAdi);
			cookieKullaniciAdi.setMaxAge(900000);
			response.addCookie(cookieKullaniciAdi);
			
			Cookie cookieSifre = new Cookie("sifre",sifre);
			cookieSifre.setMaxAge(900000);
			response.addCookie(cookieSifre);
			
			out.println("Bir daha ki sefere sizi hatırlayacağım");
		}
		else{
			Cookie cookieKullaniciAdi = new Cookie("kullaniciAdi","");
			cookieKullaniciAdi.setMaxAge(900000);
			response.addCookie(cookieKullaniciAdi);
			
			Cookie cookieSifre = new Cookie("sifre","");
			cookieSifre.setMaxAge(900000);
			response.addCookie(cookieSifre);
			
			out.println("Bir daha ki sefere sizi hatırlamayacağım");
			
		}
	%>
	<br><br>
	
	<a href="Cookie_Login.jsp">Buradan</a>dönebilirsiniz...
	
</body>
</html>