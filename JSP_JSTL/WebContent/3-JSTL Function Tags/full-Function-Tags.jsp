<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-fn-full</title>
</head>
<body>

	<h3>FUNCTİON TAGS</h3>
	
	<c:set var="mesaj" value="  Bir işi yapabileceğinizi düşünseniz de, yapamayacağınızı düşünseniz de haklısınız.    " />
	
	<font color="blue">Mesaj : </font> <c:out value="${mesaj}"/>
	<br>
	
	<font color="blue">Mesaj uzunluğu : </font>
	<c:out value="${fn:length(mesaj) }" /> <br>
	
	<font color="blue">Mesaj Harflerini büyük yap : </font>
	<c:out value="${fn:toUpperCase(mesaj) }" /> <br>

	<font color="blue">Mesaj Harflerini küçük yap : </font>
	<c:out value="${fn:toLowerCase(mesaj) }" /> <br>
	
	<font color="blue">Mesaj etrafındaki boşlukları yok et : </font>
	<c:out value="${fn:trim(mesaj) }" /> <br>
	
	<font color="blue">Mesaj boşlukları yok edilince kaç karakter : </font>
	<c:out value="${fn:length(fn:trim(mesaj)) }" /> <br>
	
	<font color="blue">Mesajdaki boşlukların yerine "_" koy : </font>
	<c:out value="${fn:replace(mesaj,' ','_') }" /> <br>
	
	<font color="blue">Mesajın 5. ve 18. karaktere kadar olanı kısmı kes : </font>
	<c:out value="${fn:substring(mesaj,5,18) }" /> <br>
	
	<font color="blue">Mesajdaki "Bir işi" den sonrasını yaz : </font>
	<c:out value="${fn:substringAfter(mesaj,'Bir işi') }" /> <br>
	
	<font color="blue">Mesajdaki "düşünseniz" öncekileri yaz : </font>
	<c:out value="${fn:substringBefore(mesaj,'düşünseniz') }" /> <br>
	 
	<font color="blue">Mesajda ilk ilk defa yazılan 'n' harfi sırası : </font>
	<c:out value="${fn:indexOf(mesaj,'n') }" /> <br>
	
	<font color="blue">Mesajda 'g' harfi kullanılmış mı : </font>
	<c:out value="${fn:contains(mesaj,'g') }" /> <br> 	
	
	<font color="blue">Mesajda "haklısınız" kelimesi kullanılmış mı : </font>
	<c:out value="${fn:containsIgnoreCase(mesaj,'haklısınız') }" /> <br> 	
	
	<font color="blue">Mesaj "  Bir" ile mi başlamış : </font>
	<c:out value="${fn:startsWith(mesaj,'  Bir') }" /> <br>
	
	<font color="blue">Mesaj "haklısınız.    " ile mi bitmiş? : </font>
	<c:out value="${fn:endsWith(mesaj,'haklısınız.    ') }" /> <br> 	
	

</body>
</html>