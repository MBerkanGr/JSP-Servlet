<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-6</title>
</head>
<body>

<h1>JSP-JSTL-CORE-CHOOSE WHEN OTHERWİSE</h1>

	<form action="c-choose-when-otherwise-2.jsp" method="post">
	
		<input size="5" type="text" name= "baslangıcSayisi" />Başlangıç Sayısı <br>
		<input size="5" type="text" name= "bitisSayisi" /> Bitiş Sayısı <br>
		<input size="5" type="text" name= "artisMiktari" /> Artış Miktarı <br>
		
		<input type="submit" value="Gönder" name="gonder"/>
	</form>


</body>
</html>