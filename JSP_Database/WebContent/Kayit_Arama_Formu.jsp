<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Veritabanı Bağlantısı</title>
</head>
<body>

	<h2>JSP ile Veritabanı Bağlantısı</h2>
	<h3>Arama Formu : </h3>
	
	<form method="post" action="Kayit_Arama_Sonuc.jsp">
		Arama Yapılacak Dize : <br>
		<input type="text" name="dize">
		<input type="submit" value="Ara">
	</form>
	
</body>
</html>