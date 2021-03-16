<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Şifre Kontrol</title>
</head>
<body>

	<%!
		String sifre;
	%>
	<%
		sifre = request.getParameter("sifre");
		
	if((sifre!=null) && (sifre.length()>0)){
		if(sifre.equals("kamikaze")){
			HttpSession onemliSayfa = request.getSession(true);
			onemliSayfa.putValue("sifre", "gecerli");
			
			out.println("Sitede serbest gezebilirsiniz... (Şifre geçerli) <br>");
			
			out.println("Önemli sayfa izni onaylandı... <a href='Onemli_Sayfa.jsp'>Giriş<a/> ");
		}
		else{
			HttpSession onemliSayfa = request.getSession(true);
			onemliSayfa.putValue("sifre", "gecersiz");
			
			out.println("<h2>XXX YANLIŞ ŞİFRE XXX</h2>");
			
			out.println("Tekrar denemek için <a href='Login.jsp'>buradan</a> deneyiniz...");
		}
	}
	else{
		HttpSession onemliSayfa = request.getSession(true);
		onemliSayfa.putValue("sifre", "gecersiz");
		
		out.println("Şifre alanı boş bırakılamaz...");
		out.println("Tekrar denemek için <a href='Login.jsp'>buradan</a> deneyiniz...");
	}
	
	
	%>


</body>
</html>