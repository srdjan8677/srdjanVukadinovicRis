<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Svi itemi</title>
</head>
<body>
<c:forEach var="i" items="${lista }">
<div style="	background-color: rgba(255, 255, 255, 0.8);
	text-align: center;
	padding: 20px 0;
	font-size: 30px;" >
	naziv<br> ${i.name }<br>
	opis <br>
	${i.description }
	<br><br>
	
	<c:forEach var="s" items="${i.images }"></c:forEach>
	<img  height="300" width="250" src="${s.imageLink }">
	<a href="/Aukcija/kontroler/detalji?id = ${i.idItem }">vise detalja</a>
</div>

</c:forEach>





</body>
</html>