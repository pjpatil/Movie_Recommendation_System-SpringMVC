<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

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

	<div class="container mt-5">
		<div class="card shadow-lg mx-auto"
			style="max-width: 100%; width: 100%; max-width: 900px;">
			<div class="card-body text-center">
				<!-- Admin Picture -->
				<img src="https://via.placeholder.com/150"
					alt="Admin Profile Picture"
					class="rounded-circle mb-3 img-thumbnail img-fluid" width="150"
					height="150">

				<!-- Admin Name -->
				<h2 class="card-title fw-bold">Pankaj Jijabrao PAtil</h2>

				<!-- Admin Qualifications -->
				<p class="card-text fs-5">
					<strong>Qualification:</strong> B.Tech in Computer Science
				</p>

				<!-- Admin Working -->
				<p class="card-text fs-5">
					<strong>Working as:</strong> Senior Full Stack Developer at XYZ
					Corp
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
						<li><strong>Backend:</strong> Java, Spring MVC, Servlet, JSP, Ajax</li>
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
					<a href="https://github.com/yourusername" target="_blank"
						class="btn btn-outline-dark mx-2 my-1"> <i
						class="bi bi-github"></i> GitHub
					</a> <a href="https://www.linkedin.com/in/yourusername" target="_blank"
						class="btn btn-outline-info mx-2 my-1"> <i
						class="bi bi-linkedin"></i> LinkedIn
					</a> <a href="https://www.hackerrank.com/yourusername" target="_blank"
						class="btn btn-outline-success mx-2 my-1"> <i
						class="bi bi-hackerrank"></i> HackerRank
					</a> <a href="https://www.instagram.com/yourusername" target="_blank"
						class="btn btn-outline-danger mx-2 my-1"> <i
						class="bi bi-instagram"></i> Instagram
					</a> <a href="https://www.facebook.com/yourusername" target="_blank"
						class="btn btn-outline-primary mx-2 my-1"> <i
						class="bi bi-facebook"></i> Facebook
					</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>