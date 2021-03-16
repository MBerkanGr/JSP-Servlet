<%@ page import="java.io.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dosya Yönetimi</title>
</head>
<body>

	<h2>JSP ile Dosya Yönetimi</h2>

	<%
	
	try{	
	
		FileReader okuyucuNesne = new FileReader("C:\\Eclipse\\Workspace\\JSP_File\\DenemeKlasör\\TextDosyasi.txt");
		BufferedReader tamponNese = new BufferedReader(okuyucuNesne);
		
		String satir = tamponNese.readLine();
		
		while(satir != null){
			
			out.println(satir + "<br>");
			satir = tamponNese.readLine();
			
			
		}
		tamponNese.close();
	}
	catch(FileNotFoundException e)
	{
		out.println("Böyle bir dosya bulunamadı.");
	}
	catch(IOException e){
		out.println("Bir " + e + " oluştur");
	}
	
	
	%>

</body>
</html>