<%@ page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oturum</title>
</head>
<body>

	<h2>Oturum Yönetimi</h2>
	
	<%
		HttpSession oturumNesne = request.getSession();
	
		out.println("<br> Kullanıcı ismi : "+ oturumNesne.getValue("kullaniciAdi"));
		
		Date olusturulmaTarihi = new Date(oturumNesne.getCreationTime());
		Date erisimTarihi = new Date(oturumNesne.getLastAccessedTime());
		
		out.println("<br> Oturumun açıldığı tarih : " + olusturulmaTarihi);
		out.println("<br> Oturuma en son ulaşım tarih : " + erisimTarihi);
		
		out.println("<br> Oturuma maximum ara verebileceğiniz süre : " + oturumNesne.getMaxInactiveInterval());
		
		//Eğer kullanıcı uygulama ile hiç bir iletişime geçmezse otomatik oturum sona erer. O süre default olarak yukarıda ki kod ile gösterilir
		//O süreyi kendimiz ayarlamak için aşağıdaki kod ile yapabiliriz. 
		
		oturumNesne.setMaxInactiveInterval(10);
		
		out.println("<br>Yeni ara verme süresi : " + oturumNesne.getMaxInactiveInterval());
		
		out.println("<br>Oturumu sona erdirmek için <a href='Oturum_Kapat.jsp'>buraya<a/> tıklayınız. ");
		
	
	%>

</body>
</html>