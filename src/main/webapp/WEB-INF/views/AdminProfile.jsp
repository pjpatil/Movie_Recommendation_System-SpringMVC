<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Profile</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap Icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css"
	rel="stylesheet">
</head>

<body>

	<!-- User Menu navbar -->
	<jsp:include page="userNavbar.jsp"></jsp:include>
	<div class="container mt-5">
		<div class="card shadow-lg mx-auto"
			style="max-width: 100%; width: 100%; max-width: 900px;">
			<div class="card-body text-center">
				<!-- Admin Picture -->
				<img src="<c:url value="/resources/IMG/icon/profile.jpg" />"
					alt="Admin Profile Picture"
					class="rounded-circle mb-3 img-thumbnail img-fluid" width="170"
					height="120">

				<!-- Admin Name -->
				<h2 class="card-title fw-bold">Pankaj Jijabrao Patil</h2>

				<!-- Admin Qualifications -->
				<p class="card-text fs-5">
					<strong>Qualification:</strong> Bachelor Engineering in Information
					Technology
				</p>

				<!-- Project Information -->
				<div class="mt-4 text-start">
					<h4 class="fw-bold">Project: Movie Recommendation System</h4>
					<p>
						<strong>Date Completed:</strong> September 2024
					</p>
					<!-- Tech Stack Information -->
					<p>
						<strong>Tech Stack:</strong>
					</p>
					<ul>
						<li><strong>Frontend:</strong> HTML, CSS, Bootstrap,
							JavaScript.</li>
						<li><strong>Backend:</strong> Java, Spring MVC, Servlet, JSP,
							Ajax</li>
						<li><strong>Database:</strong> SQL, MySQL</li>
					</ul>
					<p>
						<strong>Description:</strong> The Movie Recommendation System aims
						to predict movies based on user behavior using a Naive Bayes
						algorithm to identify movie ratings and reviews. This system helps
						organizations keep users engaged for longer, maximizing profits
						through accurate recommendations. With a library of over 500k+
						titles, proper recommendations enhance the user experience and
						foster positive feedback.
					</p>
				</div>

				<!-- Social Media Links -->
				<div
					class="d-flex flex-column flex-md-row justify-content-center mt-4">
					<a href="https://github.com/pjpatil" target="_blank"
						class="btn btn-outline-dark mx-2 my-1"> <i
						class="bi bi-github"></i> GitHub
					</a> <a href="https://www.linkedin.com/in/pankaj-patil-322a20246/"
						target="_blank" class="btn btn-outline-info mx-2 my-1"> <i
						class="bi bi-linkedin"></i> LinkedIn
					</a> <a href="https://www.hackerrank.com/profile/pjpatil12"
						target="_blank" class="btn btn-outline-success mx-2 my-1"> <i
						class="bi bi-hackerrank"></i> HackerRank
					</a> <a href="https://www.instagram.com/mr_pawar96k/" target="_blank"
						class="btn btn-outline-danger mx-2 my-1"> <i
						class="bi bi-instagram"></i> Instagram
					</a>
				</div>

			</div>
		</div>
	</div>


	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>