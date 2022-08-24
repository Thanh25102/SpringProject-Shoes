<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Register</title>

<!-- Custom fonts for this template-->
<link
	href="<c:url value="/template/admin/vendor/fontawesome-free/css/all.min.css"/>"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="<c:url value="/template/admin/css/sb-admin-2.min.css"/>"
	rel="stylesheet">

</head>

<body class="bg-gradient-primary">

	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
					<div class="col-lg-7">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
							</div>
							<c:url value="/register" var="action" />
							<form:form class="user" method="post"
								id="form-register-spring-project" action="${ action }"
								modelAttribute="user">
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<form:errors path="fullName" cssClass="text-danger"
											element="p" />
										<form:input type="text" class="form-control form-control-user"
											path="fullName" id="exampleFirstName" placeholder="Full Name" />
									</div>
									<div class="col-sm-6 mb-3 mb-sm-0">
										<form:errors path="email" cssClass="text-danger" element="p" />
										<form:input type="email"
											class="form-control form-control-user" path="email"
											id="exampleFirstName" placeholder="Email Address" />
									</div>
								</div>
								<div class="form-group">
									<c:if test="${errMsgUserName !=null}">
										<p class="text-danger">${errMsgUserName}</p>
									</c:if>
									<form:input type="text" class="form-control form-control-user"
										id="exampleInputEmail" path="userName" placeholder="Username" />
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<form:errors path="password" cssClass="text-danger"
											element="p" />
										<form:input type="password"
											class="form-control form-control-user"
											id="exampleInputPassword" placeholder="Password"
											path="password" />
									</div>
									<div class="col-sm-6">
										<c:if test="${errMsgConfirmPass !=null}">
											<p class="text-danger">${errMsgConfirmPass}</p>
										</c:if>
										<form:errors path="confirmPassword" cssClass="text-danger"
											element="p" />
										<form:input type="confirmPassword"
											class="form-control form-control-user"
											id="exampleRepeatPassword" placeholder="Repeat Password"
											path="confirmPassword" />
									</div>
								</div>
								<a href="#" onclick="submitFunction();"
									class="btn btn-primary btn-user btn-block"> Register
									Account </a>
								<hr>
								<a href="../admin/index.jsp"
									class="btn btn-google btn-user btn-block"> <i
									class="fab fa-google fa-fw"></i> Register with Google
								</a>
								<a href="../admin/index.jsp"
									class="btn btn-facebook btn-user btn-block"> <i
									class="fab fa-facebook-f fa-fw"></i> Register with Facebook
								</a>
							</form:form>
							<hr>
							<div class="text-center">
								<a class="small" href="forgot-password.jsp">Forgot Password?</a>
							</div>
							<div class="text-center">
								<a class="small" href="login.jsp">Already have an account?
									Login!</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Bootstrap core JavaScript-->
	<script
		src="<c:url value="/template/admin/vendor/jquery/jquery.min.js"/>"></script>
	<script
		src="<c:url value="/template/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="<c:url value="/template/admin/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

	<!-- Custom scripts for all pages-->
	<script src="<c:url value="/template/admin/js/sb-admin-2.min.js"/>"></script>

	<script>
		function submitFunction() {
			document.getElementById("form-register-spring-project").submit();
		}
	</script>

</body>

</html>