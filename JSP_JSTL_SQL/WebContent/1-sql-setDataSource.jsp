<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.* , java.util.* , java.sql.*"%>
<%@ page import="javax.servlet.http.* , javax.servlet.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-jstl-sql-1</title>
</head>
<body>

	<h2>JSTL sql:setDataSource Tag</h2>


    <sql:setDataSource var="veriKaynagi" 
                       driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost/denemedb"
                       user="root"  
                       password="1234"/>

    <sql:query dataSource="${veriKaynagi}" sql="SELECT * FROM denemetablo" var="sonuc" />

    <!--
    <sql:query dataSource="${veriKaynagi}" var="sonuc">
       SELECT * FROM personel;
    </sql:query>
    -->   

</body>
</html>