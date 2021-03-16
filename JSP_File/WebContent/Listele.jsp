<%@ page import="java.io.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listeleme</title>
</head>
<body>

	<h2>JSP ile dosya yönetimi</h2>
	
	<%
		try{
			File klasor = new File("C:\\Eclipse\\Workspace\\JSP_File\\DenemeKlasör");
			
			if(klasor.exists() && klasor.isDirectory()){
				out.println(klasor.getName() + " klasörünün içeriği : ");
				out.println("<br>Path : (" +  klasor.getAbsolutePath() + ")<br><br>" );
				
				String[] icerik = klasor.list();
				for(int i = 0 ; i < icerik.length ; i++){
					out.println(icerik[i]+"<br>");
				}
			}
			else{
				out.println("<br>Böyle bir klasör yok!");
			}
			
		}
		catch(IOException e){
			out.println("HATA : " + e);
		}
	
	
	%>

</body>
</html>