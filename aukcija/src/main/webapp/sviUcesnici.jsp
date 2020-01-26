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
	<c:forEach var="b" items="${bid }">
		<c:forEach var="u" items="${b.serviceuser }">
			ime ponudjivaca ${u.firstName }<br>
			prezime ${u.lastName }
			<br>
			grad ${u.sity }<br>
			email adresa ${u.email }
			
		</c:forEach>
	</c:forEach>
</body>
</html>