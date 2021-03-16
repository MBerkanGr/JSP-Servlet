<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Oku</title>
</head>
<body>

	<h2>Cookies</h2>
	
	<%
		Cookie[] cookies = request.getCookies();
		
		for(int i = 0 ; i < cookies.length ; i++){
			
			Cookie cookieAktif = cookies[i];
			
			String cookieIsmı = cookieAktif.getName();
			String cookDegeri = cookieAktif.getValue();
			
			if("ad".equals(cookieIsmı)){
				
				out.println(cookieIsmı + "=" + cookDegeri + "<br>");
			}
			
			if("soyad".equals(cookieIsmı)){
				
				out.println(cookieIsmı + "=" + cookDegeri + "<br>");
			}	
			
		}
	
	%>
	
	<br><br>
	
	Cookie'yi silmek için <a href="Cookie_Sil.jsp">buraya</a> tıklayınız...
		

</body>
</html>