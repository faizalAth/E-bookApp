<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@ include file="common-components/common-resources.jsp"%>
</head>
<body style="background-color: #ededed;">

	<%@ include file="common-components/navbar.jsp"%>

	<div class="container-fluid mt-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header text-center">
						<h3>Login</h3>
						<c:if test="${not empty failedMsg}">
							<p class="text-danger"><c:out value="${failedMsg}"></c:out></p>
							<c:remove var="failedMsg" scope="session"/>
						</c:if>
					</div>
					<div class="card-body">
						<form action="login" method="post">
							<div class="mb-3">
								<label for="emailId" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="emailId" name="email">
							</div>
							<div class="mb-3">
								<label for="passwordId" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="passwordId" name="password">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="common-components/footer.jsp"%>
</body>
</html>