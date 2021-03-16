<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-fmt-4</title>
</head>
<body>

	<h2>JSTL fmt:bundle - fmt:setBundle - fmt:message</h2>
	
	<hr> <font color="red">JSTL fmt:bundle - fmt:message</font> <br>
	<fmt:bundle basename="com.mehmetberkan.BundleSinifiTR">
		<fmt:message key="onAd.mesajkisim1"/> - 
		<fmt:message key="onAd.mesajkisim2"/> - 
		<fmt:message key="onAd.mesajkisim3"/> - 
		<fmt:message key="onAd.mesajkisim4"/> 
	
	</fmt:bundle>
	
	
	<hr> <h3><font color="red">JSTL fmt:bundle prefix="" - fmt:message</font></h3>
	
	<fmt:bundle basename="com.mehmetberkan.BundleSinifiTR" prefix="onAd.">
		<fmt:message key = "mesajkisim1" /> -
		<fmt:message key = "mesajkisim2" /> -
		<fmt:message key = "mesajkisim3" /> -
		<fmt:message key = "mesajkisim4" />
	</fmt:bundle>
	
	
	<hr> <h3> <font color="red"> JSTL fmt:setBundle - fmt:message TÜRKÇE </font> </h3>
	<fmt:setBundle basename="com.mehmetberkan.BundleSinifiTR" var="dilSinifi" scope="session"/> <!-- scope: Geçerlilik -->
		<fmt:message key="onAd.mesajkisim1" bundle="${dilSinifi }" /> -
		<fmt:message key="onAd.mesajkisim2" bundle="${dilSinifi }" /> -
		<fmt:message key="onAd.mesajkisim3" bundle="${dilSinifi }" /> -
		<fmt:message key="onAd.mesajkisim4" bundle="${dilSinifi }" />
		
	<!-- var=dilSinifi değişkendir. mesela altta tekrar o değişkenin değerleri atanacak ve ona göre hareket edecek -->
		
	
		<hr> <h3> <font color="red"> JSTL fmt:setBundle - fmt:message İNGİLİZCE </font> </h3>
	<fmt:setBundle basename="com.mehmetberkan.BundleSinifiEN" var="dilSinifi"/>
		<fmt:message key="onAd.mesajkisim1" bundle="${dilSinifi }" /> -
		<fmt:message key="onAd.mesajkisim2" bundle="${dilSinifi }" /> -
		<fmt:message key="onAd.mesajkisim3" bundle="${dilSinifi }" /> -
		<fmt:message key="onAd.mesajkisim4" bundle="${dilSinifi }" />
	
	
		
		<hr> <h3> <font color="red"> JSTL fmt:setBundle - fmt:message RUSÇA </font> </h3>
	<fmt:setBundle basename="com.mehmetberkan.BundleSinifiRU" var="dilSinifi"/>
		<fmt:message key="onAd.mesajkisim1" bundle="${dilSinifi }" /> -
		<fmt:message key="onAd.mesajkisim2" bundle="${dilSinifi }" /> -
		<fmt:message key="onAd.mesajkisim3" bundle="${dilSinifi }" /> -
		<fmt:message key="onAd.mesajkisim4" bundle="${dilSinifi }" /> 
	
		
		
	




</body>
</html>