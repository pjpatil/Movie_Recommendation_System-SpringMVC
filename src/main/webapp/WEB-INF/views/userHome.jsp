<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="vector.india.Movie_Recommendation_System_Application.controller.*, vector.india.Movie_Recommendation_System_Application.model.*"%>
<!DOCTYPE html>
<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Movie Application</title>
<!-- Bootstrap 5.1.3 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<jsp:include page="userNavbar.jsp"></jsp:include>
	<br>
	
	<!-- Carousel -->
	<div id="movieCarousel" class="carousel slide mt-3"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="https://via.placeholder.com/1500x400"
					class="d-block w-100" alt="Featured Movie 1">
			</div>
			<div class="carousel-item">
				<img src="https://via.placeholder.com/1500x400"
					class="d-block w-100" alt="Featured Movie 2">
			</div>
			<div class="carousel-item">
				<img src="https://via.placeholder.com/1500x400"
					class="d-block w-100" alt="Featured Movie 3">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#movieCarousel" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#movieCarousel" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<!-- Movie Grid -->
	<div class="container mt-5">
		<h2 class="mb-4">Popular Movies</h2>
		<div class="row">

			<c:forEach var="m" items="${getallmovies}">
				<div class="col-md-3">
					<div class="card">
						<img
							src="${pageContext.request.contextPath}/resources/IMG/${m.getMovtitle().replaceAll(' ','')}.jpg"
							alt="Image not found" class="card-img-top" alt="Movie 1">
						<div class="card-body">
							<h5 class="card-title">Movie Title : ${m.getMovtitle()}</h5>

							<p class="card-text">${m.getMovdescription()}</p>
							<a href="${m.getMovlink()}" class="btn btn-primary">Watch Now</a>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>


	<!-- Footer -->

	<!-- Bootstrap 5.1.3 JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
