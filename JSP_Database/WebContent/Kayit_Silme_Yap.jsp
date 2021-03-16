<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Veritabanı İşlemleri</title>
</head>
<body>

	<h2>JSP İle Veritabanı Bağlantısı</h2>
	<h3>Personel kayıt silme</h3>
	
	<%
	
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/jspveritabani?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		Connection baglanti = DriverManager.getConnection(url,"root","1234");
	
		String sqlSorgu = "DELETE FROM personeller WHERE PersonelNo=?";
		
		PreparedStatement sorgulama = baglanti.prepareStatement(sqlSorgu);
		sorgulama.setInt(1,Integer.parseInt(request.getParameter("PersonelNo")));
		
		sorgulama.executeUpdate();
		baglanti.close();
		
		out.println("<br>Personel kaydı silinmiştir!");
	
	%>
	
		<br>
		<a href="index.jsp">Buradan listeyi görebilirsiniz!</a>
		<br>
		<a href="Kayıt_Silme_Formu.jsp">Buradan yeni kayıt silmeye gidebilirsiniz!</a>

</body>
</html>