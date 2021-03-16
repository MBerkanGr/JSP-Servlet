<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-xml-3</title>
</head>
<body>
	<h2>JSP - JSTL - XML - 3 - 1</h2>

	<c:import url="arabalar.xml" var="url"/>
	<x:parse xml="${url}" var="XmlBelgesi"/>


	<table border="1">
	
		<thead>	
			<tr>
				<th>ARABA MARKASI</th>
			</tr>	
		</thead>
		<tbody>
			<tr>
				<td>
					<form method="POST" action="3-xml-forEach-choose-when-out-otherwise-2.jsp">
						<select name="markaAdi">
						
							<x:forEach var="otomobil" select="$XmlBelgesi/arabalar/araba">
								<option value="<x:out select="$otomobil/marka"/>"> <x:out select="$otomobil/marka"/>
							</x:forEach>
							<option value="KARTAL">KARTAL
						</select>
					
						<input type="submit">
					</form>
				</td>
			</tr>		
		</tbody>

	</table>


</body>
</html>