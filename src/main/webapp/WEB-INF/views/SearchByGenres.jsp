<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search By Genres</title>
</head>
<body>

	<jsp:include page="userNavbar.jsp"></jsp:include>

	<div class="container-fluid bg-light p-5">
		<h1 class="text-center h1">Search Movie</h1>
		<div class="container text-center">
			<!-- Form -->
			<form id="frm" action="" method="POST">
				<div class="form-row p-1">
					<c:forEach var="g" items="${getallgen}">
						<div class="form-group col-4 col-md-4">

							<button type="submit" class="btn btn-dark col-4 col-md-4 p-4"
								id="${g.getGenid()}" name="${g.getGentitle()}">${g.getGentitle()}</button>

						</div>
					</c:forEach>
				</div>

			</form>

		</div>
		<!-- Table to display search results -->

		<div class="container mt-4">

			<c:forEach var="m" items="${movieList}">
				<div class="card mb-3" style="width: 800px;">
					<div class="row g-0">
						<div class="col-md-4">
							<img
								src="${pageContext.request.contextPath}/resources/IMG/${m.getMovtitle().replaceAll(' ','')}.jpg"
								class="img-fluid rounded-start" alt="Image not found">
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<h5 class="card-title">Movie Title: ${m.getMovtitle()}</h5>
								<p class="card-text">Movie Genres :${m.getGentitle()}</p>
								<p class="card-text">${m.getMovdescription()}</p>
								<a href="viewmovie?name=${m.getMovtitle()}"
									class="btn btn-primary">Watch Now</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<c:if test="${empty movieList}">
				<p class="text-center">No movies found.</p>
			</c:if>

		</div>

	</div>

	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>