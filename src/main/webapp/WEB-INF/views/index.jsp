<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap 5.1.3 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script> -->

</head>

<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Movie Application</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Movies</a></li>
					<li class="nav-item"><a class="nav-link" href="#">TV Shows</a>
					</li>
				</ul>
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Login </a>
						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="userlogin">User Login</a></li>
							<li><a class="dropdown-item" href="adminlogin">Admin Login</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>

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
			<div class="col-md-3">
				<div class="card">
					<img src="https://via.placeholder.com/250x350" class="card-img-top"
						alt="Movie 1">
					<div class="card-body">
						<h5 class="card-title">Movie 1</h5>
						<p class="card-text">Movie 1 description.</p>
						<a href="#" class="btn btn-primary">Watch Now</a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card">
					<img src="https://via.placeholder.com/250x350" class="card-img-top"
						alt="Movie 2">
					<div class="card-body">
						<h5 class="card-title">Movie 2</h5>
						<p class="card-text">Movie 2 description.</p>
						<a href="#" class="btn btn-primary">Watch Now</a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card">
					<img src="https://via.placeholder.com/250x350" class="card-img-top"
						alt="Movie 3">
					<div class="card-body">
						<h5 class="card-title">Movie 3</h5>
						<p class="card-text">Movie 3 description.</p>
						<a href="#" class="btn btn-primary">Watch Now</a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card">
					<img src="https://via.placeholder.com/250x350" class="card-img-top"
						alt="Movie 4">
					<div class="card-body">
						<h5 class="card-title">Movie 4</h5>
						<p class="card-text">Movie 4 description.</p>
						<a href="#" class="btn btn-primary">Watch Now</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Footer -->
	<footer class="bg-dark text-white text-center text-lg-start mt-5 p-3">
		<div class="container p-4">
			<div class="row">
				<!-- About Section -->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase">About</h5>
					<ul class="list-unstyled mb-0">
						<li><a href="#" class="text-white">Company Info</a></li>
						<li><a href="#" class="text-white">Careers</a></li>
						<li><a href="#" class="text-white">Press Releases</a></li>
					</ul>
				</div>

				<!-- Help Section -->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase">Help</h5>
					<ul class="list-unstyled mb-0">
						<li><a href="#" class="text-white">Customer Service</a></li>
						<li><a href="#" class="text-white">FAQs</a></li>
						<li><a href="#" class="text-white">Contact Us</a></li>
					</ul>
				</div>

				<!-- Account Section -->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase">Account</h5>
					<ul class="list-unstyled mb-0">
						<li><a href="#" class="text-white">Your Account</a></li>
						<li><a href="#" class="text-white">Manage Your Prime</a></li>
						<li><a href="#" class="text-white">Watchlist</a></li>
					</ul>
				</div>

				<!-- Social Media Section -->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase">Follow Us</h5>
					<ul class="list-unstyled mb-0">
						<li><a href="#" class="text-white">Facebook</a></li>
						<li><a href="#" class="text-white">Twitter</a></li>
						<li><a href="#" class="text-white">Instagram</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="text-center p-3 bg-dark">
			© 2024 Vector-India.in Video Clone | <a href="#" class="text-white">Privacy</a>
			| <a href="#" class="text-white">Terms</a>
		</div>
	</footer>

	<!-- Bootstrap 5.1.3 JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

	<!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script> -->


</body>

</html>