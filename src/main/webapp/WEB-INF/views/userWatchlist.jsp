<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Watchlist</title>
</head>
<body>
	<jsp:include page="userNavbar.jsp"></jsp:include>
	<div class="container-fluid container-md ">
		<h2>Watchlist</h2>

		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Watch Date</th>
					<th scope="col">Movie Name</th>
					<th scope="col">Give rating</th>
					<th scope="col">Feedback</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="r" items="${watchlist}">
					<tr>
						<th scope="row">${r.getWatchdate()}</th>
						<td>${r.getMovtitle()}</td>
						<td>${r.getNumrating()}</td>
						<td>${r.getFeedback()}</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>



</body>
</html>