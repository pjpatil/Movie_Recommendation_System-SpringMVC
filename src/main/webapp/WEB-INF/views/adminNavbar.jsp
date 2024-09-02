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
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<c:url value='reources/css/style.css'/>">


</head>

<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Movie Application</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="showmov">Movies</a></li>
				<li class="nav-item"><a class="nav-link" href="#">TV Shows</a></li>


				<!-- Add New Genres Movies -->
				<li class="nav-item"><a class="nav-link" href="addgenres">Add
						New Genres</a></li>
				<!-- Display All Genres Movies -->
				<li class="nav-item"><a class="nav-link" href="showgenres">Display
						Movie Genres</a></li>

				<!-- Add New Movies  -->
				<li class="nav-item"><a class="nav-link" href="addmovies">Add
						New Movies</a></li>

				<!-- Categories -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">Categories</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<div class="row">
							<div class="col-md-12">
								<h5 class="dropdown-header">Genres</h5>
								<a class="dropdown-item" href="#">Action and adventure</a> <a
									class="dropdown-item" href="#">Anime</a> <a
									class="dropdown-item" href="#">Comedy</a> <a
									class="dropdown-item" href="#">Documentary</a> <a
									class="dropdown-item" href="#">Drama</a> <a
									class="dropdown-item" href="#">Fantasy</a> <a
									class="dropdown-item" href="#">Horror</a> <a
									class="dropdown-item" href="#">Kids</a> <a
									class="dropdown-item" href="#">Mystery and thrillers</a> <a
									class="dropdown-item" href="#">Romance</a> <a
									class="dropdown-item" href="#">Science fiction</a>
							</div>

						</div>
					</div></li>

				<!-- Language -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Movies Language </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<div class="row">

							<div class="col-md-12">
								<h5 class="dropdown-header">Featured collections</h5>
								<a class="dropdown-item" href="#">Hindi</a> <a
									class="dropdown-item" href="#">English</a> <a
									class="dropdown-item" href="#">Telugu</a> <a
									class="dropdown-item" href="#">Tamil</a> <a
									class="dropdown-item" href="#">Malayalam</a> <a
									class="dropdown-item" href="#">Kannada</a> <a
									class="dropdown-item" href="#">Marathi</a> <a
									class="dropdown-item" href="#">Punjabi</a> <a
									class="dropdown-item" href="#">Gujarati</a> <a
									class="dropdown-item" href="#">Bengali</a>
							</div>
						</div>
					</div></li>




				<!-- Search bar -->
				<li class="nav-item">
					<form class="d-flex">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</li>

		
			</ul>
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="adminlogin">Logout</a></li>
				<!-- <li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						Login </a>
					<ul class="dropdown-menu dropdown-menu-end"
						aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="#">User Login</a></li>
						<li><a class="dropdown-item" href="adminlogin">Admin
								Login</a></li>
					</ul></li> -->
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
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="/JS/home.js"></script>
</body>

</html>