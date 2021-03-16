<%@ page import= "java.io.*"  %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dosya İşlemleri</title>
</head>
<body>

	<h2>JSP ile Dosya İşlemleri</h2>
	
	<%
		try{
				RandomAccessFile ekleme = new RandomAccessFile("C:\\Eclipse\\Workspace\\JSP_File\\DenemeKlasör\\TextDosyasi.txt","rw");
				
				String yazi = "JSP nasıl gidiyor?";
				
				ekleme.seek(ekleme.length());  //en sonunu buluyor
				ekleme.writeBytes(yazi);	
				ekleme.writeByte('\n');   //başa bu işaretle text dosyasına başlıyor
				ekleme.close();
				
				out.println("<br> Dilemiş olduğunuz " + yazi + " satırı ilgili dosyaya eklendi");
		}catch(IOException e){
				out.println("Bir " + e + "");
		}
	
	
	
	%>

</body>
</html>