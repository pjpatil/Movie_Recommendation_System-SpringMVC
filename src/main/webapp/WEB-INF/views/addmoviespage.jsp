<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="home.jsp"></jsp:include>
	<br>

	<%@page
		import="vector.india.Movie_Recommendation_System_Application.model.GenresModel,java.util.*"%>

	<div class="container-fluid container-md ">
		<form name='frm' id="frm" action='' method='POST'
			onsubmit="validateName">
			<div class="form-group">
				<h4>Movie Title :</h4>
				<input type="text" name="movietitle" value='' id="movietitle"
					class="form-control" placeholder="Enter Movie Title here.." />
			</div>
			<br>
			<div class="row">
				<div class="col">
					<h4>Movie Genres :</h4>
					<div class="form-group" style="display: flex">
						<select name="name" class="form-control ">
							<option>Select Genres</option>
							<c:forEach var="s" items="${getallgen}">
								<option value="${s.getGenid()}">${s.getGentitle()}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="col">
					<h4>Movie Language :</h4>
					<div class="form-group" style="display: flex">
						<select name="productCategory" class="form-control">
							<option>Select Language</option>
							<option value="">Marathi</option>
							<option value="">Hindi</option>
							<option value="">English</option>
							<option value="">Gujarati</option>
							<option value="">Telugu</option>
							<option value="">Tamil</option>
							<option value="">Malayalam</option>
							<option value="">Bengali</option>
							<option value="">Punjabi</option>
						</select>
					</div>
				</div>
				<div class="col">
					<h4>Movie Country :</h4>
					<div class="form-group" style="display: flex">
						<select name="country" class="form-control">
							<option>Select Country</option>
							<option value="">India</option>
							<option value="">US</option>
							<option value="">Japan</option>
							<option value="">Austria</option>
							<option value="">Russia</option>
						</select>
					</div>
				</div>

			</div>
			<br>

			<div class="row">
				<div class="form-group col">
					<h5>Enter Date :</h5>
					<input type="date" name="relDate" value='' id="movieDate"
						class="form-control" />
				</div>
				<div class="form-group col">
					<h5>Enter Time :</h5>
					<input type="time" name="relDate" value='' id="movieDate"
						class="form-control" />
				</div>
				<div class="form-group col">
					<h5>Enter Date :</h5>
					<input type="date" name="relDate" value='' id="movieDate"
						class="form-control" />
				</div>
			</div>
			<br>

			<div class="row">
				<div class="form-group col">
					<h5>Upload Movie Poster :</h5>
					<input type="date" name="relDate" value='' id="movieDate"
						class="form-control" />
				</div>
				<div class="form-group col">
					<h5>Upload Movie Clips :</h5>
					<input type="time" name="relDate" value='' id="movieDate"
						class="form-control" />
				</div>
			</div>
			<br>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">Example
					textarea</label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					rows="3"></textarea>
			</div>
			<br>
			<div class="form-group">
				<input type="submit" name="s" id="btn" value='Add New Product'
					class="btn btn-outline-success form-control" />
			</div>

		</form>
	</div>

</body>
</html>