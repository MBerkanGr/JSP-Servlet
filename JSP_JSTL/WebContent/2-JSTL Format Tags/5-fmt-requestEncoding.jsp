<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-fmt-5</title>
</head>
<body>

	<h3>JSP-JSTL-FMT-requestEncoding</h3>
	
	
	<fmt:requestEncoding value="UTF8"/>  <!-- requestBundle karakter hatalarını gidermek için kullanılır -->
	
	<fmt:setBundle basename="com.mehmetberkan.BundleSinifiRU" var="dilSinifi"/>
		<fmt:message key="onAd.mesajkisim1" bundle="${dilSinifi }" /> -
		<fmt:message key="onAd.mesajkisim2" bundle="${dilSinifi }" /> -
		<fmt:message key="onAd.mesajkisim3" bundle="${dilSinifi }" /> -
		<fmt:message key="onAd.mesajkisim4" bundle="${dilSinifi }" /> 
	


</body>
</html>