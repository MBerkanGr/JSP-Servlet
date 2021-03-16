<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-xml-1</title>
</head>
<body>

	<h2>XML KULLANIMI</h2>
	
	<c:import url="arabalar.xml" var="url" />
	<x:parse xml="${url }" var="XmlBelgesi" />
	
	<table border="1">
		<thead>
			<tr>
				<th><B>MARKASI</B></th>
				<th><b>MODELİ</b></th>
				<th><b>RENGİ</b></th>
			</tr>
		</thead>
		<tbody>
			
	<x:forEach select="$XmlBelgesi/arabalar/araba" var="otomobil">
		
		<tr>
			<td><font color="red"><x:out select="$otomobil/marka"/></font></td>
			<td><font color="red"><x:out select="$otomobil/model"/></font></td>
			<td><font color="red"><x:out select="$otomobil/renk"/></font></td>
		</tr>
			
	</x:forEach>		
			
		</tbody>
		
	
	</table>
	


</body>
</html>