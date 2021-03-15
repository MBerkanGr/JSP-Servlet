<%@ page import="java.util.*,register.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%	
			List<Member> list = (ArrayList<Member>)request.getAttribute("list");
			out.println("Liste toplam kişi : "+list.size());
			
			for(Member m : list){
		%>
		<br>	
			<table>
				<tr>
					<td>ID : </td><td> <%= m.getId() %></td>
				</tr>
				<tr>
					<td>Kullanıcı Adı : </td><td> <%= m.getUsername() %></td>
				</tr>
				<tr>
					<td>Şifre : </td><td> <%= m.getPassword() %></td>
				</tr>
				<tr>
					<td>Email : </td><td> <%= m.getEmail() %></td>
				</tr>
				<tr>
					<td>Telefon : </td><td> <%= m.getPhone() %></td>
				</tr>
			
			</table>
		
			
		<%		
			}	
		%>
		
		<br><hr><br>
		<a href="index.html">Menüye geri dön</a>
</body>
</html>