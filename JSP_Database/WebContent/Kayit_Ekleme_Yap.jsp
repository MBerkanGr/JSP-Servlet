<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/jspveritabani?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		Connection baglanti = DriverManager.getConnection(url,"root","1234");
		
		String sqlSorgu = "INSERT INTO personeller(PersonelNo,Ad,Soyad,Tel,Email,Gorev,Departman,Maas,Profil) VALUES (?,?,?,?,?,?,?,?,?)";
		PreparedStatement sorgulama = baglanti.prepareStatement(sqlSorgu);
		
		sorgulama.setInt(1,Integer.parseInt(request.getParameter("PersonelNo")));
		sorgulama.setString(2,request.getParameter("Ad"));
		sorgulama.setString(3,request.getParameter("Soyad"));
		sorgulama.setString(4,request.getParameter("Tel"));
		sorgulama.setString(5,request.getParameter("Email"));
		sorgulama.setString(6,request.getParameter("Gorev"));
		sorgulama.setInt(7,Integer.parseInt(request.getParameter("Departman")));
		sorgulama.setInt(8,Integer.parseInt(request.getParameter("Maas")));
		sorgulama.setString(9,request.getParameter("Profil"));
		
		sorgulama.executeUpdate();
		baglanti.close();
		 
		out.println("<br>Kayıt başarılı bir şekilde kaydedilmiştir!");
	%>
	
		<br>
		<a href="index.jsp">Buradan listeyi görebilirsiniz!</a>
		<br>
		<a href="Kayıt_Ekleme_Formu.jsp">Buradan Yeni kayıt eklemeye gidebilirsiniz!</a>		
	

</body>
</html>