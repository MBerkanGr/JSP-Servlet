<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-xml-2-2</title>
</head>
<body>

	<h2>JSP - JSTL - XML - 2 - 2 CEVAP SAYFASI</h2>

	<c:import url="arabalar.xml" var="url"/>
	<x:parse xml="${url}" var="XmlBelgesi"/>
	
	<table border="1">
		<thead>
			<tr>
				<th>MARKASI</th>
				<th>MODELİ</th>
				<th>RENGİ<th>
			</tr>
		</thead>
		<tbody>
		
	<c:set var="markaAdiGelen" value="${param.markaAdi }"/>	
		
	<x:forEach var="otomobil" select="$XmlBelgesi/arabalar/araba">
		<x:if select="$otomobil/marka=$markaAdiGelen" >
			<c:set var="otomobilinAdi" value="XmldeBulunuyor" />
			<tr>
				<td><font color="red"><x:out select="$otomobil/marka"/></font></td>
				<td><font color="red"><x:out select="$otomobil/model"/></font></td>
				<td><font color="red"><x:out select="$otomobil/renk"/></font></td>
			</tr>
		</x:if>
	</x:forEach>	
		
	<c:if test="${otomobilinAdi!='XmldeBulunuyor' }">
		<tr>
			<td><font color="red"><c:out value="${param.markaAdi} Marka XML de bulunmuyor"/></font></td>
			<td><font color="red"><c:out value="-"/></font></td>
			<td><font color="red"><c:out value="-"/></font></td>
		
		</tr>	
	</c:if>	
		
		</tbody>	
	
	</table>

</body>
</html>