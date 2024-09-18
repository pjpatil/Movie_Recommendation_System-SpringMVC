<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet"> -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='reources/css/style.css'/>">


</head>

<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
	<div class="container-fluid">
		<a class="navbar-brand fw-bold" href="#">Movie Application</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<!-- Home Page  -->
				<li class="nav-item"><a class="nav-link active text-light fw-bold"
					aria-current="page" href="#">Home</a></li>

				<!-- Display All Movies  -->
				<li class="nav-item"><a class="nav-link text-light fw-bold"
					href="showmov">Movies</a></li>

				<!-- TV Shows -->
				<li class="nav-item"><a class="nav-link text-light fw-bold" href="#">TV
						Shows</a></li>

				<!-- Display All Genres  -->
				<li class="nav-item"><a class="nav-link text-light fw-bold"
					href="showgenres">Display Genres</a></li>

				<!-- Add New Genres -->
				<li class="nav-item"><a class="nav-link text-light fw-bold"
					href="addgenres">Add New Genres</a></li>

				<!-- Add New Movies  -->
				<li class="nav-item "><a class="nav-link text-light fw-bold"
					href="addmovies">Add New Movies</a></li>

				<!-- Search bar -->
				<!-- <li class="nav-item">
					<form class="d-flex">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</li> -->

			</ul>
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0 ">
				<!-- <li class="nav-item"><a class="nav-link" href="#">Admin Profile </a></li> -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle text-light" href="#"
					id="navbarDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false">Admin</a>
					<ul class="dropdown-menu dropdown-menu-end"
						aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item fw-bold " href="#">View Profile</a></li>
						<li><a class="dropdown-item fw-bold " href="#">Delete Profile</a></li>
						<li><a class="dropdown-item fw-bold " href="adminlogin">Logout</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>









	<!-- Sign-in Modal -->
	<!-- <div class="modal fade" id="signInModal" tabindex="-1" role="dialog"
		aria-labelledby="signInModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="signInModalLabel">Sign in</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="signInForm">
						<div class="form-group">
							<label for="username">Username</label> <input type="text"
								class="form-control" id="username" placeholder="Enter username">
							<div class="invalid-feedback">Username cannot be empty.</div>
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input type="password"
								class="form-control" id="password" placeholder="Enter password">
							<div class="invalid-feedback">Password cannot be empty.</div>
						</div>
						<button type="submit" class="btn btn-outline-success">Sign
							in</button>
					</form>
				</div>
			</div>
		</div>
	</div>
 -->
	<!-- Bootstrap js -->
	<!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
		integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
		crossorigin="anonymous"></script>
	<script src="/JS/home.js"></script>
</body>

</html>