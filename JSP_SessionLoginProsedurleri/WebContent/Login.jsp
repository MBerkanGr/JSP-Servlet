<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

	<h2>Login Sayfası</h2>
	<br>
	
	<form method="post" action="Sifre_Kontrol.jsp">
	
		<table>
			<tr>
				<td>Kullanıcı Adı : </td>
				<td><input type="text" name="kullaniciAdi"></td>
			</tr>
			<tr>
				<td>Şifre : </td>
				<td><input type="password" name="sifre"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Giriş"></td>
			</tr>
		</table>
		<br>
		<h3>Login için şifre kamikaze</h3>
		<h3>Şifre girmeden Önemli bilgiler sayfasına erişmek için <a href="Onemli_Sayfa.jsp">buradan</a> gidin...</h3>

	</form>
	
</body>
</html>