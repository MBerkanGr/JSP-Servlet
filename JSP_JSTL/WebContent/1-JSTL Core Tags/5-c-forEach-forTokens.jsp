<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-5</title>
</head>
<body>

<h1>JSP-JSTL-CORE-FOREACH FORTOKEN BÖLÜM 1</h1>

	<c:url value="5-c-forEach-forTokens-2.jsp" var="gonderilecekParametreler">
		<c:param name="for_each_icin_parametre_adi" value="Orhan,Eripek,Mehmet Berkan,Görel" />
		<c:param name="for_token_icin_parametre_adi" value="Orhan Eripek ; babacan adam ; gibi adam Berkan ; Görel" />
	</c:url>
	
	<a href='<c:out value="${gonderilecekParametreler}" /> ' >JSTL FOREACH FORTOKEN BÖLÜM 2</a>	
		


</body>
</html>