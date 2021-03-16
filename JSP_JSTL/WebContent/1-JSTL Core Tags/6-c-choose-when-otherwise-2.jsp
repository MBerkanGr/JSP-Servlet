<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-6.1</title>
</head>
<body>

<h1>JSP JSTL CORE BÖLÜM 2</h1>

	<c:forEach var="i" begin="${param.baslangicSayisi}" end="${param.bitisSayisi}" step="${param.artisMiktari}">
	
		<c:choose>
		
			<c:when test="${i < 10}"> <c:out value="${i}" /> (Bebeklik Çağı)<br> </c:when>
			<c:when test="${i < 15}"> <c:out value="${i}" /> (Çocukluk Çağı)<br> </c:when>
			<c:when test="${i < 18}"> <c:out value="${i}" /> (Delikanlılık Çağı)<br> </c:when>
			<c:when test="${i < 30}"> <c:out value="${i}" /> (Gençlik Çağı)<br> </c:when>
			<c:when test="${i < 60}"> <c:out value="${i}" /> (Olgunluk Çağı)<br> </c:when>
			<c:when test="${i < 80}"> <c:out value="${i}" /> (Emeklilik Çağı)<br> </c:when>
			<c:when test="${i < 100}"> <c:out value="${i}" /> (Kabir Çağı)<br> </c:when>
			
			<c:otherwise><c:out value="${i}" />(ÖTEKİ DÜNYA)<br></c:otherwise>
			<!-- otherwise else diyebiliriz whenler olmazsa burası çalışır -->
	</c:choose>
	</c:forEach>
	

</body>
</html>