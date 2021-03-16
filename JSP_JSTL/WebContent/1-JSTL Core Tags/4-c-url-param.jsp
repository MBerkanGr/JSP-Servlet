<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-4</title>
</head>
<body>

	<h1>JSP JSTL CORE URL-PARAM BÖLÜM 1</h1>
	
	<c:url value="4-c-url-param-2.jsp" var="gonderilecekParametreler">
		<c:param name="adi" value="Mehmet Berkan" />
		<c:param name="soyadi" value= "Görel" />
		<c:param name="parola" value="2020" />
		<c:param name="yas" value="20" />
	</c:url>
	
	<a href='<c:out value="${gonderilecekParametreler}" /> ' >JSTL C:URL PARAM KULLANIMI (BÖLÜM 2) </a>	
	
		

</body>
</html>