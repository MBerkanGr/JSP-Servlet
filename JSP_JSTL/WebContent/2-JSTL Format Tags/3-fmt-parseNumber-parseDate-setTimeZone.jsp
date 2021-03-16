<%@page import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-fmt-3</title>
</head>
<body>

	<h1>JSP - JSTL - FMT </h1>
	
	<hr>
	
	<h3>JSTL fmt:parseNumber : </h3>
	
	<c:set var="sayimiz" value="571632" />			
	<fmt:parseNumber var="parseNumberSayimiz" type="number" value="${sayimiz}" integerOnly="true" />
	Sayımız = <font color="blue"> <c:out value="${sayimiz}" /> </font>
	<br>
	fmt:parseNumber ile işlenen sayımız = <font color="red"> <c:out value="${parseNumberSayimiz}"/> </font>
	
	<hr> 
	
	<h3>JSTL fmt:parseDate : </h3>
	
	<c:set var="tarih" value="29-05-2019" />
	<fmt:parseDate value="${tarih}" var = "parseDateTarih" pattern="dd-MM-yyyy" />
	Tarihimiz = <font color="blue"> <c:out value="${tarih}"/> </font>
	<br>
	fmt:parseDate ile işlenen tarihimiz = <font color="red"> <c:out value = "${parseDateTarih}"/> </font>
	
	<hr>
	
	<h3>JSTL fmt:setTimeZone : </h3>
	
	<c:set var="zaman" value="<%= new Date() %>" />
	Geçerli Tarih ve Saat: 
	<font color="blue"> <fmt:formatDate value="${zaman}" type="both" timeStyle="long" dateStyle="long"/> </font>
	<br>
	fmt:setTimeZone ile saat dilimini değiştirerek : <fmt:setTimeZone value="GMT-2"/>
	<font color="green">GMT-2</font>
	<br>
	Değişen Tarih Ve Saat = 
	<font color="red"> <fmt:formatDate value="${zaman}" type="both" timeStyle="long" dateStyle="long" /> </font>
	
	
	
	
</body>
</html>