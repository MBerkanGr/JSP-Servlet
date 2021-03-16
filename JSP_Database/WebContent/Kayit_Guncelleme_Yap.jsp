<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Veritabanı İşlemleri</title>
</head>
<body>
	
	<h2>Güncelleme İşlemleri</h2>
	<h3>Personel kayıt güncelleme</h3>
	
	<%
	
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/jspveritabani?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		Connection baglanti = DriverManager.getConnection(url,"root","1234");
	
		String sqlSorgu = "UPDATE personeller SET  Ad=? , Soyad=? , Tel=? , Email=? , Gorev=? , Departman=? , Maas=? , Profil=? WHERE PersonelNo=? ";
		PreparedStatement sorgulama = baglanti.prepareStatement(sqlSorgu);
		
		
		sorgulama.setString(1,request.getParameter("Ad"));
		sorgulama.setString(2,request.getParameter("Soyad"));
		sorgulama.setString(3,request.getParameter("Tel"));
		sorgulama.setString(4,request.getParameter("Email"));
		sorgulama.setString(5,request.getParameter("Gorev"));
		sorgulama.setInt(6,Integer.parseInt(request.getParameter("Departman")));
		sorgulama.setInt(7,Integer.parseInt(request.getParameter("Maas")));
		sorgulama.setString(8,request.getParameter("Profil"));
		sorgulama.setInt(9,Integer.parseInt(request.getParameter("PersonelNo")));
		
		sorgulama.executeUpdate();
		baglanti.close();
		
		out.println("<br>Kayıt başarılı bir şekilde güncellenmiştir!");	
	%>
	
		<br>
		<a href="index.jsp">Buradan listeyi görebilirsiniz!</a>
		<br>
		<a href="Kayıt_Guncelleme_Formu.jsp">Buradan Yeni kayıt güncellemeye gidebilirsiniz!</a>	
		
	
</body>
</html>