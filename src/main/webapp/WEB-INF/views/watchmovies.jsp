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

<style>
body {
	background-color: black;
}

h2 {
	font-size: 1.5rem;
}

#feedbackList li {
	border-bottom: 1px solid #ddd;
	padding: 10px 0;
}
</style>

</head>
<body class="Dark">
	<!-- User Menu navbar -->
	<jsp:include page="userNavbar.jsp"></jsp:include>

	<div class="container-fluid ">
		<h1 class="h1">Movie Title : ${movie.getMovtitle()}</h1>
		<div class="ratio ratio-16x9">
			<iframe class="mw-75 h-75" src="${movie.getMovlink()}"
				title="YouTube video" allowfullscreen></iframe>
		</div>

		<!-- Rating Section -->
		<div class="row">
			<div class="col-4 ">
				<h2>
					Total Rating: <span id="totalRating">4.2</span>/5
				</h2>
				<div class="mb-3">
					<label for="userRating" class="form-label">Your Rating:</label> <select
						id="userRating" class="form-select">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</div>
				<div class="mb-3">
					<label for="userFeedback" class="form-label">Your Feedback:</label>
					<textarea id="userFeedback" class="form-control" rows="4"></textarea>
				</div>
				<button class="btn btn-primary" onclick="submitFeedback()">Submit
					Feedback</button>
			</div>

			<!-- Feedback Display -->
			<div class="col-4">
				<h2>All Feedback:</h2>
				<ul id="feedbackList" class="list-unstyled">
					<!-- Feedback items will be appended here -->
				</ul>
			</div>
		</div>
	</div>




	<script src="<c:url value="/resources/JS/watchmovies.js" />"></script>
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