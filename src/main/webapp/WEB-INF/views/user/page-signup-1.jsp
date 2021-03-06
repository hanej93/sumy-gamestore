<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- Title -->
<title>sumy gamestore - Sign Up page</title>

<!--favicon  -->
<link rel="shortcut icon" type="image/x-icon" href="/resources/static/user/assets/img/logo/logo-yy (1).ico" />

<!--favicon  -->
<link rel="shortcut icon" type="image/x-icon" href="/resources/static/user/assets/img/logo/logo-yy (1).ico" />

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
	href="/resources/static/assets/vendor/icon-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/static/assets/vendor/icon-line-pro/style.css">
<link rel="stylesheet" href="/resources/static/assets/vendor/icon-hs/style.css">
<link rel="stylesheet" href="/resources/static/assets/vendor/chosen/chosen.css">
<link rel="stylesheet" href="/resources/static/assets/vendor/animate.css">
<link rel="stylesheet"
	href="/resources/static/assets/vendor/hs-megamenu/src/hs.megamenu.css">
<link rel="stylesheet"
	href="/resources/static/assets/vendor/hamburgers/hamburgers.min.css">
<link rel="stylesheet"
	href="/resources/static/assets/vendor/icon-line/css/simple-line-icons.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="/resources/static/assets/vendor/icon-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/static/assets/vendor/icon-line-pro/style.css">
<link rel="stylesheet"
	href="/resources/static/assets/vendor/jquery-ui/themes/base/jquery-ui.min.css">
