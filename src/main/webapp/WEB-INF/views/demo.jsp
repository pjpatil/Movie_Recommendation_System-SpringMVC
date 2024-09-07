<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- Table to display search results -->

	<div class="container mt-4">
		<c:if test="${not empty movieList}">
			<table class="table table-bordered table-hover"
				style="background-color: lightblue;">
				<thead class="table-dark">
					<tr>
						<th scope="col">Sr.No</th>
						<th scope="col">Title</th>
						<th scope="col">Release Date</th>
						<th scope="col">Genre</th>
						<th scope="col">Poster</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="m" items="${movieList}">
						<tr>
							<th scope="row">${m.getMovid()}</th>
							<td>${m.getMovtitle()}</td>
							<td>${m.getMovdtrel()}</td>
							<td>${m.getGentitle()}</td>
							<td><img
								src="${pageContext.request.contextPath}/resources/IMG/${m.getMovtitle().replaceAll(' ', '')}.jpg"
								alt="Image not found" class="img-fluid"
								style="max-width: 100px; max-height: 100px;"></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>

		<c:if test="${empty movieList}">
			<p class="text-center">No movies found.</p>
		</c:if>
	</div>



</body>
</html>