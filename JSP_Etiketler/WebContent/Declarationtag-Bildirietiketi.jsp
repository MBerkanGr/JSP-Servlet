<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Declaration tag - Bildiri etiketi</title>
</head>
<body>

	<%!
		public int fetihTarihi = 1453;
		public String fetheden = "Fatih Sultan Mehmet";
	%>
	
	<% out.print(fetihTarihi); %>
	<hr>
	<% out.print(fetheden); %>
	<hr>
</body>
</html>