<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	
	<%!
		String kullaniciAdi="" , sifre="";
	%>
	
	<%
		Cookie[] cookies = request.getCookies();
		for( int i = 0; i < cookies.length; i++){
			
			Cookie cookieAktif = cookies[i];
			String isimAktif = cookieAktif.getName();
			String degerAktif = cookieAktif.getValue();
			
			if("kullaniciAdi".equals(isimAktif) & (degerAktif!=null)){
					
				kullaniciAdi=degerAktif;
			}
			else if("sifre".equals(isimAktif) & (degerAktif!=null)){
				sifre=degerAktif;
			}
		}
	%>
	
	
	<h2>BENİ HATIRLA !</h2>
	<br><br>
	<form method="post" action="Hatirla.jsp">
	
		<table>
			<tr>
				<td>Kullanıcı ismi: </td>
				<td><input type="text" name="kullaniciAdi" value="<%=kullaniciAdi%>"></td>
			</tr>
			
			<tr>
				<td>Parola: </td>
				<td><input type="text" name="sifre" value="<%=sifre%>"></td>
			</tr>
			
			<tr>
				<td>Bir daha ki sefere beni hatırla!</td>
				<td><input type="checkbox" name="hatirlatma" value="secili" checked></td>
			</tr>
			
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Login"></td>
			</tr>
		
		
		</table>
		
	</form>	
	
</body>
</html>