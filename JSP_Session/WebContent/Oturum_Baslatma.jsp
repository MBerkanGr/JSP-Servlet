<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oturum</title>
</head>
<body>

	<h2>Oturum Yönetimi</h2>
	
	<%
		HttpSession oturumNesne = request.getSession(true);
		oturumNesne.putValue("kullaniciAdi", "MehmetBerkan");
		out.println("<b>"+ oturumNesne.getValue("kullaniciAdi") + "</b> adina <b>");
		
		out.println("ID "+ oturumNesne.getId() + "</b> no lu bir oturum başlatılmıştır. <br>");
		
		out.println("Oturum bilgileri için <a href='Oturum_Oku.jsp'>buraya<a/> tıklayınız.");
	%>

</body>
</html>