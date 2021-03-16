<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Veritabanı Bağlnatısı</title>
</head>
<body>
	<h2>JSP ile Veritabanı Bağlantısı</h2>
	<h3>Personel Bilgileri</h3>
	
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/jspveritabani?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		Connection baglanti = DriverManager.getConnection(url,"root","1234");
		Statement sorgulama = baglanti.createStatement();
		ResultSet sonucVeriler = sorgulama.executeQuery("SELECT * FROM personeller ");
	%>
	
	<table>
		<tr bgcolor="#bbbbbb">
			<td width="100">AD</td>
			<td width="100">SOYAD</td>
			<td width="100">TEL</td>
			<td width="100">GOREV</td>
			<td width="100">EMAİL</td>
		</tr>
	
		<%
		
			int modul=1;
			String fonRengi="";
			while(sonucVeriler.next()){
				if((modul%2)==1) fonRengi="#dddddd";
				else fonRengi="#eeeeee";	
		
		%>
		
		<tr bgcolor=" <%=fonRengi %>">
			<td><%=sonucVeriler.getString("Ad")%></td>
			<td><%=sonucVeriler.getString("Soyad")%></td>
			<td><%=sonucVeriler.getString("Tel")%></td>
			<td><%=sonucVeriler.getString("Gorev")%></td>
			<td><%=sonucVeriler.getString("Email")%></td>
		</tr>
		
		<%
		
			modul++;
		}
			sonucVeriler.close();
			baglanti.close();
		%>
		
	</table>
	<br>
	
	<a href="Kayit_Arama_Formu.jsp">Kayıt Arama</a> <br>
	<a href="Kayit_Ekleme_Formu.jsp">Kayıt Ekleme</a> <br>
	<a href="Kayit_Guncelleme_Formu.jsp">Kayıt Güncelleme</a> <br>
	<a href="Kayit_Silme_Formu.jsp">Kayıt Silme</a> <br>
	
	
</body>
</html>