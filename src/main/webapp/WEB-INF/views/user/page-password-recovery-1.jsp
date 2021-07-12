<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Title -->
<title>sumy web - 비밀번호 찾기</title>

<!-- Required Meta Tags Always Come First -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="/resources/static/assets/vendor/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="/resources/static/assets/vendor/icon-line/css/simple-line-icons.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="/resources/static/assets/vendor/icon-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/static/assets/vendor/icon-line-pro/style.css">
<link rel="stylesheet" href="/resources/static/assets/vendor/icon-hs/style.css">
<link rel="stylesheet" href="/resources/static/assets/vendor/animate.css">
<link rel="stylesheet"
	href="/resources/static/assets/vendor/hamburgers/hamburgers.min.css">
<link rel="stylesheet"
	href="/resources/static/assets/vendor/hs-megamenu/src/hs.megamenu.css">
<link rel="stylesheet"
	href="/resources/static/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">

<!-- CSS Unify Theme -->
<link rel="stylesheet" href="/resources/static/user/assets/css/styles.e-commerce.css">

<!-- CSS Customization -->
<link rel="stylesheet" href="/resources/static/assets/css/custom.css">
</head>

<body>
	<main>
		<!-- Header -->
		<header id="js-header"
			class="u-header u-header--sticky-top u-header--toggle-section u-header--change-appearance"
			data-header-fix-moment="300">
			<!-- Top Bar -->
			<jsp:include page="layout/header.jsp" />
			<!-- End Top Bar -->
		</header>
		<!-- End Header -->


		<!-- Login -->
		<section class="container g-py-100">
			<div class="row justify-content-center">
				<div class="col-sm-9 col-md-7 col-lg-5">
					<div
						class="g-brd-around g-brd-gray-light-v3 g-bg-white rounded g-px-30 g-py-50 mb-4">
						<header class="text-center mb-4">
							<h1 class="h4 g-color-black g-font-weight-400">비밀번호 찾기</h1>
							<p>
								비밀번호 찾기에 사용될<br>이메일 계정을 입력해주세요.
							</p>
						</header>

						<!-- Form -->
						<form class="g-py-15">
							<div class="form-group g-mb-20">
								<label class="g-mb-10">이메일</label>
								<div class="input-group g-mb-10">
									<input id="emailInput"
										class="form-control form-control-md rounded g-py-15 g-px-15"
										type="email" placeholder="이메일 주소 @포함">
									<div id="emailReBox" class="input-group-append p-0"
										style="display: none;">
										<!-- 이메일 인증 버튼 -->
										<button id="emailReBtn"
											class="rounded btn u-btn-white g-brd-primary g-color-primary g-font-size-12 text-uppercase g-py-17 g-px-15"
											type="button">메일주소 변경</button>
									</div>
									<div id="emailCertificationSendBox"
										class="input-group-append p-0">
										<!-- 이메일 인증 버튼 -->
										<button id="emailCertificationSendBtn"
											class="btn u-btn-primary g-font-size-12 text-uppercase g-py-17 g-px-15"
											type="button">인증</button>
									</div>
								</div>
								<small class="form-control-feedback" style="display: none;">이메일
									주소 입력은 필수 항목입니다.</small>
							</div>

							<div id="emailCertificationNumInput" class="form-group g-mb-20"
								style="display: none;">
								<div class="input-group g-mb-10">
									<input id="emailCertificationInput"
										class="form-control form-control-md rounded g-py-15 g-px-15"
										type="text" placeholder="이메일 인증번호 6자리 입력" maxlength="6"
										oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
									<div class="input-group-append p-0">
										<!-- 이메일 인증 버튼 -->
										<button id="emailCertificationSubmitBtn"
											class="rounded btn u-btn-primary g-font-size-12 text-uppercase g-py-17 g-px-15"
											type="button">인증번호 확인</button>
									</div>
									<span class="rounded g-px-15 g-py-13 g-color-primary">03:00</span>
								</div>
								<small class="form-control-feedback g-mt-10"
									style="display: none;">이메일 인증번호 입력은 필수 항목입니다.</small>
							</div>

						</form>
						<!-- End Form -->
					</div>

					<div class="row justify-content-between mb-5">
						<div class="col align-self-center text-center">
							<p class="g-font-size-13">
								비밀번호를 찾으셨습니까? <a href="page-login-1.html">로그인</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Login -->

		<!-- Footer -->
		<footer class="g-bg-main-light-v1">
			<jsp:include page="layout/footer.jsp" />
		</footer>
		<!-- End Footer -->

		<a class="js-go-to u-go-to-v2" href="#" data-type="fixed"
			data-position='{
           "bottom": 15,
           "right": 15
         }'
			data-offset-top="400" data-compensation="#js-header"
			data-show-effect="zoomIn"> <i class="hs-icon hs-icon-arrow-top"></i>
		</a>
	</main>

	<div class="u-outer-spaces-helper"></div>

	<!-- JS Global Compulsory -->
	<script src="/resources/static/assets/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/static/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
	<script src="/resources/static/assets/vendor/popper.js/popper.min.js"></script>
	<script src="/resources/static/assets/vendor/bootstrap/bootstrap.min.js"></script>

	<!-- JS Implementing Plugins -->
	<script src="/resources/static/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
	<script
		src="/resources/static/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

	<!-- JS Unify -->
	<script src="/resources/static/assets/js/hs.core.js"></script>
	<script src="/resources/static/assets/js/components/hs.header.js"></script>
	<script src="/resources/static/assets/js/helpers/hs.hamburgers.js"></script>
	<script src="/resources/static/assets/js/components/hs.dropdown.js"></script>
	<script src="/resources/static/assets/js/components/hs.scrollbar.js"></script>
	<script src="/resources/static/assets/js/components/hs.go-to.js"></script>

	<!-- JS Customization -->
	<script src="/resources/static/assets/js/custom.js"></script>

	<!-- JS Plugins Init. -->
	<script>
    $(document).on('ready', function () {
      // initialization of header
      $.HSCore.components.HSHeader.init($('#js-header'));
      $.HSCore.helpers.HSHamburgers.init('.hamburger');

      // initialization of HSMegaMenu component
      $('.js-mega-menu').HSMegaMenu({
        event: 'hover',
        pageContainer: $('.container'),
        breakpoint: 991
      });

      // initialization of HSDropdown component
      $.HSCore.components.HSDropdown.init($('[data-dropdown-target]'), {
        afterOpen: function () {
          $(this).find('input[type="search"]').focus();
        }
      });

      // initialization of HSScrollBar component
      $.HSCore.components.HSScrollBar.init($('.js-scrollbar'));

      // initialization of go to
      $.HSCore.components.HSGoTo.init('.js-go-to');
    });
  </script>
</body>
</html>