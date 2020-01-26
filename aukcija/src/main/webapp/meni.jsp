<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Meni</title>
</head>
<body>
<c:if test="${!empty user }">
dobrodaosao ${user.username }

<br><br>
<a href="/Aukcija/kontroler/sviItemi">prikazi sve ajteme</a>
<br><br>
<a href="/Aukcija/kontroler/sviBidovi">svi bidovi</a>
<br>
<a href="/Aukcija/kontroler/kategorije"></a>


</c:if>



</body>
</html>