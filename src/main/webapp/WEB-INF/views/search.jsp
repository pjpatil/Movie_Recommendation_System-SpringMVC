<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search Movie</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>

	<jsp:include page="userNavbar.jsp"></jsp:include>
	<%@page
		import="vector.india.Movie_Recommendation_System_Application.model.GenresModel,java.util.*"%>

	<div class="container-fluid bg-light p-5">
		<h1 class="text-center h1" >Search Movie</h1>
		<div class="container text-center">
			<!-- Form -->
			<form id="frm" action="searchMovie" method="POST">
				<div class="form-row p-1">

					<div class="form-group col-md-12">
						<label for="inputName" class="h4">Movie Title</label> <input
							type="text" class="form-control" id="inputName" name="movieTitle"
							placeholder="type movie title....">
					</div>

					<div class="form-group col-md-4">
						<label for="inputGenre" class="h4">Movie Genre</label>
						<input
							type="text" class="form-control" id="inputName" name="movieGenre"
							placeholder="type movie genres....">
					</div>

					<div class="form-group col-md-4">
						<label for="inputYearFrom" class="h4">Year From</label> <input
							type="date" class="form-control" id="inputYearFrom"
							name="yearFrom">
					</div>

					<div class="form-group col-md-4">
						<label for="inputYearTo" class="h4">Year To</label> <input
							type="date" class="form-control" id="inputYearTo" name="yearTo">
					</div>

				</div>

				<button type="submit" class="btn btn-danger">Search Movies</button>
			</form>


		</div>
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
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkv3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7HUbX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>