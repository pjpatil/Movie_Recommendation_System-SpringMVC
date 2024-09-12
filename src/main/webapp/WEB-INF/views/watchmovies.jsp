<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Watch Movies</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<link href='<c:url value="/resources/CSS/watchmovies.css" />'
	rel="stylesheet">
</head>
<body>

	<!-- User Menu navbar -->
	<jsp:include page="userNavbar.jsp"></jsp:include>


	<div class="container-xxl">

		<div class="row bg-light p-2 rounded">
			<div class="col-12 ">
				<div class="ratio ratio-16x9">
					<iframe src="${movie.getMovlink()}" title="YouTube video"
						allowfullscreen style="width: 100%; height: 100%;"></iframe>
				</div>
			</div>
			<h2 class="text-center mt-2">Movie Title: ${movie.getMovtitle()}</h2>
			<div class="col-12 ">
				<div class="star-rating">
					<h4>
						<strong>Total Rating:</strong><span class="star" data-value="1">&#9733;</span>
						<span class="star" data-value="2">&#9733;</span> <span
							class="star" data-value="3">&#9733;</span> <span class="star"
							data-value="4">&#9733;</span> <span class="star" data-value="5">&#9733;</span>
						<span id="totalRating">movie.getTotalRating()</span>/5
					</h4>
				</div>
			</div>

			<div class="col-12">
				<p class="h5">
					<strong>Release Date:</strong> ${movie.getMovdtrel()}
				</p>
				<p class="h5">
					<strong>Description:</strong> ${movie.getMovdescription()}
				</p>
			</div>

			<!-- Feedback Form Section -->
			<div class="col-12 col-md-6 mb-4 mb-md-0">
				<h3>Submit Your Feedback:</h3>

				<form id="feedbackForm" action="giveratinguser" method="POST">
					<div class="text-center mb-3">
						<div class="d-flex justify-content-center">
							<div class="star-rating">
								<span class="star" data-value="1">&#9733;</span> <span
									class="star" data-value="2">&#9733;</span> <span class="star"
									data-value="3">&#9733;</span> <span class="star" data-value="4">&#9733;</span>
								<span class="star" data-value="5">&#9733;</span>
							</div>
						</div>
						<p id="rating-value" class="mt-2">Rating: 0</p>
					</div>
					<div class="mb-3">
						<label for="userFeedback" class="form-label">Your
							Feedback:</label>
						<textarea id="userFeedback" class="form-control" rows="4"></textarea>
					</div>
					<button type="button" class="btn btn-primary"
						onclick="submitFeedback()">Submit Feedback</button>
				</form>
				
			</div>

			<!-- All Feedback Section -->

			<div class="col-12 col-md-6">
			
				<h3>All Feedback:</h3>
				<ul id="feedbackList" class="list-unstyled border p-3 overflow-auto"
					style="max-height: 400px;">
					<!-- Feedback items will be appended here -->
				</ul>
			</div>
		</div>


	</div>

	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>

	<script src='<c:url value="/resources/JS/watchmovies.js" />'></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
</body>
</html>