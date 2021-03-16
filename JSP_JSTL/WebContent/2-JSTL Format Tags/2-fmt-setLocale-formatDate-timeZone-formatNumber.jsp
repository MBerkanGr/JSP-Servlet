<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-fmt-2</title>
</head>
<body>

	<h1><font color="red"><b>fmt:setLocale - fmt:formatDate - fmt:timeZone - fmt:formatNumber</b></font></h1>

	<jsp:useBean id="zaman" class="java.util.Date" />
	
	<fmt:setLocale value="tr" /> <strong>TÜRKİYE</strong>
	<fmt:formatDate value="${zaman}" type="both" dateStyle="full" timeStyle="default" />
	<br>
	<fmt:timeZone value="GMT">
	    <fmt:formatDate value="${zaman}" type="both" pattern="dd/MMMM/yyyy, EEEE, HH:mm:ss, z"/>
	</fmt:timeZone>
	<br>
	<fmt:formatNumber value="${zaman.time}" />
	<br>
	<fmt:formatNumber value="5400" type="currency" minFractionDigits="2" maxIntegerDigits="10" />
	
	
	<hr>
	
	
	<fmt:setLocale value="ar" /> <strong>ARAP</strong>
	<fmt:formatDate value="${zaman}" type="both" dateStyle="full" timeStyle="default" />
	<br>
	<fmt:timeZone value="GMT">
	    <fmt:formatDate value="${zaman}" type="both" pattern="dd/MMMM/yyyy, EEEE, HH:mm:ss, z"/>
	</fmt:timeZone>
	<br>
	<fmt:formatNumber value="${zaman.time}" />
	<br>
	<fmt:formatNumber value="5400" type="currency" minFractionDigits="2" maxIntegerDigits="10" />
	
	
	<hr>

	
	<fmt:setLocale value="en" /> <strong>İNGİLTERE</strong>
	<fmt:formatDate value="${zaman}" type="both" dateStyle="full" timeStyle="default" />
	<br>
	<fmt:timeZone value="GMT">
	    <fmt:formatDate value="${zaman}" type="both" pattern="dd/MMMM/yyyy, EEEE, HH:mm:ss, z"/>
	</fmt:timeZone>
	<br>
	<fmt:formatNumber value="${zaman.time}" />
	<br>
	<fmt:formatNumber value="5400" type="currency" minFractionDigits="2" maxIntegerDigits="10" />
	
	
	<hr>

	
	<fmt:setLocale value="ja" /> <strong>JAPONYA</strong>
	<fmt:formatDate value="${zaman}" type="both" dateStyle="full" timeStyle="default" />
	<br>
	<fmt:timeZone value="GMT">
	    <fmt:formatDate value="${zaman}" type="both" pattern="dd/MMMM/yyyy, EEEE, HH:mm:ss, z"/>
	</fmt:timeZone>
	<br>
	<fmt:formatNumber value="${zaman.time}" />
	<br>
	<fmt:formatNumber value="5400" type="currency" minFractionDigits="2" maxIntegerDigits="10" />
	
	    

</body>
</html>