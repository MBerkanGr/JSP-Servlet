<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	 <h2>JSTL SQL sql:update Tag</h2>

    <sql:setDataSource var="veriKaynagi" 
                       driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost/firmaveritabani"
                       user="root"  
                       password=""/>

    <sql:query dataSource="${veriKaynagi}" sql="SELECT * FROM personel" var="sorgu" />

    <!--
    <sql:query dataSource="${veriKaynagi}" var="sorgu">
       SELECT * FROM personel;
    </sql:query>
    -->  

    <table border="1">
        <tr>
            <th>ID</th>
            <th>ADI</th>
            <th>SOYADI</th>
            <th>MAAŞI</th>
        </tr>
        <c:forEach var="satir" items="${sorgu.rows}">
            <tr>
                <td><c:out value="${satir.personelid}"/></td>
                <td><c:out value="${satir.personeladi}"/></td>
                <td><c:out value="${satir.personelsoyadi}"/></td>
                <td><c:out value="${satir.personelmaasi}"/></td>
            </tr>
        </c:forEach>
    </table>
    
    
<sql:update dataSource="${veriKaynagi}" var="guncelle_silme_ekleme">
 
 INSERT INTO firmaveritabani.personel
(personeladi, personelsoyadi, personeleposta, personelgorevi, personelmaasi)
VALUES
("Adnan", "Aydemir", "adnan.aydemir.37@facebook.com", "Java Developer", "5200");

</sql:update> 


    <sql:query dataSource="${veriKaynagi}" var="sorgu2">
       SELECT * FROM personel;
    </sql:query>
  

    <table border="1">
        <tr>
            <th>ID</th>
            <th>ADI</th>
            <th>SOYADI</th>
            <th>E-POSTA</th>
            <th>GÖREVİ</th>
            <th>MAAŞI</th>
        </tr>
        <c:forEach var="satir" items="${sorgu2.rows}">
            <tr>
                <td><c:out value="${satir.personelid}"/></td>
                <td><c:out value="${satir.personeladi}"/></td>
                <td><c:out value="${satir.personelsoyadi}"/></td>
                <td><c:out value="${satir.personeleposta}"/></td>
                <td><c:out value="${satir.personelgorevi}"/></td>
                <td><c:out value="${satir.personelmaasi}"/></td>
            </tr>
        </c:forEach>
    </table>
    
	

</body>
</html>