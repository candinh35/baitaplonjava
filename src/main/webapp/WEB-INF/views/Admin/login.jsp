<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from codervent.com/dashtreme/demo/vertical/auth-basic-signin.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 21 Jun 2023 10:08:41 GMT -->
<jsp:include page="head.jsp" flush="true"></jsp:include>

<body class="bg-theme bg-theme1">
	<!--wrapper-->
	<div class="wrapper">
		<div
			class="section-authentication-signin d-flex align-items-center justify-content-center my-5 my-lg-0">
			<div class="container">
				<div class="row row-cols-1 row-cols-lg-2 row-cols-xl-3">
					<div class="col mx-auto">
						<div class="card mb-0">
							<div class="card-body">
								<div class="p-4">
									<div class="mb-3 text-center">
										<img src="assets/images/logo-icon.png" width="60" alt="" />
									</div>
									<div class="text-center mb-4">
										<h5 class="">Dashtrans Admin</h5>
										<p class="mb-0">Please log in to your account</p>
									</div>
									<div class="form-body">
										<form class="row g-3" id="login-form"
												name='loginForm'
												action="<c:url value='j_spring_security_login' />"
												method="post">
											<div class="col-12">
												<label for="inputEmailAddress" class="form-label">User Name</label>
												<input name="username" type="text" class="form-control"
													id="UserName" placeholder="Enter user name">
											</div>
											<div class="col-12">
												<label for="inputChoosePassword" class="form-label">Password</label>
												<div class="input-group" id="show_hide_password">
													<input path="password" name="password" type="password" class="form-control border-end-0"
														id="inputChoosePassword"
														placeholder="Enter Password"> <a
														href="javascript:;"
														class="input-group-text bg-transparent"><i
														class='bx bx-hide'></i></a>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-check form-switch">
													<input class="form-check-input" type="checkbox"
														id="flexSwitchCheckChecked"> <label
														class="form-check-label" for="flexSwitchCheckChecked">Remember
														Me</label>
												</div>
											</div>
											<div class="col-md-6 text-end">
												<a href="auth-basic-forgot-password.html">Forgot
													Password ?</a>
											</div>
											<div class="col-12">
												<div class="d-grid">
													<button type="submit" name="submit" class="btn btn-light">Sign
														in</button>
												</div>
												<input type="hidden" name="${_csrf.parameterName}"
																	value="${_csrf.token}" />
											</div>
											<div class="col-12">
												<div class="text-center ">
													<p class="mb-0">
														Don't have an account yet? <a
															href="auth-basic-signup.html">Sign up here</a>
													</p>
												</div>
											</div>
										</form>
									</div>
									<div class="login-separater text-center mb-5">
										<span>OR SIGN IN WITH</span>
										<hr />
									</div>
									<div class="list-inline contacts-social text-center">
										<a href="javascript:;"
											class="list-inline-item bg-light text-white border-0 rounded-3"><i
											class="bx bxl-facebook"></i></a> <a href="javascript:;"
											class="list-inline-item bg-light text-white border-0 rounded-3"><i
											class="bx bxl-twitter"></i></a> <a href="javascript:;"
											class="list-inline-item bg-light text-white border-0 rounded-3"><i
											class="bx bxl-google"></i></a> <a href="javascript:;"
											class="list-inline-item bg-light text-white border-0 rounded-3"><i
											class="bx bxl-linkedin"></i></a>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<!--end row-->
			</div>
		</div>
	</div>
	<!--end wrapper-->
	<!--start switcher-->


	<!--end switcher-->
	<!-- Bootstrap JS -->
	<jsp:include page="scripts.jsp" flush="true"></jsp:include>
	<!--Password show & hide js -->
	<script>
		$(document).ready(
				function() {
					$("#show_hide_password a")
							.on(
									'click',
									function(event) {
										event.preventDefault();
										if ($('#show_hide_password input')
												.attr("type") == "text") {
											$('#show_hide_password input')
													.attr('type', 'password');
											$('#show_hide_password i')
													.addClass("bx-hide");
											$('#show_hide_password i')
													.removeClass("bx-show");
										} else if ($(
												'#show_hide_password input')
												.attr("type") == "password") {
											$('#show_hide_password input')
													.attr('type', 'text');
											$('#show_hide_password i')
													.removeClass("bx-hide");
											$('#show_hide_password i')
													.addClass("bx-show");
										}
									});
				});
	</script>


	<script>
		$(".switcher-btn").on("click", function() {
			$(".switcher-wrapper").toggleClass("switcher-toggled")
		}), $(".close-switcher").on("click", function() {
			$(".switcher-wrapper").removeClass("switcher-toggled")
		}),

		$('#theme1').click(theme1);
		$('#theme2').click(theme2);
		$('#theme3').click(theme3);
		$('#theme4').click(theme4);
		$('#theme5').click(theme5);
		$('#theme6').click(theme6);
		$('#theme7').click(theme7);
		$('#theme8').click(theme8);
		$('#theme9').click(theme9);
		$('#theme10').click(theme10);
		$('#theme11').click(theme11);
		$('#theme12').click(theme12);
		$('#theme13').click(theme13);
		$('#theme14').click(theme14);
		$('#theme15').click(theme15);

		function theme1() {
			$('body').attr('class', 'bg-theme bg-theme1');
		}

		function theme2() {
			$('body').attr('class', 'bg-theme bg-theme2');
		}

		function theme3() {
			$('body').attr('class', 'bg-theme bg-theme3');
		}

		function theme4() {
			$('body').attr('class', 'bg-theme bg-theme4');
		}

		function theme5() {
			$('body').attr('class', 'bg-theme bg-theme5');
		}

		function theme6() {
			$('body').attr('class', 'bg-theme bg-theme6');
		}

		function theme7() {
			$('body').attr('class', 'bg-theme bg-theme7');
		}

		function theme8() {
			$('body').attr('class', 'bg-theme bg-theme8');
		}

		function theme9() {
			$('body').attr('class', 'bg-theme bg-theme9');
		}

		function theme10() {
			$('body').attr('class', 'bg-theme bg-theme10');
		}

		function theme11() {
			$('body').attr('class', 'bg-theme bg-theme11');
		}

		function theme12() {
			$('body').attr('class', 'bg-theme bg-theme12');
		}

		function theme13() {
			$('body').attr('class', 'bg-theme bg-theme13');
		}

		function theme14() {
			$('body').attr('class', 'bg-theme bg-theme14');
		}

		function theme15() {
			$('body').attr('class', 'bg-theme bg-theme15');
		}
	</script>


</body>


<!-- Mirrored from codervent.com/dashtreme/demo/vertical/auth-basic-signin.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 21 Jun 2023 10:08:41 GMT -->
</html>