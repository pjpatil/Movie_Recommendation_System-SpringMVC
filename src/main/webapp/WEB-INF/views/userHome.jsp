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
	rel="stylesheet" />
<style>
.card-wrapper {
	position: relative;
	overflow: hidden;
}

.btn-watch {
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	background-color: rgba(0, 0, 0, 0.7);
	color: white;
	border: none;
	transition: opacity 0.3s;
	opacity: 0;
	text-align: center;
	padding: 10px;
}

.card-wrapper:hover .btn-watch {
	opacity: 1;
}

.scrollable {
	overflow-x: auto;
	white-space: nowrap;
	padding-bottom: 20px;
	/* Add padding to accommodate the buttons */
}

.scrollable .card-wrapper {
	display: inline-block;
	vertical-align: top;
}

.scrollable::-webkit-scrollbar {
	display: none;
	/* Hide scrollbar for a cleaner look */
}

.scroll-btn {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	z-index: 1000;
	background-color: rgba(0, 0, 0, 0.7);
	color: white;
	border: none;
	padding: 10px;
	cursor: pointer;
}

.scroll-btn-prev {
	left: 0;
}

.scroll-btn-next {
	right: 0;
}
</style>
</head>
<body>
	<!-- User Menu navbar -->
	<jsp:include page="userNavbar.jsp"></jsp:include>

	<!-- Carousel -->
	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="carousel" data-bs-interval="2000">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="https://i.ytimg.com/vi/nsC5PhXS19Y/maxresdefault.jpg"
					class="d-block w-100" alt="img not found">
				<div class="carousel-caption d-none d-md-block">
					<h2 class="h2">First slide label</h2>
					<p>Some representative placeholder content for the first slide.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://i.ytimg.com/vi/pAs-VavcAWA/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAU5-M_yvMA1-I-HQ0tou3yZ4HHPw"
					class="d-block w-100" alt="img not found">
				<div class="carousel-caption d-none d-md-block">
					<h2>Second slide label</h2>
					<p>Some representative placeholder content for the second
						slide.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://static.moviecrow.com/marquee/kalki-2898-ad-ott-release-plans-for-the-prabhas-starrer/230663_thumb_665.jpg"
					class="d-block w-100" alt="img not found">
				<div class="carousel-caption d-none d-md-block">
					<h2 class="h2">Kalki</h2>
					<p>Some representative placeholder content for the third slide.</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<!-- Movie Grid -->



	<div class="container-fluid">


		<h2 class="h2 mt-3">Top 10 Movies</h2>
		<div class="d-flex position-relative">
			<!-- Previous Button -->
			<button class="scroll-btn scroll-btn-prev"
				onclick="document.querySelector('.scrollable').scrollBy(-200, 0)">
				<</button>

			<!-- Movie Cards Container -->
			<div class="scrollable">

				<c:forEach var="m" items="${getallmovies}">
					<div class="card-wrapper" style="width: 200px; margin-right: 10px;">
						<div class="card">
							<img
								src="${pageContext.request.contextPath}/resources/IMG/${m.getMovtitle().replaceAll(' ','')}.jpg"
								class="card-img-top" alt="img not found ">
							<div class="card-body">
								<h5 class="card-title">${m.getMovtitle()}</h5>
							</div>

							<button class="btn-watch">
								<a href="viewmovie?name=${m.getMovtitle()}" class="btn">
									Watch Movie </a>
							</button>
						</div>

					</div>

				</c:forEach>
			</div>

			<!-- Next Button -->
			<button class="scroll-btn scroll-btn-next"
				onclick="document.querySelector('.scrollable').scrollBy(200, 0)">
				></button>
		</div>



		<!-- Popular movies -->
		<h2 class="h2 mt-3">Popular Movies</h2>
		<div class="row">
			<c:forEach var="m" items="${getallmovies}">
				<div class="col-lg-3 col-md-6  mb-4">
					<div class="card">
						<img
							src="${pageContext.request.contextPath}/resources/IMG/${m.getMovtitle().replaceAll(' ','')}.jpg"
							alt="Image not found" class="card-img-top">
						<div class="card-body">
							<h5 class="card-title">Movie Title: ${m.getMovtitle()}</h5>
							<p class="card-text">${m.getMovdescription()}</p>
							<a href="viewmovie?name=${m.getMovtitle()}" class="btn btn-primary">Watch Now</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>


	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Bootstrap 5.1.3 JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
