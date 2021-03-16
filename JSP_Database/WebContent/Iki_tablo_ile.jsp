<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Veritabanı Bağlnatısı</title>
</head>
<body>
	<h2>JSP ile 2 Veritabanı Tablo Bağlantısı</h2>
	<h3>Personel Bilgileri</h3>
	
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/jspveritabani?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		Connection baglanti = DriverManager.getConnection(url,"root","1234");
		Statement sorgulama = baglanti.createStatement();
		ResultSet sonucVeriler = sorgulama.executeQuery("SELECT personeller.PersonelNo , personeller.Ad , personeller.Soyad , personeller.Gorev , departmanlar.DepartmanIsmi FROM personeller,departmanlar WHERE personeller.Departman=departmanlar.DepartmanNo");
	%>
	
	<table>
		<tr bgcolor="#bbbbbb">
			<td width="100">Personel No</td>
			<td width="100">Ad</td>
			<td width="100">Soyad</td>
			<td width="100">Görev</td>
			<td width="100">Departman İsmi</td>
		</tr>
	
		<%
		
			int modul=1;
			String fonRengi="";
			while(sonucVeriler.next()){
				if((modul%2)==1) fonRengi="#dddddd";
				else fonRengi="#eeeeee";	
		
		%>
		
		<tr bgcolor=" <%=fonRengi %>">
			<td><%=sonucVeriler.getString("PersonelNo")%></td>
			<td><%=sonucVeriler.getString("Ad")%></td>
			<td><%=sonucVeriler.getString("Soyad")%></td>
			<td><%=sonucVeriler.getString("Gorev")%></td>
			<td><%=sonucVeriler.getString("DepartmanIsmi")%></td>
		</tr>
		
		<%
		
			modul++;
		}
			sonucVeriler.close();
			baglanti.close();
		%>
		
	</table>
	<br>
	
	<a href="Kayit_Ekleme_Formu.jsp">Kayıt Ekleme</a> <br>
	<a href="Kayit_Guncelleme_Formu.jsp">Kayıt Güncelleme</a> <br>
	<a href="Kayit_Silme_Formu.jsp">Kayıt Silme</a> <br>
	
	
</body>
</html>