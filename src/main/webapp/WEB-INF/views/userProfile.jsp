<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile</title>
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
	<!-- User Menu navbar -->
	<jsp:include page="userNavbar.jsp"></jsp:include>
	<div class="container profile-container" style="width:600px">
		<h2 class="text-center mb-4">User Profile</h2>
		<form>
			<!-- Username -->
			<div class="form-group">
				<label for="uname">Username</label> <input type="text"
					class="form-control" id="uname" value="${user.getUname()}">
			</div>

			<!-- Birthday -->
			<div class="form-group">
				<label for="birthday">Birthday</label> <input type="date"
					class="form-control" id="birthday" value="${user.getBirthday()}">
			</div>

			<!-- Mobile Number -->
			<div class="form-group">
				<label for="umobileno">Mobile Number</label> <input type="tel"
					class="form-control" id="umobileno" value="${user.getUmobileno()}">
			</div>

			<!-- Password -->
			<div class="form-group">
				<label for="upassword">Password</label> <input type="password"
					class="form-control" id="upassword" value="${user.getUpassword()}">
			</div>

			<!-- Update Button -->
			<button type="submit" class="btn btn-primary btn-block">Update</button>
		</form>
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