<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-fmt-1</title>
</head>
<body>

	<h1>JSTL Ulusallaştırma Ve Biçimlendirme</h1>
	
	<h1><c:out value="${pageContext.request.locale}"/> </h1>


</body>
</html>