<link rel="stylesheet" href="/resources/static/assets/vendor/chosen/chosen.css">
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

		<!-- Signup -->
		<section class="container g-pt-100 g-pb-20">
			<div class="row">
				<div class="col-lg-5 order-lg-2 g-mb-80">
					<div
						class="g-brd-around g-brd-gray-light-v3 g-bg-white rounded g-pt-50 mb-4">
						<header class="text-center mb-4">
							<h1 class="h4 g-color-black g-font-weight-400">?????? ??????</h1>
						</header>

						<!-- Form -->
						<form name="userInfo" method="post" action="/joinedSuccess">
							<!-- Profile Picture -->
							<div class="text-center g-pos-rel g-mb-30">
								<div class="g-width-100 g-height-100 mx-auto mb-3">
									<img id="blah2" class="rounded-circle"
										src="/resources/static/user/assets/img-temp/100x100/img1.jpg" alt="Image Decor"
										width="100%" height="100%">
									<input type="text" id="userProfileImage" name="userProfileImage" value="" style="display:none;">
								</div>

								<span
									class="u-icon-v3 u-icon-size--xs g-color-white--hover g-bg-primary--hover rounded-circle g-pos-abs g-top-0 g-right-15 g-cursor-pointer"
									title="????????? ?????? ??????" type="button" data-toggle="modal"
									data-target="#profileUpdateModal"> <i
									class="icon-finance-067 u-line-icon-pro"></i>
								</span>
							</div>
							<!-- End Profile Picture -->

							<hr class="g-brd-gray-light-v4 g-my-20 g-mt-40 g-mb-4">
							<!-- ?????? container -->
							<div class="g-px-30 g-py-40">
								<div class="form-group g-mb-20">
									<label class="g-mb-10">?????????</label>
									<div class="input-group g-mb-10">
										<input id="userEmail" name="userEmail"
											class="form-control form-control-md rounded g-py-15 g-px-15"
											type="email" placeholder="????????? ?????? @??????">
										<div id="emailReBox" class="input-group-append p-0"
											style="display: none;">
											<!-- ????????? ?????? ?????? -->
											<button id="emailReBtn"
												class="rounded btn u-btn-white g-brd-primary g-color-primary g-font-size-12 text-uppercase g-py-17 g-px-15"
												type="button">???????????? ??????</button>
										</div>
										<div id="emailCertificationSendBox"
											class="input-group-append p-0">
											<!-- ????????? ?????? ?????? -->
											<button id="emailCertificationSendBtn"
												class="btn u-btn-primary g-font-size-12 text-uppercase g-py-17 g-px-15"
												type="button">??????</button>
										</div>
									</div>
									<small class="form-control-feedback" style="display: none;">?????????
										?????? ????????? ?????? ???????????????.</small>
								</div>

								<div id="emailCertificationNumInput" class="form-group g-mb-20"
									style="display: none;">
									<div class="input-group g-mb-10">
										<input id="emailCertificationInput"
											class="form-control form-control-md rounded g-py-15 g-px-15"
											type="text" placeholder="????????? ???????????? 6?????? ??????" maxlength="6"
											oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
										<div class="input-group-append p-0">
											<!-- ????????? ?????? ?????? -->
											<button id="emailCertificationSubmitBtn"
												class="rounded btn u-btn-primary g-font-size-12 text-uppercase g-py-17 g-px-15"
												type="button">???????????? ??????</button>
										</div>
									</div>
									<small class="form-control-feedback g-mt-10"
										style="display: none;">????????? ???????????? ????????? ?????? ???????????????.</small>
								</div>

								<div class="form-group g-mb-20">
									<label class="g-mb-10">????????????</label>
									<div class="g-mb-10 input-group">
										<input id="userPassword" name="userPassword"
											class="form-control form-control-md g-py-15 g-px-15 rounded-right-none"
											type="text" placeholder="???????????? ??????">
											<span class="input-group-append g-color-gray-dark-v5 rounded-left-none justify-content-center align-items-center g-bg-white g-rounded-right-3" style="border :1px solid #ced4da;cursor:pointer;"><i id="passwordEye" class="fa fa-eye fa-lg"></i>
										</span>
									</div>
									<small class="form-control-feedback" style="display: none;">????????????
										????????? ?????? ???????????????.</small>
									<div class="g-color-gray-dark-v5 g-font-size-12">?????????
										??????, ?????? ??????, ?????? ?????? ??????, ??????x, ???????????? 8~20???</div>
								</div>

								<div class="form-group g-mb-20">
									<label class="g-mb-10">???????????? ??????</label>
									<div class="g-mb-10 input-group">
										<input id="rePasswordInput"
											class="form-control form-control-md g-py-15 g-px-15 rounded-right-none"
											type="text" placeholder="???????????? ?????????">
										<span class="input-group-append g-color-gray-dark-v5 rounded-left-none justify-content-center align-items-center g-bg-white g-rounded-right-3" style="border :1px solid #ced4da;cursor:pointer;"><i id="passwordEye2" class="fa fa-eye fa-lg"></i>
										</span>
									</div>
									<small class="form-control-feedback" style="display: none;">????????????
										???????????? ?????? ???????????????.</small>
								</div>

								<div class="form-group g-mb-20">
									<label class="g-mb-10">??????</label>
									<div class="g-mb-10">
										<input id="userName" name="userName"
											class="form-control form-control-md rounded g-py-15 g-px-15"
											type="text" placeholder="?????? ??????" maxlength="17">
									</div>
									<small class="form-control-feedback" style="display: none;">??????
										????????? ?????? ???????????????.</small>
								</div>

								<div class="form-group g-mb-20">
									<label class="g-mb-10">??????</label>
									<div class="g-mb-10">
										<input id="userNickname" name="userNickname"
											class="form-control form-control-md rounded g-py-15 g-px-15"
											type="text" placeholder="?????? 10?????? ????????? ??????" maxlength="10">
									</div>
									<small class="form-control-feedback" style="display: none;">??????
										????????? ?????? ???????????????.</small>
								</div>

								<div class="form-group g-mb-20">
									<label class="g-mb-10">???????????? ??????</label>
									<div class="row">
										<div class="col g-mb-10">
											<input id="userBirthDate" name="userBirthDate"
												class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15"
												type="date" placeholder="??????">
										</div>
									</div>
									<small class="form-control-feedback" style="display: none;">????????????
										????????? ?????? ???????????????.</small>

								</div>

								<div class="form-group g-mb-20">
									<label class="g-mb-10">??????</label>
									<div class="g-mb-10">
										<select id="userGender" name="userGender" class="form-control rounded g-py-12">
											<option value="1">??????</option>
											<option value="2">??????</option>
										</select>
									</div>
									<small class="form-control-feedback" style="display: none;">??????
										????????? ?????? ???????????????.</small>
								</div>
							</div>
							<!-- end ?????? container -->

							<!-- ?????? container -->
							<div class="g-px-30 g-py-40 g-bg-gray-light-v5">
								<div id="callBackDiv" class="form-group g-mb-20">
									<label class="g-mb-10">??????</label>
									<div class="row no-gutters g-mb-10">
										<div class="input-group col-10">
											<input id="userZipCode" name="userZipCode"
												class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15"
												type="text" placeholder="???????????? ??????">
											<div class="input-group-append p-0">
												<!-- ???????????? ?????? ?????? -->
												<button
													class="btn u-btn-primary g-font-size-12 text-uppercase g-py-17 g-px-15"
													type="button" onclick="goPopup()">???????????? ??????</button>
											</div>
										</div>
									</div>

									<div class="g-mb-10">
										<input id="userAddress" name="userAddress"
											class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15"
											type="text" placeholder="?????? ??????">
									</div>

									<div>
										<input id="userDetailAddress" name="userDetailAddress"
											class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15"
											type="text" placeholder="???????????? ??????">
									</div>
								</div>

								<div class="form-group g-mb-20">
									<label class="g-mb-10">?????????</label>
									<div>
										<input id="userPhoneNumber" name="userPhoneNumber"
											class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15"
											type="text" maxlength="11" placeholder="????????? -?????? ??????"
											oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
									</div>
									<small class="form-control-feedback" style="display: none;">?????????
										???????????? ??????????????????.</small>
								</div>

								<div class="row no-gutters g-mb-40">
									<div class="col-6">
										<button id="joinBtn"
											class="btn btn-block u-btn-primary g-font-size-12 text-uppercase g-py-12 g-px-25 mr-1"
											type="submit">????????????</button>
									</div>
									<div class="col-6">
										<button id="resetBtn"
											class="btn btn-block g-font-size-12 text-uppercase g-py-12 g-px-25 ml-1 u-btn-white g-brd-gray-light-v3"
											type="button">????????????</button>
									</div>
								</div>
								<div class="text-center">
									<p class="g-color-gray-dark-v5 mb-0">
										?????? ????????? ???????????????? <a class="g-font-weight-600"
											href="/sumy/login">?????????</a>
									</p>
								</div>
							</div>
							<!-- end ?????? container -->
						</form>
						<!-- End Form -->
					</div>

				</div>

				<div class="col-lg-7 order-lg-1 g-mb-80">
					<div class="g-pr-20--lg">
						<div class="mb-5">
							<h2 class="h1 g-font-weight-400 mb-3" style="color: cadetblue;">
								<b>"Welcome to Sumy"</b>
							</h2>
							<img width="100%" src="/resources/static/user/assets/img/banner/people-playing-ludo-game_23-2148698179.jpg" alt="people-playing-ludo-game_23-2148698179.jpg"/>
							<p class="g-color-gray-dark-v4" style="color: teal;">
							<h5>Sumy ??????????????? ???????????? ?????????????????? ???????????? ????????? ????????? ???????????????!</h5>
							</p>
							<p>????????? ????????? ?????????????????? ???????????? ??? ?????? ?????? ?????? ????????? ???????????? ???????????????.</p>
						</div>

						<div class="row text-center mb-5">
							<div class="col-sm-4 g-mb-10">
								<!-- Counters -->
								<div class="g-bg-gray-light-v5 g-pa-20">
									<span class="u-icon-v3 g-bg-teal"> <i
										class="icon-game-controller icons g-color-white"></i>
									</span>
									<div class="col-sm-4 g-mb-10"></div>
									<h4 class="g-color-gray-dark-v4 g-font-size-12 text-uppercase">Games</h4>
								</div>
								<!-- End Counters -->
							</div>

							<div class="col-sm-4 g-mb-10">
								<!-- Counters -->
								<div class="g-bg-gray-light-v5 g-pa-20">
									<span class="u-icon-v3 g-bg-cyan"> <i
										class="icon-ghost icons g-color-white"></i>
									</span>
									<div class="col-sm-4 g-mb-10"></div>
									<h4 class="g-color-gray-dark-v4 g-font-size-12 text-uppercase">Friends</h4>
								</div>
								<!-- End Counters -->
							</div>

							<div class="col-sm-4 g-mb-10">
								<!-- Counters -->
								<div class="g-bg-gray-light-v5 g-pa-20">
									<span class="u-icon-v3 g-bg-darkred"> <i
										class="icon-puzzle icons g-color-white"></i>
									</span>
									<div class="col-sm-4 g-mb-10"></div>
									<h4 class="g-color-gray-dark-v4 g-font-size-12 text-uppercase">
										enjoy</h4>
								</div>
								<!-- End Counters -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Signup -->

		<!-- ????????? ?????? ?????? ?????? ?????? ?????? -->
		<div class="modal fade" id="profileUpdateModal" tabindex="-1"
			aria-labelledby="declarationModalLabel" style="display: none;"
			aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title ml-auto" id="declarationModalLabel">?????????
							?????? ????????????</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">??</span>
						</button>
					</div>
					<div class="modal-body">
						<form id="fileForm">
							<label class="g-mb-10">????????? ??????</label>
							<div class="input-group g-mb-10">
								<div class="custom-file">
									<!-- Plain File Input -->
									<div class="form-group mb-0">
										<label class="u-file-attach-v2 g-color-gray-dark-v5 mb-0">
											<input id="imgInp" class="questionFileInput"
											name="file-attachment" type="file"> <i
											class="icon-cloud-upload g-font-size-16 g-pos-rel g-top-2 g-mr-5"></i>
											<span class="js-value">????????? ??????</span>
										</label>
									</div>
									<!-- End Plain File Input -->
								</div>
							</div>
							<div
								class="g-brd-around g-brd-gray-light-v3 g-bg-white rounded g-mb-20 text-center"
								style="height: 360px">
								<img id="blah" class="img-fluid"
									src="/resources/static/user/assets/img-temp/500x320/img1.png" style="height: 100%;"
									alt="????????? ????????? ??????????????????.">
							</div>
						</form>
					</div>
					<div class="modal-footer justify-content-center">
						<div class="row g-mx-minus-5 g-mb-20">
							<button id="profileSignUpBtn"
								class="btn btn-lg u-btn-primary g-mr-10 g-font-size-14"
								type="button" aria-label="Close">
								????????????</button>
							<button
								class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14"
								data-dismiss="modal" aria-label="Close" type="button">
								??????</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- ????????? ?????? ?????? ?????? ?????? ??? -->

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
	<script src="/resources/static/assets/vendor/appear.js"></script>
	<script src="/resources/static/assets/vendor/chosen/chosen.jquery.js"></script>
	<script src="/resources/static/assets/vendor/image-select/src/ImageSelect.jquery.js"></script>
	<script src="/resources/static/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
	<script
		src="/resources/static/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

	<!-- JS Unify -->
	<script src="/resources/static/assets/js/hs.core.js"></script>
	<script src="/resources/static/assets/js/components/hs.header.js"></script>
	<script src="/resources/static/assets/js/helpers/hs.hamburgers.js"></script>
	<script src="/resources/static/assets/js/components/hs.dropdown.js"></script>
	<script src="/resources/static/assets/js/components/hs.scrollbar.js"></script>
	<script src="/resources/static/assets/js/components/hs.select.js"></script>
	<script src="/resources/static/assets/js/components/hs.counter.js"></script>
	<script src="/resources/static/assets/js/components/hs.go-to.js"></script>
	<script src="/resources/static/assets/js/components/hs.file-attachement.js"></script>
	<script src="/resources/static/assets/js/helpers/hs.file-attachments.js"></script>

	<!-- JS Customization -->
	<script src="/resources/static/user/assets/js/page-signup-1.js"></script>
	<script src="/resources/static/user/assets/js/footer.js"></script>

	<!-- JS Plugins Init. -->
	<script>
        $(document).on('ready', function () {
            // initialization of header
            $.HSCore.components.HSHeader.init($('#js-header'));
            $.HSCore.helpers.HSHamburgers.init('.hamburger');

            // initialization of HSMegaMenu plugin
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

            // initialization of custom select
            $.HSCore.components.HSSelect.init('.js-custom-select');

            // initialization of counters
            var counters = $.HSCore.components.HSCounter.init('[class*="js-counter"]');

            // input = file ????????????
            $.HSCore.helpers.HSFileAttachments.init();
            $.HSCore.components.HSFileAttachment.init('.js-file-attachment');
        });
    </script>
</body>
</html>