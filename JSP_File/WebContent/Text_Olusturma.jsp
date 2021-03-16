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

	<h2>JSP ile dosya yönetimi</h2>

	<%
		try{
			File dosyamiz = new File("C:\\Eclipse\\Workspace\\JSP_File\\DenemeKlasör\\TextDosyasi.txt");
			
			if(!dosyamiz.exists()){
				dosyamiz.createNewFile();
			}
			else{
				out.println("Zaten böyle bir dosya var.");
			}
			out.println("<br>Dosya adı : " + dosyamiz.getName() );
			out.println("<br>Yol : " + dosyamiz.getAbsolutePath());
			out.println("<br>Klasör mü : " + dosyamiz.isDirectory());
			out.println("<br>Dosya mı : " + dosyamiz.isFile());
			out.println("<br>En son güncelleme : " + dosyamiz.lastModified());
			out.println("<br>Dosya büyüklüğü : " + dosyamiz.length());
			out.println("<br>Gizli bir dosya mı : " + dosyamiz.isHidden());
			out.println("<br>Okunabilir mi : " + dosyamiz.canRead());
			out.println("<br>Yazılabilir mi : " + dosyamiz.canWrite());
			//out.println("<br>Yol ayıracı : " + dosyamiz.pathSeparator);
			//out.println("<br>İsim ayıracı : " + dosyamiz.separator);
			
		}
		catch(IOException e)
		{
			out.println("Bir hata oluştu : "+ e);
		}
	
	
	%>

</body>
</html>