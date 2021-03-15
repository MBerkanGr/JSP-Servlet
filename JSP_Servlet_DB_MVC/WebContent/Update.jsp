<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Güncelleme Ekranı</title>
</head>
<body>
	<h2>Güncelleme Ekranı</h2>

	<form action="RegisterServlet" method="post">
		<table>
			<tr>
				<td>Güncellenecek ID  : </td><td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>Kullanıcı Adı : </td><td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Şifre : </td><td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>Email : </td><td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Telefon : </td><td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td></td><td><input type="submit" name="submit" value="Güncelle"></td>
			</tr>
			<tr>
				<td><input type="hidden" name="form" value="update" /></td>
			</tr>
			
		</table>	
	</form>


</body>
</html>