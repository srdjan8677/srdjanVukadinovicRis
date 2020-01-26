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
	<form action="/Aukcija/kontroler/unesi" method="post">
		unestite username <input type="text" name="username"><br>
		<br> unestite sifru <input type="text" name="sifra"><br>
		<br> unestite email adresu <input type="text" name="adresa"><br>
		<br> unestite ime <input type="text" name="ime"><br>
		<br> unestite prezime <input type="text" name="prezime"><br>
		<br> unestite broj telefona <input type="text" name="telefon"><br>
		<br> unestite drzavu <input type="text" name="drzava"><br>
		<br> unestite grad <input type="text" name="grad"><br>
		<br> <input type="submit" value="unesi">

	</form>
	<c:if test = "${! empty user }">
		uspesno unet user id usera je ${user.idServiceUser }
	</c:if>

</body>
</html>