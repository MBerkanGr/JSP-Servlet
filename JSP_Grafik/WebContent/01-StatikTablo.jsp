<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Statik Tablo - JSP</title>
</head>
<body>
	<H2>JSP ile çubuk tablo</H2>
	
	<%!
		int parti1 = 25;
		int parti2 = 5;
		int parti3 = 11;
		int parti4 = 32;
		int parti5 = 15;
		
		int toplam = parti1 + parti2 + parti3 + parti4 + parti5;
		
		float yuzdeHesapla(float rakam1, float rakam2){
				float sonuc = rakam1/rakam2*100;
				return sonuc;
		}
		
		int grafikSkala = 2;
	
	%>
	Partilerin aldıkları oylar:
	<br>
	Parti 1 : <%= parti1 %> <br>
	Parti 2 : <%= parti2 %> <br>
	Parti 3 : <%= parti3 %> <br>
	Parti 4 : <%= parti4 %> <br>
	Parti 5 : <%= parti5 %> <br>
	
	<br><br>
	
	<b>Partilerin Oy Dağılımı:</b>
	
	<br>
	Parti 1:
	<img src="bar.gif" width=<%= yuzdeHesapla(parti1, toplam)*grafikSkala %>
	height="11" border="0" >
	% <%= yuzdeHesapla(parti1, toplam) %>
	<br>
	
	
	<br>
	Parti 2:
	<img src="bar.gif" width=<%= yuzdeHesapla(parti2, toplam)*grafikSkala %>
	height="11" border="0" >
	% <%= yuzdeHesapla(parti2, toplam) %>
	<br>
	
	
	<br>
	Parti 3:
	<img src="bar.gif" width=<%= yuzdeHesapla(parti3, toplam)*grafikSkala %>
	height="11" border="0" >
	% <%= yuzdeHesapla(parti3, toplam) %>
	<br>
	
	
	<br>
	Parti 4:
	<img src="bar.gif" width=<%= yuzdeHesapla(parti4, toplam)*grafikSkala %>
	height="11" border="0" >
	% <%= yuzdeHesapla(parti4, toplam) %>
	<br>
	
	
	<br>
	Parti 5:
	<img src="bar.gif" width=<%= yuzdeHesapla(parti5, toplam)*grafikSkala %>
	height="11" border="0" >
	% <%= yuzdeHesapla(parti5, toplam) %>
	<br>
	
	
	
	
</body>
</html>