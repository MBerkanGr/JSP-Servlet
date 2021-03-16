<%

	//Burası bu sayfaya herkesin girmesini engellendiği kısımdır!
	//Sadece şifre geçerli olan session lar girebilir

	HttpSession onemliSayfa = request.getSession();
	if(onemliSayfa.getValue("sifre")!="gecerli"){
		response.sendRedirect("Red.jsp");
	}
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Önemli Sayfa</title>
</head>
<body>

	<h1>ÖNEMLİ SAYFA!!!</h1>

</body>
</html>