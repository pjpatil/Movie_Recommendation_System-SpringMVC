<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="adminNavbar.jsp"></jsp:include>
	<br>

	<div class="container-fluid container-md ">

		<input class="form-control" type="text" name="" value=""
			placeholder="Type here movie name..." /> <br />

	</div>
	<div class="container-fluid m-2 text-center ">
		<h2>Display All Movies</h2>

		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Sr.No</th>
					<th scope="col">Title</th>
					<th scope="col">Language</th>
					<th scope="col">Country</th>
					<th scope="col">Movie rel Date</th>
					<th scope="col">Movie Youtube Link</th>
					<th scope="col">Movie Poster</th>

					<th scope="col">DELETE</th>
					<th scope="col">UPDATE</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="m" items="${getallmovies}">
					<tr>
						<th scope="row">${m.getMovid()}</th>
						<td>${m.getMovtitle()}</td>
						<td>${m.getMovlang()}</td>
						<td>${m.getCountry()}</td>
						<td>${m.getMovdtrel()}</td>
						<td>${m.getMovlink()}</td>
						<td><img
							src="${pageContext.request.contextPath}/resources/IMG/${m.getMovtitle().replaceAll(' ','')}.jpg"
							alt="Image not found" class="img-fluid"
							style="max-width: 100px; max-height: 100px;"></td>

						<td><a href='#kkdelgen?genid=${s.getGenid()}'><svg class="bi" aria-hidden="true"><use xlink:href="#box-seam"></use></svg>delete</a></td>
						<td><a href="#">update</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		
	</div>










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