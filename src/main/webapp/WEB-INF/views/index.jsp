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

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
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
							<li><a class="dropdown-item" href="adminlogin">Admin
									Login</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>

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
					<h2>First slide label</h2>
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
					src="https://images.hindustantimes.com/img/2021/01/11/1600x900/immortal_1610348165339_1610348191039.jpg"
					class="d-block w-100" alt="img not found">
				<div class="carousel-caption d-none d-md-block">
					<h2>Third slide label</h2>
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
				onclick="document.querySelector('.scrollable').scrollBy(-200, 0)"> < </button>

			<!-- Movie Cards Container -->
			<div class="scrollable">
			
			<c:forEach var="m" items="${getallmovies}">
				<div class="card-wrapper" style="width: 200px; margin-right: 10px;">
					<div class="card">
						<img src="${pageContext.request.contextPath}/resources/IMG/${m.getMovtitle().replaceAll(' ','')}.jpg" class="card-img-top"
							alt="img not found ">
						<div class="card-body">
							<h5 class="card-title">${m.getMovtitle()}</h5>
						</div>
						
						<button class="btn-watch"> <a href="/viewmovie/name=${m.getMovtitle()}" class="btn"> Watch Movie </a></button>
					</div>
					
				</div>
				
				</c:forEach>
			</div>

			<!-- Next Button -->
			<button class="scroll-btn scroll-btn-next"
				onclick="document.querySelector('.scrollable').scrollBy(200, 0)"> > </button>
		</div>












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
							<!--  <p class="card-text">${m.getMovdescription()}</p>-->
							<a href="${m.getMovlink()}" class="btn btn-primary">Watch Now</a>
						</div>
					</div>
				</div>
			</c:forEach>
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
        
        <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>