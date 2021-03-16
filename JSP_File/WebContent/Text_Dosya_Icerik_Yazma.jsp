<%@page import="java.io.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dosya Yönetimi</title>
</head>
<body>

	<h2>JSP ile dosya yönetimi</h2>
	
	<%
		FileOutputStream streamNesne = new FileOutputStream("C:\\Eclipse\\Workspace\\JSP_File\\DenemeKlasör\\TextDosyasi.txt");
		
		PrintWriter yazdirici = new PrintWriter(streamNesne);
		
		String yazi = "Merhaba, ben Mehmet Berkan";
		
		yazdirici.println(yazi);
		yazdirici.close();
		
		out.println("<br> Dilemiş olduğunuz ' " + yazi + " ' satırı ilgili dosyaya yazdırıldı." );
	
	
	%>

</body>
</html>