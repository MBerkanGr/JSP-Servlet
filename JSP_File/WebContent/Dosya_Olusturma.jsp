<%@ page import="java.io.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dosya Oluşturma</title>
</head>
<body>

	<h2>JSP İLE DOSYA YÖNETİMİ</h2>
	
	<%
		try{
			File dosyamiz = new File("C:\\Eclipse\\Workspace\\JSP_File\\DenemeKlasör");
			
			if(!dosyamiz.exists()){
				dosyamiz.mkdir();
				
				out.println("<br>" + dosyamiz.getName() + " isminde bir klasör oluşturuldu.");
				
			}
			else{
				out.println("Bu klasör zaten var... <br><br>");
			}
			
		}
		catch(IOException e){
			out.println(e + " * HATA OLUŞTU");
		}
	
	
	%>

</body>
</html>