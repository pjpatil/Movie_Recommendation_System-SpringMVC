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


	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
		<div class="container-fluid">
			<a class="navbar-brand fw-bold" href="#">Movie Application</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 w-5">
					<li class="nav-item"><a class="nav-link text-light fw-bold" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link text-light fw-bold" href="#">Movies</a></li>
					<li class="nav-item"><a class="nav-link text-light fw-bold" href="#">TV Shows</a></li>
					<li class="nav-item"><a class="nav-link text-light fw-bold" href="#">Genres</a></li>
					<li class="nav-item"><a class="nav-link text-light fw-bold"
						href="moviesearchpage">Search Movies</a></li>
				</ul>
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				
					<li class="nav-item dropdown "><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							User Profile </a>
						<ul class="dropdown-menu dropdown-menu-end "
							aria-labelledby="navbarDropdown">
							<li class="text-center"><img alt="profile img"
								style='width: 50px;'src="<c:url value="/resources/IMG/icon/profile_icon.png" />" />
							</li>
							<li class="text-center">
								<%
								UserModel model = (UserModel) session.getAttribute("loginUser");
								if (model != null) {
									String uname = model.getUname();
									int userid=model.getUid();
									out.println("<h5>" + uname + "</h5>");
								}
								%>
							</li>
							<li><a class="dropdown-item " href="viewprofile">View Profile</a></li>
							<li><a class="dropdown-item" href="watchlist">Watchlist</a></li>
							<li><a class="dropdown-item" href="#">Delete Account</a></li>
							<li><a class="dropdown-item" style='color:red;' href="logout">Logout</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>


	<!-- Bootstrap 5.1.3 JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
