<%@ taglib prefix="oz" uri="/WEB-INF/ozgun.tld" %>

<%@ taglib prefix="ozParametre" uri="/WEB-INF/ozgunYazdir.tld" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Özgün Tag</title>
</head>
<body>

	<h2>Özgün JSP takıları</h2>
	
	<h3>Sayfamıza tarihi ekleyen bir takı : </h3>
	şu an : <oz:Tarih/>
	
	
	<hr>
	
	
	<h3>Parametrelerini HTML sayfasından alan bir takı </h3>
	
	<ozParametre:Yazdir mesaj="Bu mesaj takının özniteliğinden geliyor..">Bu mesaj takının içeriğinden geliyor</ozParametre:Yazdir>
	

</body>
</html>