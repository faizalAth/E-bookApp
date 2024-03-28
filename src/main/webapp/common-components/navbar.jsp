<!-- main header -->
<div class="fixed-div fixed-tops">
	<div class="container-fluid bg-white">
	<div class="row p-2">
		<div class="col-md-3">
			<h1><a class="text-success" href="index.jsp"><i class="fa-solid fa-book"></i>E-book</a></h1>
		</div>
		<div class="col-md-6">
			<form class="d-flex" role="search">
				<input class="form-control w-50 me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-primary" type="submit">Search</button>
			</form>
		</div>
		<div class="col-md-3">
			<a href="login.jsp" class="ml-3 btn btn-primary"><i class="fa-solid fa-user"></i> Login</a>
			<a href="register.jsp" class="btn btn-success"><i class="fa-solid fa-user-plus"></i> Register</a>
		</div>
	</div> 
</div>

	<nav class="navbar navbar-expand-lg  navbar-dark bg-custome">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house"></i></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active" href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link active" href="#recent_book_id"><i class="fa-solid fa-book"></i> Recent Book</a></li>
					<li class="nav-item"><a class="nav-link active" href="#new_book_id"><i class="fa-solid fa-book-open"></i> New Book</a></li>
					<li class="nav-item"><a class="nav-link active" href="#new_book_id"><i class="fa-solid fa-book"></i> Old Book</a></li>
				</ul>
				<form class="" role="search">
					<button class="btn btn-light" type="submit"><i class="fa-solid fa-gear"></i> Setting</button>
					<button class="btn btn-light ml-1" type="submit"><i class="fa-solid fa-phone-volume"></i> Contact us</button>
				</form>
			</div>
		</div>
	</nav>
</div>