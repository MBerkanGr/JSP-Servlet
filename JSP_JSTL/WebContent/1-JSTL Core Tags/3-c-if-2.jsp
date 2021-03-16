<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-3.1</title>
</head>
<body>

	<h1>JSTL İF KULLANIMI BÖLÜM 2</h1>
	
	<h2>
		<c:if test="${param.gecerlilikdenetimi}">
		Geçerlilik denetimi : ${param.gecerlilikdenetimi}
		</c:if>
	
		<br>
	
		<c:if test="${param.adisoyadi != null}">
		Adı soyadı null degilse? != null : ${param.adisoyadi}
		</c:if>
		
		<br>
		
		<c:if test="${param.adisoyadi ne null}">
		Adı soyadı null degilse? ne null : ${param.adisoyadi}
		</c:if>
		
		<br>
		
		<c:if test="${not empty(param.adisoyadi)}">
		Adı soyadı boş değilse? : ${param.adisoyadi}
		</c:if>
		
		<br>
		
		<c:if test="${param.puani >= 0 and param.puani<= 10 }">
		0-10 üzerinden puanı : ${param.puani}
		</c:if>
	
	</h2>
	
	
</body>
</html>