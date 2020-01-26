<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/Aukcija/kontroler/poKategorijama">
	<select name="boxC">
		<c:forEach var="i" items="${c }">
			<option value="${i.idCategory }">${i.name }</option>
		</c:forEach>
	</select>
	<input type="submit" value="prikazi">
	
</form>


	<c:forEach var="b" items="lista">
		<div
			style="background-color: rgba(255, 255, 255, 0.8); text-align: center; padding: 20px 0; font-size: 30px;">
			naziv itema ${b.item.name } pocetna cena ${b. startingPrice} trenutna
			cena ${b. currentPrice} opis<br> ${b.item. description}
			<c:forEach var="s" items="${b.item.images }">
				<img height="300" width="250" src="${s.imageLink }">
			</c:forEach>
		</div>
		<a href="/Aukcija/kontroler/sviUcesnici?id=${b.idBid }">svi
			ucesnici</a>

	</c:forEach>
</body>
</html>