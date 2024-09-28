<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All User</title>
</head>
<body>
<jsp:include page="adminNavbar.jsp"></jsp:include>
	<br>
<div class="container-fluid m-2 text-center ">
		<h2>Display All User</h2>

		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Sr.No</th>
					<th scope="col">Name</th>
					<th scope="col">Birthday</th>
					<th scope="col">Mobile No</th>
					<th scope="col">Password</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="u" items="${getalluser}">
					<tr>
						<th scope="row">${u.getUid()}</th>
						<td>${u.getUname()}</td>
						<td>${u.getBirthday()}</td>
						<td>${u.getUmobileno()}</td>
						<td>${u.getUpassword()}</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		
	</div>




</body>
</html>