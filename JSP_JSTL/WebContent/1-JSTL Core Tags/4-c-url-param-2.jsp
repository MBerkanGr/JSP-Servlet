<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-4-1</title>
</head>
<body>

	<h1>JSP-JSTL-CORE-URL PARAM-BÖLÜM 2</h1>
	
		<b>Adı Soyadı : </b> ${param.adi} ${param.soyadi}
		<br>
		<b>Parola : </b> ${param.parola}
		<br>
		<b>Yaşı : </b> ${param.yas} 	

</body>
</html>