<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
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
	
		<form name="frm" id="frm" action="savemovie" method="POST" enctype="multipart/form-data" >
			
			<div class="form-group">
				<h5>Movie Title :</h5>
				<input type="text" name="movtitle" value="" id="movietitle"
					class="form-control" placeholder="Enter Movie Title here.." />
					<p>${msg}</p>
			</div>
			<br>
			<div class="row">
				<div class="col">
					<h5>Movie Genres :</h5>
					<div class="form-group" style="display: flex">
						<select name="genid" class="form-control ">
							<option>Select Genres</option>
							<c:forEach var="s" items="${getallgen}">
								<option value="${s.getGenid()}">${s.getGentitle()}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="col">
					<h5>Movie Language :</h5>
					<div class="form-group" style="display: flex">
						<select name="movlang" class="form-control">
							<option>Select Language</option>
							<option value="Marathi">Marathi</option>
							<option value="Hindi">Hindi</option>
							<option value="English">English</option>
							<option value="Gujarati">Gujarati</option>
							<option value="Telugu">Telugu</option>
							<option value="Tamil">Tamil</option>
							<option value="Malayalam">Malayalam</option>
							<option value="Bengali">Bengali</option>
							<option value="Punjabi">Punjabi</option>
						</select>
					</div>
				</div>
				<div class="col">
					<h5>Movie Country :</h5>
					<div class="form-group" style="display: flex">
						<select name="country" class="form-control">
							<option>Select Country</option>
							<option value="India">India</option>
							<option value="US">US</option>
							<option value="Japan">Japan</option>
							<option value="Austria">Austria</option>
							<option value="Russia">Russia</option>
						</select>
					</div>
				</div>

			</div>
			<br>

			<div class="row">
				<div class="form-group col">
					<h5>Enter Movie Release Date :</h5>
					<input type="date" name="movdtrel" value="" id="movieDate"
						class="form-control" />
				</div>
				<div class="form-group col">
					<h5>Enter Time :</h5>
					<input type="time" name="movtime" value="" id="movietime"
						class="form-control" placeholder="hh:mm" />
				</div>
				<div class="form-group col">
					<h5>Enter Movie Year Date :</h5>
					<input type="text" name="movyear" value="" id="movieyear"
						class="form-control" placeholder="yyyy" />
				</div>
			</div>
			<br>

			<div class="row">
				<div class="form-group col-4">
					<h5>Upload Movie Poster :</h5>
					<input type="file" class="form-control" id="inputGroupFile04" name="movposter"
							aria-describedby="inputGroupFileAddon04" aria-label="Upload">
							
				</div>
				
				
				<div class="form-group col-8">
					<h5>Upload Movie Clips Link :</h5>
					<input type="url" name="movlink" value="" id="cliplink"
					class="form-control" placeholder="Enter Movie Link here.." />
				</div>
			</div>
			<br>
			<div class="mb-3">
				<h5>Movie Description :</h5>
				<textarea class="form-control" id="exampleFormControlTextarea1" name="movdescription" value=""
					rows="3"></textarea>
			</div>
			<br>
			<div class="form-group">
				<input type="submit" name="s" id="btn" value='Add New Movie'
					class="btn btn-outline-success form-control" />
			</div>

		</form>
	</div>

</body>
</html>