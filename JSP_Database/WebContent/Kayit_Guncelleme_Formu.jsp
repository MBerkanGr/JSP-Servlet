<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Veritabanı İşlemleri</title>
</head>
<body>

	<h2>FORM-Güncelleme</h2>
	<h3>Lütfen tüm alanları doldurunuz...</h3>
	<br><br>
	
	<form name="form1" method="post" action="Kayit_Guncelleme_Yap.jsp">
		<table>
			<tr>
				<td>Personel No</td>
				<td><input type="text" name="PersonelNo" size="40"></td>
			</tr>
			<tr>
				<td>Ad</td>
				<td><input type="text" name="Ad" size="40"></td>
			</tr>
			<tr>
				<td>Soyad</td>
				<td><input type="text" name="Soyad" size="40"></td>
			</tr>
			<tr>
				<td>Tel</td>
				<td><input type="text" name="Tel" size="40"></td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td><input type="text" name="Email" size="40"></td>
			</tr>
			<tr>
				<td>Görev</td>
				<td><input type="text" name="Gorev" size="40"></td>
			</tr>
			<tr>
				<td>Departman</td>
				<td><input type="text" name="Departman" size="40"></td>
			</tr>
			<tr>
				<td>Maaş</td>
				<td><input type="text" name="Maas" size="40"></td>
			</tr>
			<tr>
				<td>Profil</td>
				<td><textarea name="Profil" rows="3" cols="37"></textarea></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" name="Gonder" value="Gönder"></td>
				<td><input type="reset" name="sil" value="Temizle"></td>
			</tr>
		
		
		</table>
	
	
	
	</form>

</body>
</html>