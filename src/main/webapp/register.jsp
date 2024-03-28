<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@ include file="common-components/common-resources.jsp"%>
</head>
<body style="background-color: #ededed">

	<%@ include file="../../common-components/navbar.jsp"%>

	<div class="container-fluid mt-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header text-center">
						<h3>Register</h3>
						<c:if test="${not empty successMsg}">
							<p class="text-success"> <c:out value="${successMsg}" default="sessi"></c:out> </p>
							<c:remove var="successMsg" scope="session"/>
						</c:if>
						<c:if test="${not empty failedMsg}">
							<p class="text-danger"> <c:out value="${failedMsg}"></c:out> </p>
							<c:remove var="failedMsg" scope="session"/>
						</c:if>
					</div>
					<div class="card-body">
						<form action="register" method="post">
							<div class="mb-3">
								<label for="firstName" class="form-label">First Name </label> <input
									type="text" class="form-control" id="firstName" name="firstName" value="${userData.firstName}">
							</div>
							<div class="mb-3">
								<label for="lastName" class="form-label">Last Name </label> <input
									type="text" class="form-control" id="lastName" name="lastName" value="${userData.lastName}">
							</div>
							<div class="mb-3">
								<label for="mobileNumber" class="form-label">Mobile
									Number</label> <input type="number" maxlength="10" name="mobile" class="form-control"
									id="mobileNumber" value="${userData.mobile}">
							</div>
							<div class="mb-3">
								<label for="mobileNumber" class="form-label">Role</label> 
								<select name="role" id="roleId" class="form-control">
									<option value="U">User</option>
									<option value="A">Admin</option>
								</select>
							</div>
							<div class="mb-3">
								<label for="emailId" class="form-label">Email I'd</label> <input
									type="email" class="form-control" id="emailId" name="email" value="${userData.email}">
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Password</label> <input
									type="password" class="form-control" id="password" name="password">
							</div>
							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input" name="condition"
									id="agreeCheckBox"> <label class="form-check-label"
									for="agreeCheckBox">Terms and Conditions</label>
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