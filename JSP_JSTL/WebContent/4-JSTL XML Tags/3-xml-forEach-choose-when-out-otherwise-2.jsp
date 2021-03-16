<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-xml-3-2</title>
</head>
<body>
	<h2>JSP - JSTL - XML - 3 - 2</h2>
	
		<c:import url="arabalar.xml" var="url"/>
		<x:parse xml="${url}" var="XmlBelgesi"/>
		
		<table border="1">
			<thead>
				<tr>
					<th>Markası</th>
					<th>Model</th>
					<th>Rengi</th>
				</tr>
			</thead>
			<tbody>
				
				<c:set var="markaAdiGelen" value="${param.markaAdi}"/>
				
				<x:forEach var="otomobil" select="$XmlBelgesi/arabalar/araba">
					<x:choose>
						<x:when select="$otomobil/marka=$markaAdiGelen">
							<c:set var="otomobilinAdi" value="XmldeBulunuyor"/>
						
								<tr>
									<td><x:out select="$otomobil/marka"/></td>
									<td><x:out select="$otomobil/model"/></td>
									<td><x:out select="$otomobil/renk"/></td>
								</tr>
						</x:when>
						
					<x:otherwise>
					</x:otherwise>	
					
					</x:choose>
				</x:forEach>		
			
			<c:if test="${otomobilinAdi!='XmldeBulunuyor'}">
				<tr>
						<td><c:out value="${param.markaAdi} Marka XML de bulunmuyor"/></td>
						<td>-</td>
						<td>-</td>
				</tr>
			</c:if>					

			</tbody>

		</table>
	
	
</body>
</html>