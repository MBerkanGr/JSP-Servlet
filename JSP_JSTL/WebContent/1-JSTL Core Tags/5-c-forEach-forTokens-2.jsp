<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-5.1</title>
</head>
<body>

<h1>JSP-JSTL-FOREACH FORTOKENS BÖLÜM 2</h1>

	<h2>FOR EACH</h2>
	
	<c:forEach var = "for_each_icin_parcalarina_ayir" items="${param.for_each_icin_parametre_adi}" >
		<c:out value="${for_each_icin_parcalarina_ayir}" />
		<br>
	</c:forEach>	

<hr>

	<h2>FOR TOKENS</h2>
	
	<!-- delims ile kelimeleri " " arasındaki sembolle böler örn delims=";" -->
	
	<c:forTokens var= "for_tokens_icin_parcalarina_ayir" items="${param.for_token_icin_parametre_adi}" delims=";">
		<c:out value="${for_tokens_icin_parcalarina_ayir}" />
		<br>
	</c:forTokens>		
	

</body>
</html>