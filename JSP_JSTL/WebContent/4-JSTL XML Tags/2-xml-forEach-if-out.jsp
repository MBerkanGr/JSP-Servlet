<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-xml-2</title>
</head>
<body>

	<h2>JSP JSTL XML</h2>
	
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
					<form method="post" action="2-xml-forEach-if-out-2.jsp">
						<select name="markaAdi">
							<option value="MERCEDES">Mercedes
							<option value="BMW">BMW
							<option value="ANADOL">Anadol
							<option value="TOYOTA">Toyota
							<option value="KARTAL">Kartal
						</select>
						<input type=submit value="Gönder"/>
					</form>
				</td>
			</tr>		
		</tbody>

	</table>


</body>
</html>