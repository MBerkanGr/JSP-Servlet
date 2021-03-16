<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oturum Kapatma</title>
</head>
<body>

	<h2>Oturum Yönetimi</h2>
	
	<%
		HttpSession oturumNesne = request.getSession();
		oturumNesne.invalidate();
		out.println("Oturum kapatılmıştır");
	%>
</body>
</html>