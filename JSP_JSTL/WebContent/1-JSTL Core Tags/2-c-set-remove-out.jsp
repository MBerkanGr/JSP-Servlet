<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-2</title>
</head>
<body>

	<h1>JSP-JSTL-CORE-C:SET C:REMOVE C:OUT</h1>
	
	<c:set var="degisken" value="Mehmet Berkan Görel" />
	<!-- Bildiğimiz değişken atamak gibidir. String degisken = "Mehmet Berkan Görel"; -->
	
	<c:out value="${degisken}" />
	<hr>
	
	<c:remove var="degisken" />
	<c:out value="${degisken}" />
	<c:out value="Mesajınız silimiş" />
	

</body>
</html>