<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>E-Book || Home</title>
<%@ include file="common-components/common-resources.jsp"%>
</head>
<style>

.banner-img {
	background: linear-gradient(0deg, rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.8)), url("img/book_banner.jpg");
	width: 100%;
	height: 60vh;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: bottom;
}

.hover-effect{
    transition: transform 0.3s ease-in-out;
    border: none;
}
.hover-effect:hover{
	transform: scale(1.03);
}
</style>
<body style="background-color: #e6ebe7">

	<%@ include file="common-components/navbar.jsp"%>

	<div class="container-fluid banner-img">
		<div class="row  text-center">
			<h1 class="mt-3 text-white">E-Book Management System</h1>
		</div>
	</div>


	<!-- Recent Book -->
	<div class="container-fluid " id="recent_book_id">
		<h3 class="text-center mt-2">Recent Book</h3>
		<div class="row justify-content-center">
			<div class="col-md-3 col-6 text-center">
				<div class="card hover-effect">
					<div class="card-body">
						<img alt="" src="img/rec_book1.jpg" style="width: 150px; height: 200px;">
						<p>Java for Beginners</p>
						<p>Josh Thompson</p>
						<p>Category : New</p>
						<div class="text-center">
							<a class="btn btn-sm btn-danger"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a> 
							<a class="btn btn-sm btn-success">$130</a>
							<a class="btn btn-sm btn-danger">View</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3 col-6 text-center">
				<div class="card hover-effect">
					<div class="card-body ">
						<img alt="" src="img/rec_book2.jpg" style="width: 150px; height: 200px;">
						<p>Java Seventh Edition</p>
						<p>Herbert Schildt</p>
						<p>Category : New</p>
						<div class="text-center">
							<a class="btn btn-sm btn-danger"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a> 
							<a class="btn btn-sm btn-success">$190</a>
							<a class="btn btn-sm btn-danger">View</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3 col-6 text-center">
				<div class="card hover-effect">
					<div class="card-body ">
						<img alt="" src="img/rec_book3.jpg" style="width: 150px; height: 200px;">
						<p>Java Programming</p>
						<p>Balaguru swamy</p>
						<p>Category : New</p>
						<div class="text-center">
							<a class="btn btn-sm btn-danger"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a> 
							<a class="btn btn-sm btn-success">$50</a>
							<a class="btn btn-sm btn-danger">View</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3 col-6 text-center">
				<div class="card hover-effect">
					<div class="card-body">
						<img alt="" src="img/rec_book4.jpg"  style="width: 150px; height: 200px;">
						<p>Advanced Java</p>
						<p>Surbhi Kakar</p>
						<p>Category : New</p>
						<div class="text-center">
							<a class="btn btn-sm btn-danger"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a> 
							<a class="btn btn-sm btn-success">$105</a>
							<a class="btn btn-sm btn-danger">View</a>
						</div>
					</div>
				</div>
			</div>
			<div class="text-center">
				<button type="button" class="btn btn-md btn-danger mt-3">view All</button>
			</div>
		</div>
	</div>
	
	<!-- END RECENT BOOK -->
	<div class="container">
		<hr/>
	</div>
	
	<!-- Recent Book -->
	<div class="container-fluid" id="new_book_id">
		<h3 class="text-center mt-2">New Book</h3>
		<div class="row justify-content-center">
			<div class="col-md-3 col-6 text-center">
				<div class="card hover-effect">
					<div class="card-body ">
						<img alt="" src="img/js.jpg" style="width: 150px; height: 200px;">
						<p>Java Seventh Edition</p>
						<p>Herbert Schildt</p>
						<p>Category : New</p>
						<div class="text-center">
							<a class="btn btn-sm btn-danger">Add Cart</a> 
							<a class="btn btn-sm btn-success">$150</a>
							<a class="btn btn-sm btn-danger">View</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3 col-6 text-center">
				<div class="card hover-effect">
					<div class="card-body ">
						<img alt="" src="img/other.jpg" style="width: 150px; height: 200px;">
						<p>Java Programming</p>
						<p>Balaguru swamy</p>
						<p>Category : New</p>
						<div class="text-center">
							<a class="btn btn-sm btn-danger">Add Cart</a> 
							<a class="btn btn-sm btn-success">$150</a>
							<a class="btn btn-sm btn-danger">View</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3 col-6 text-center">
				<div class="card hover-effect">
					<div class="card-body">
						<img alt="" src="img/c_language.jpg"  style="width: 150px; height: 200px;">
						<p>Advanced Java</p>
						<p>Surbhi Kakar</p>
						<p>Category : New</p>
						<div class="text-center">
							<a class="btn btn-sm btn-danger">Add Cart</a> 
							<a class="btn btn-sm btn-success">$150</a>
							<a class="btn btn-sm btn-danger">View</a>
						</div>
					</div>
				</div>
			</div>
			<div class="text-center">
				<button type="button" class="btn btn-md btn-danger mt-3"> view All</button>
			</div>
		</div>
	</div>
	
	<!-- END NEW BOOK -->
	<div class="container">
		<hr/>
	</div>
	
	<!-- OLD Book -->
	<div class="container-fluid" id="old_book_id">
		<h3 class="text-center mt-2">Old Book</h3>
		<div class="row justify-content-center">
			<div class="col-md-3 col-6 text-center">
				<div class="card hover-effect">
					<div class="card-body ">
						<img alt="" src="img/js.jpg" style="width: 150px; height: 200px;">
						<p>Java Seventh Edition</p>
						<p>Herbert Schildt</p>
						<p>Category : New</p>
						<div class="text-center">
							<a class="btn btn-sm btn-danger">Add Cart</a> 
							<a class="btn btn-sm btn-success">$150</a>
							<a class="btn btn-sm btn-danger">View</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3 col-6 text-center">
				<div class="card hover-effect">
					<div class="card-body ">
						<img alt="" src="img/rec_book3.jpg" style="width: 150px; height: 200px;">
						<p>Java Programming</p>
						<p>Balaguru swamy</p>
						<p>Category : New</p>
						<div class="text-center">
							<a class="btn btn-sm btn-danger">Add Cart</a> 
							<a class="btn btn-sm btn-success">$150</a>
							<a class="btn btn-sm btn-danger">View</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3 col-6 text-center">
				<div class="card hover-effect">
					<div class="card-body">
						<img alt="" src="img/cpp.jpg"  style="width: 150px; height: 200px;">
						<p>Advanced Java</p>
						<p>Surbhi Kakar</p>
						<p>Category : New</p>
						<div class="text-center">
							<a class="btn btn-sm btn-danger">Add Cart</a> 
							<a class="btn btn-sm btn-success">$150</a>
							<a class="btn btn-sm btn-danger">View</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3 col-6 text-center">
				<div class="card hover-effect">
					<div class="card-body">
						<img alt="" src="img/python.jpg" style="width: 150px; height: 200px;">
						<p>Java for Beginners</p>
						<p>Josh Thompson</p>
						<p>Category : New</p>
						<div class="text-center">
							<a class="btn btn-sm btn-danger">Add Cart</a> 
							<a class="btn btn-sm btn-success">$150</a>
							<a class="btn btn-sm btn-danger">View</a>
						</div>
					</div>
				</div>
			</div>
			<div class="text-center">
				<button type="button" class="btn btn-md btn-danger mt-3"> view All</button>
			</div>
		</div>
	</div>
	
	<%@ include file="common-components/footer.jsp" %>
	<!-- END OLD BOOK -->
</body>
</html>