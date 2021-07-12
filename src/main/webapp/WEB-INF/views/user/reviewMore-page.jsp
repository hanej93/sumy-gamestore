<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
<!-- Title -->
<title>sumy web - 리뷰더보기화면</title>

<!-- Required Meta Tags Always Come First -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Favicon -->
<link rel="shortcut icon" href="../favicon.ico">

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="/resources/static/assets/vendor/bootstrap/bootstrap.min.css">

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
<link rel="stylesheet" href="/resources/static/assets/vendor/slick-carousel/slick/slick.css">
<link rel="stylesheet"
	href="/resources/static/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">
<link rel="stylesheet"
	href="/resources/static/assets/vendor/icon-line/css/simple-line-icons.css">

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
			<jsp:include page="layout/header.jsp"/>
			<!-- End Top Bar -->
		</header>
		<!-- End Header -->

		<!-- Breadcrumbs -->
		<section class="g-brd-bottom g-brd-gray-light-v4 g-py-30">
			<div class="container">
				<ul class="u-list-inline">
					<li class="list-inline-item g-mr-5"><a
						class="u-link-v5 g-color-text" href="catalogue-page.html">게임
							카탈로그 목록</a> <i class="g-color-gray-light-v2 g-ml-5 fa fa-angle-right"></i>
					</li>
					<li class="list-inline-item g-mr-5"><a
						class="u-link-v5 g-color-text" href="page-single-product-1.html">게임
							상세보기</a> <i class="g-color-gray-light-v2 g-ml-5 fa fa-angle-right"></i>
					</li>
					<li class="list-inline-item g-color-primary"><span>리뷰
							더보기</span></li>
				</ul>
			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- Product Description -->
		<div class="container g-py-50">
			<div class="row g-pt-10">
				<!-- Product Info -->
				<div class="col-lg-5">
					<img class="img-fluid" src="/resources/static/user/assets/img-temp/500x320/img1.png"
						alt="Image Description">
				</div>
				<div class="col-lg-7">
					<h2
						class="g-color-gray-dark-v5 g-font-weight-400 g-font-size-12 text-uppercase mb-2 g-mt-30">어나더레벨코프</h2>
					<h1 class="g-font-weight-300 mb-4">Little Big Workshop</h1>
					<!-- End Product Info -->

					<!-- Price -->
					<div class="g-mb-30">
						<h2
							class="g-color-gray-dark-v5 g-font-weight-400 g-font-size-12 text-uppercase mb-2">게임
							가격</h2>

						<span class="g-color-black g-font-weight-500 g-font-size-30 mr-2">&#8361;33,000</span>
						<s class="g-color-gray-dark-v4 g-font-weight-500 g-font-size-16">&#8361;44,000</s>
					</div>
					<!-- End Price -->
					<!-- Buttons -->
					<div class="row g-mx-minus-5 g-mb-20">
						<div class="col g-px-5 g-mb-10">
							<button
								class="btn btn-block u-btn-primary g-font-size-12 text-uppercase g-py-15 g-px-25"
								type="button">
								구매 <i class="align-middle ml-2 icon-wallet u-line-icon-pro"></i>
							</button>
						</div>
						<div class="col g-px-5 g-mb-10">
							<button
								class="btn btn-block u-btn-outline-black g-brd-gray-dark-v5 g-brd-black--hover g-color-gray-dark-v4 g-color-white--hover g-font-size-12 text-uppercase g-py-15 g-px-25"
								type="button" onclick="location.href='page-wishlist-1.html'">
								위시리스트 담기 <i
									class="align-middle ml-2 icon-finance-100 u-line-icon-pro"></i>
							</button>
						</div>
					</div>
					<!-- End Buttons -->
				</div>
			</div>
		</div>
		<!-- End Product Description -->

		<!-- Review write -->
		<form name="reviewInsertForm" style="display: none;">
			<div class="container g-mb-100">
				<h2 class="h4 mb-5">리뷰 작성</h2>

				<div class="g-mb-30">
					<textarea id="riviewInsertTestarea"
						class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 g-brd-primary--focus g-resize-none rounded-3 g-py-13 g-px-15"
						rows="5" placeholder="리뷰를 작성해주세요."></textarea>
				</div>

				<div class="row align-items-center">
					<div class="col-5 col-sm-4 col-md-3">
						<button id="reviewUpdateCompleteBtn"
							class="btn u-btn-primary g-font-size-12 text-uppercase g-py-15 g-px-25"
							type="button" role="button">작성 완료</button>
					</div>

					<!-- Rating -->
					<div class="col-5 col-sm-4 col-md-3">
						<h3 class="h6 mb-1">별점:</h3>

						<ul
							class="js-rating u-rating-v1 g-font-size-20 g-color-gray-light-v3 mb-0"
							data-hover-classes="g-color-primary">
							<li class="g-color-primary g-line-height-1_4 click"><i
								class="fa fa-star"></i></li>
							<li class="g-color-primary g-line-height-1_4 click"><i
								class="fa fa-star"></i></li>
							<li class="g-color-primary g-line-height-1_4 click"><i
								class="fa fa-star"></i></li>
							<li class="g-color-primary g-line-height-1_4 click"><i
								class="fa fa-star"></i></li>
							<li class="g-line-height-1_4"><i class="fa fa-star"></i></li>
						</ul>
						<!-- End Rating -->
					</div>
				</div>
			</div>
		</form>
		<!-- end Review write -->

		<!-- Review -->
		<div class="container">
			<div class="g-brd-y g-brd-gray-light-v4 g-py-100">
				<div class="row justify-content-center">
					<div class="col-lg-9">
						<h2 class="h4 mb-5">리뷰 보기</h2>

						<!-- Review -->
						<div class="g-brd-bottom g-brd-gray-light-v4 g-pb-10 g-mb-50">
							<!-- Media -->
							<div class="media g-mb-30">
								<img
									class="d-flex g-width-60 g-height-60 rounded-circle g-mt-3 g-mr-20"
									src="/resources/static/user/assets/img-temp/100x100/img1.jpg" alt="Image Description">
								<div class="media-body">
									<div class="d-flex align-items-start g-mb-15 g-mb-10--sm">
										<div class="d-block">
											<h5 class="h6">프로악플러</h5>

											<!-- Rating -->
											<ul
												class="js-rating u-rating-v1 g-font-size-13 g-color-gray-light-v3 mb-0"
												data-hover-classes="g-color-primary">
												<li class="g-color-primary g-line-height-1_4 click"><i
													class="fa fa-star"></i></li>
												<li class="g-color-primary g-line-height-1_4 click"><i
													class="fa fa-star"></i></li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
											</ul>
											<!-- End Rating -->

											<span class="d-block g-color-gray-dark-v5 g-font-size-11">2020년
												7월 3일</span>
										</div>
										<div class="ml-auto">
											<!-- Small Button Group -->
											<div class="btn-group g-mr-10 g-mb-15">
												<button class="btn btn-primary btn-sm dropdown-toggle"
													type="button" data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													<i class="align-middle icon-layers u-line-icon-pro"></i>
												</button>

												<div class="dropdown-menu">
													<button class="dropdown-item reviewUpdateBtn">댓글
														수정</button>
													<button class="dropdown-item reviewDeleteBtn">댓글
														삭제</button>
													<button class="dropdown-item" data-toggle="modal"
														data-target="#declarationModal" style="cursor: pointer;">
														신고하기</a>
														<!-- <div class="dropdown-divider"></div> -->
												</div>
											</div>
											<!-- End Small Button Group -->
										</div>
									</div>

									<p>프리파이어는 궁극의 모바일 생존 슈팅 게임입니다. 이 게임은 10분 동안 당신을 외딴섬에 다른
										49명의 사람과 가두고 생존하는지를 지켜보게 될 것입니다. 플레이어는 낙하산을 통해 자유롭게 시작 지점을 선택할
										수 있고, 최대한 안전 지역 안에서 살아남기를 목표로 할 수 있습니다. 차량을 운전해 넓은 지역을 탐험할 수
										있고, 풀에 몸을 숨길 수도 있습니다. 매복, 저격, 생존. 단 하나의 목표는 ""생존""하고 끝가지 살아남는
										것입니다.</p>
									<form name="reviewForm" style="display: none;">
										<div class="g-mb-30">
											<textarea
												class="reviewUpdateInput form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 g-brd-primary--focus g-resize-none rounded-3 g-py-13 g-px-15"
												rows="5" placeholder="리뷰를 작성해주세요."></textarea>
										</div>
										<div class="row align-items-center">
											<div class="col-8">
												<button
													class="btn u-btn-primary g-font-size-12 text-uppercase g-py-15 g-px-25 reviewFormReset g-mr-10"
													type="button" role="button">취소</button>
												<button
													class="btn u-btn-primary g-font-size-12 text-uppercase g-py-15 g-px-25 reviewFormComplete"
													type="button" role="button">수정 완료</button>
											</div>

											<!-- Rating -->
											<div class="col-5 col-sm-4 col-md-3">
												<h3 class="h6 mb-1">별점:</h3>

												<ul
													class="js-rating u-rating-v1 g-font-size-20 g-color-gray-light-v3 mb-0"
													data-hover-classes="g-color-primary">
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-line-height-1_4"><i class="fa fa-star"></i>
													</li>
												</ul>
												<!-- End Rating -->
											</div>
										</div>
									</form>

									<ul class="list-inline my-0">
										<li class="list-inline-item g-mr-20"><a
											class="g-color-gray-dark-v5 g-text-underline--none--hover"
											href="#"> <i class="icon-like g-pos-rel g-top-1 g-mr-3"></i>
												5
										</a></li>

									</ul>
								</div>
							</div>
							<!-- End Media -->

							<!-- Media -->
							<div class="media g-brd-top g-brd-gray-light-v4 g-pt-30 g-mb-30">
								<img
									class="d-flex g-width-60 g-height-60 rounded-circle g-mt-3 g-mr-20"
									src="/resources/static/user/assets/img-temp/100x100/img1.jpg" alt="Image Description">
								<div class="media-body">
									<div class="d-flex align-items-start g-mb-15 g-mb-10--sm">
										<div class="d-block">
											<h5 class="h6">프로악플러</h5>

											<!-- Rating -->
											<ul
												class="js-rating u-rating-v1 g-font-size-13 g-color-gray-light-v3 mb-0"
												data-hover-classes="g-color-primary">
												<li class="g-line-height-1_4 g-color-primary click"><i
													class="fa fa-star"></i></li>
												<li class="g-line-height-1_4 g-color-primary click"><i
													class="fa fa-star"></i></li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
											</ul>
											<!-- End Rating -->

											<span class="d-block g-color-gray-dark-v5 g-font-size-11">2020년
												7월 3일</span>
										</div>
										<div class="ml-auto">
											<!-- Small Button Group -->
											<div class="btn-group g-mr-10 g-mb-15">
												<button class="btn btn-primary btn-sm dropdown-toggle"
													type="button" data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													<i class="align-middle icon-layers u-line-icon-pro"></i>
												</button>

												<div class="dropdown-menu">
													<button class="dropdown-item reviewUpdateBtn">댓글
														수정</button>
													<button class="dropdown-item reviewDeleteBtn">댓글
														삭제</button>
													<button class="dropdown-item" data-toggle="modal"
														data-target="#declarationModal">신고하기</button>
													<!-- <div class="dropdown-divider"></div> -->
												</div>
											</div>
											<!-- End Small Button Group -->
										</div>
									</div>

									<p>프리파이어는 궁극의 모바일 생존 슈팅 게임입니다. 이 게임은 10분 동안 당신을 외딴섬에 다른
										49명의 사람과 가두고 생존하는지를 지켜보게 될 것입니다. 플레이어는 낙하산을 통해 자유롭게 시작 지점을 선택할
										수 있고, 최대한 안전 지역 안에서 살아남기를 목표로 할 수 있습니다. 차량을 운전해 넓은 지역을 탐험할 수
										있고, 풀에 몸을 숨길 수도 있습니다. 매복, 저격, 생존. 단 하나의 목표는 ""생존""하고 끝가지 살아남는
										것입니다.</p>
									<form name="reviewForm" style="display: none;">
										<div class="g-mb-30">
											<textarea
												class="reviewUpdateInput form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 g-brd-primary--focus g-resize-none rounded-3 g-py-13 g-px-15"
												rows="5" placeholder="리뷰를 작성해주세요."></textarea>
										</div>
										<div class="row align-items-center">
											<div class="col-8">
												<button
													class="btn u-btn-primary g-font-size-12 text-uppercase g-py-15 g-px-25 reviewFormReset g-mr-10"
													type="button" role="button">취소</button>
												<button
													class="btn u-btn-primary g-font-size-12 text-uppercase g-py-15 g-px-25 reviewFormComplete"
													type="button" role="button">수정 완료</button>
											</div>

											<!-- Rating -->
											<div class="col-5 col-sm-4 col-md-3">
												<h3 class="h6 mb-1">별점:</h3>

												<ul
													class="js-rating u-rating-v1 g-font-size-20 g-color-gray-light-v3 mb-0"
													data-hover-classes="g-color-primary">
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-line-height-1_4"><i class="fa fa-star"></i>
													</li>
												</ul>
												<!-- End Rating -->
											</div>
										</div>
									</form>

									<ul class="list-inline my-0">
										<li class="list-inline-item g-mr-20"><a
											class="g-color-gray-dark-v5 g-text-underline--none--hover"
											href="#"> <i class="icon-like g-pos-rel g-top-1 g-mr-3"></i>
												5
										</a></li>

									</ul>
								</div>
							</div>
							<!-- End Media -->


							<!-- Media -->
							<div class="media g-brd-top g-brd-gray-light-v4 g-pt-30 g-mb-30">
								<img
									class="d-flex g-width-60 g-height-60 rounded-circle g-mt-3 g-mr-20"
									src="/resources/static/user/assets/img-temp/100x100/img1.jpg" alt="Image Description">
								<div class="media-body">
									<div class="d-flex align-items-start g-mb-15 g-mb-10--sm">
										<div class="d-block">
											<h5 class="h6">프로악플러</h5>

											<!-- Rating -->
											<ul
												class="js-rating u-rating-v1 g-font-size-13 g-color-gray-light-v3 mb-0"
												data-hover-classes="g-color-primary">
												<li class="g-line-height-1_4 g-color-primary click"><i
													class="fa fa-star"></i></li>
												<li class="g-line-height-1_4 g-color-primary click"><i
													class="fa fa-star"></i></li>
												<li class="g-line-height-1_4 g-color-primary click"><i
													class="fa fa-star"></i></li>
												<li class="g-line-height-1_4 g-color-primary click"><i
													class="fa fa-star"></i></li>
												<li class="g-line-height-1_4 g-color-primary click"><i
													class="fa fa-star"></i></li>
											</ul>
											<!-- End Rating -->

											<span class="d-block g-color-gray-dark-v5 g-font-size-11">2020년
												7월 3일</span>
										</div>
										<div class="ml-auto">
											<!-- Small Button Group -->
											<div class="btn-group g-mr-10 g-mb-15">
												<button class="btn btn-primary btn-sm dropdown-toggle"
													type="button" data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													<i class="align-middle icon-layers u-line-icon-pro"></i>
												</button>

												<div class="dropdown-menu">
													<button class="dropdown-item reviewUpdateBtn">댓글
														수정</button>
													<button class="dropdown-item reviewDeleteBtn">댓글
														삭제</button>
													<button class="dropdown-item" data-toggle="modal"
														data-target="#declarationModal">신고하기</button>
													<!-- <div class="dropdown-divider"></div> -->
												</div>
											</div>
											<!-- End Small Button Group -->
										</div>
									</div>

									<p>프리파이어는 궁극의 모바일 생존 슈팅 게임입니다. 이 게임은 10분 동안 당신을 외딴섬에 다른
										49명의 사람과 가두고 생존하는지를 지켜보게 될 것입니다. 플레이어는 낙하산을 통해 자유롭게 시작 지점을 선택할
										수 있고, 최대한 안전 지역 안에서 살아남기를 목표로 할 수 있습니다. 차량을 운전해 넓은 지역을 탐험할 수
										있고, 풀에 몸을 숨길 수도 있습니다. 매복, 저격, 생존. 단 하나의 목표는 ""생존""하고 끝가지 살아남는
										것입니다.</p>
									<form name="reviewForm" style="display: none;">
										<div class="g-mb-30">
											<textarea
												class="reviewUpdateInput form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 g-brd-primary--focus g-resize-none rounded-3 g-py-13 g-px-15"
												rows="5" placeholder="리뷰를 작성해주세요."></textarea>
										</div>
										<div class="row align-items-center">
											<div class="col-8">
												<button
													class="btn u-btn-primary g-font-size-12 text-uppercase g-py-15 g-px-25 reviewFormReset g-mr-10"
													type="button" role="button">취소</button>
												<button
													class="btn u-btn-primary g-font-size-12 text-uppercase g-py-15 g-px-25 reviewFormComplete"
													type="button" role="button">수정 완료</button>
											</div>

											<!-- Rating -->
											<div class="col-5 col-sm-4 col-md-3">
												<h3 class="h6 mb-1">별점:</h3>

												<ul
													class="js-rating u-rating-v1 g-font-size-20 g-color-gray-light-v3 mb-0"
													data-hover-classes="g-color-primary">
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-line-height-1_4"><i class="fa fa-star"></i>
													</li>
												</ul>
												<!-- End Rating -->
											</div>
										</div>
									</form>

									<ul class="list-inline my-0">
										<li class="list-inline-item g-mr-20"><a
											class="g-color-gray-dark-v5 g-text-underline--none--hover"
											href="#"> <i class="icon-like g-pos-rel g-top-1 g-mr-3"></i>
												5
										</a></li>

									</ul>
								</div>
							</div>
							<!-- End Media -->

							<!-- Media -->
							<div class="media g-brd-top g-brd-gray-light-v4 g-pt-30 g-mb-30">
								<img
									class="d-flex g-width-60 g-height-60 rounded-circle g-mt-3 g-mr-20"
									src="/resources/static/user/assets/img-temp/100x100/img1.jpg" alt="Image Description">
								<div class="media-body">
									<div class="d-flex align-items-start g-mb-15 g-mb-10--sm">
										<div class="d-block">
											<h5 class="h6">프로악플러</h5>

											<!-- Rating -->
											<ul
												class="js-rating u-rating-v1 g-font-size-13 g-color-gray-light-v3 mb-0"
												data-hover-classes="g-color-primary">
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
											</ul>
											<!-- End Rating -->

											<span class="d-block g-color-gray-dark-v5 g-font-size-11">2020년
												7월 3일</span>
										</div>
										<div class="ml-auto">
											<!-- Small Button Group -->
											<div class="btn-group g-mr-10 g-mb-15">
												<button class="btn btn-primary btn-sm dropdown-toggle"
													type="button" data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													<i class="align-middle icon-layers u-line-icon-pro"></i>
												</button>

												<div class="dropdown-menu">
													<button class="dropdown-item reviewUpdateBtn">댓글
														수정</button>
													<button class="dropdown-item reviewDeleteBtn">댓글
														삭제</button>
													<button class="dropdown-item" data-toggle="modal"
														data-target="#declarationModal">신고하기</button>
													<!-- <div class="dropdown-divider"></div> -->
												</div>
											</div>
											<!-- End Small Button Group -->
										</div>
									</div>

									<p>프리파이어는 궁극의 모바일 생존 슈팅 게임입니다. 이 게임은 10분 동안 당신을 외딴섬에 다른
										49명의 사람과 가두고 생존하는지를 지켜보게 될 것입니다. 플레이어는 낙하산을 통해 자유롭게 시작 지점을 선택할
										수 있고, 최대한 안전 지역 안에서 살아남기를 목표로 할 수 있습니다. 차량을 운전해 넓은 지역을 탐험할 수
										있고, 풀에 몸을 숨길 수도 있습니다. 매복, 저격, 생존. 단 하나의 목표는 ""생존""하고 끝가지 살아남는
										것입니다.</p>
									<form name="reviewForm" style="display: none;">
										<div class="g-mb-30">
											<textarea
												class="reviewUpdateInput form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 g-brd-primary--focus g-resize-none rounded-3 g-py-13 g-px-15"
												rows="5" placeholder="리뷰를 작성해주세요."></textarea>
										</div>
										<div class="row align-items-center">
											<div class="col-8">
												<button
													class="btn u-btn-primary g-font-size-12 text-uppercase g-py-15 g-px-25 reviewFormReset g-mr-10"
													type="button" role="button">취소</button>
												<button
													class="btn u-btn-primary g-font-size-12 text-uppercase g-py-15 g-px-25 reviewFormComplete"
													type="button" role="button">수정 완료</button>
											</div>

											<!-- Rating -->
											<div class="col-5 col-sm-4 col-md-3">
												<h3 class="h6 mb-1">별점:</h3>

												<ul
													class="js-rating u-rating-v1 g-font-size-20 g-color-gray-light-v3 mb-0"
													data-hover-classes="g-color-primary">
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-line-height-1_4"><i class="fa fa-star"></i>
													</li>
												</ul>
												<!-- End Rating -->
											</div>
										</div>
									</form>

									<ul class="list-inline my-0">
										<li class="list-inline-item g-mr-20"><a
											class="g-color-gray-dark-v5 g-text-underline--none--hover"
											href="#"> <i class="icon-like g-pos-rel g-top-1 g-mr-3"></i>
												5
										</a></li>

									</ul>
								</div>
							</div>
							<!-- End Media -->

							<!-- Media -->
							<div class="media g-brd-top g-brd-gray-light-v4 g-pt-30 g-mb-30">
								<img
									class="d-flex g-width-60 g-height-60 rounded-circle g-mt-3 g-mr-20"
									src="/resources/static/user/assets/img-temp/100x100/img1.jpg" alt="Image Description">
								<div class="media-body">
									<div class="d-flex align-items-start g-mb-15 g-mb-10--sm">
										<div class="d-block">
											<h5 class="h6">프로악플러</h5>

											<!-- Rating -->
											<ul
												class="js-rating u-rating-v1 g-font-size-13 g-color-gray-light-v3 mb-0"
												data-hover-classes="g-color-primary">
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
												<li class="g-line-height-1_4"><i class="fa fa-star"></i>
												</li>
											</ul>
											<!-- End Rating -->

											<span class="d-block g-color-gray-dark-v5 g-font-size-11">2020년
												7월 3일</span>
										</div>
										<div class="ml-auto">
											<!-- Small Button Group -->
											<div class="btn-group g-mr-10 g-mb-15">
												<button class="btn btn-primary btn-sm dropdown-toggle"
													type="button" data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													<i class="align-middle icon-layers u-line-icon-pro"></i>
												</button>

												<div class="dropdown-menu">
													<button class="dropdown-item reviewUpdateBtn">댓글
														수정</button>
													<button class="dropdown-item reviewDeleteBtn">댓글
														삭제</button>
													<button class="dropdown-item" data-toggle="modal"
														data-target="#declarationModal">신고하기</button>
													<!-- <div class="dropdown-divider"></div> -->
												</div>
											</div>
											<!-- End Small Button Group -->
										</div>
									</div>

									<p>프리파이어는 궁극의 모바일 생존 슈팅 게임입니다. 이 게임은 10분 동안 당신을 외딴섬에 다른
										49명의 사람과 가두고 생존하는지를 지켜보게 될 것입니다. 플레이어는 낙하산을 통해 자유롭게 시작 지점을 선택할
										수 있고, 최대한 안전 지역 안에서 살아남기를 목표로 할 수 있습니다. 차량을 운전해 넓은 지역을 탐험할 수
										있고, 풀에 몸을 숨길 수도 있습니다. 매복, 저격, 생존. 단 하나의 목표는 ""생존""하고 끝가지 살아남는
										것입니다.</p>
									<form name="reviewForm" style="display: none;">
										<div class="g-mb-30">
											<textarea
												class="reviewUpdateInput form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 g-brd-primary--focus g-resize-none rounded-3 g-py-13 g-px-15"
												rows="5" placeholder="리뷰를 작성해주세요."></textarea>
										</div>
										<div class="row align-items-center">
											<div class="col-8">
												<button
													class="btn u-btn-primary g-font-size-12 text-uppercase g-py-15 g-px-25 reviewFormReset g-mr-10"
													type="button" role="button">취소</button>
												<button
													class="btn u-btn-primary g-font-size-12 text-uppercase g-py-15 g-px-25 reviewFormComplete"
													type="button" role="button">수정 완료</button>
											</div>

											<!-- Rating -->
											<div class="col-5 col-sm-4 col-md-3">
												<h3 class="h6 mb-1">별점:</h3>

												<ul
													class="js-rating u-rating-v1 g-font-size-20 g-color-gray-light-v3 mb-0"
													data-hover-classes="g-color-primary">
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-color-primary g-line-height-1_4 click"><i
														class="fa fa-star"></i></li>
													<li class="g-line-height-1_4"><i class="fa fa-star"></i>
													</li>
												</ul>
												<!-- End Rating -->
											</div>
										</div>
									</form>

									<ul class="list-inline my-0">
										<li class="list-inline-item g-mr-20"><a
											class="g-color-gray-dark-v5 g-text-underline--none--hover"
											href="#"> <i class="icon-like g-pos-rel g-top-1 g-mr-3"></i>
												5
										</a></li>

									</ul>
								</div>
							</div>
							<!-- End Media -->
						</div>
						<!-- End Review -->


						<nav class="g-mb-100 " aria-label="Page Navigation">
							<ul class="list-inline mb-0 align-items-center">
								<li class="list-inline-item"><a
									class="u-pagination-v1__item g-width-30 g-height-30 g-brd-gray-light-v3 g-brd-primary--hover g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5 g-mr-15"
									href="#" aria-label="Next"> <span aria-hidden="true">
											<i class="fa fa-angle-left"></i>
									</span> <span class="sr-only">Before</span>
								</a></li>
								<li class="list-inline-item hidden-down"><a
									class="active u-pagination-v1__item g-width-30 g-height-30 g-brd-gray-light-v3 g-brd-primary--active g-color-white g-bg-primary--active g-font-size-12 rounded-circle g-pa-5"
									href="#">1</a></li>
								<li class="list-inline-item hidden-down"><a
									class="u-pagination-v1__item g-width-30 g-height-30 g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5"
									href="#">2</a></li>
								<li class="list-inline-item g-hidden-xs-down"><a
									class="u-pagination-v1__item g-width-30 g-height-30 g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5"
									href="#">3</a></li>
								<li class="list-inline-item hidden-down"><span
									class="g-width-30 g-height-30 g-color-gray-dark-v5 g-font-size-12 rounded-circle g-pa-5">...</span>
								</li>
								<li class="list-inline-item g-hidden-xs-down"><a
									class="u-pagination-v1__item g-width-30 g-height-30 g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5"
									href="#">15</a></li>
								<li class="list-inline-item"><a
									class="u-pagination-v1__item g-width-30 g-height-30 g-brd-gray-light-v3 g-brd-primary--hover g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5 g-ml-15"
									href="#" aria-label="Next"> <span aria-hidden="true">
											<i class="fa fa-angle-right"></i>
									</span> <span class="sr-only">Next</span>
								</a></li>
								<li class="list-inline-item float-right"><span
									class="u-pagination-v1__item-info g-color-gray-dark-v4 g-font-size-12 g-pa-5">Page
										1 of 15</span></li>
							</ul>
						</nav>

					</div>
				</div>
			</div>
		</div>
		<!-- End Review -->

		<!-- 모달 내용 시작 -->
		<div class="modal fade" id="declarationModal" tabindex="-1"
			aria-labelledby="declarationModalLabel" style="display: none;"
			aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title ml-auto" id="declarationModalLabel">댓글
							신고하기</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row justify-content-start text-left g-mx-5">
							<div class="col-12 g-my-15">
								신고대상 이름 : <span id="declarationName">프로악플러</span>
							</div>
						</div>
						<form>
							<!-- Textarea Resizable -->
							<div class="form-group g-mb-20 g-px-20">
								<!-- <label class="g-mb-10" for="inputGroup2_2">Textarea resizable</label> -->
								<textarea id="inputGroup2_2"
									class="form-control form-control-md rounded-0 g-color-gray-dark-v6"
									rows="4" placeholder="신고하는 이유에 대해서 작성해주세요." maxlength="200"></textarea>
							</div>
						</form>
					</div>
					<div class="modal-footer justify-content-center">
						<button id="declarationBtn"
							class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14"
							data-dismiss="modal" aria-label="Close" type="button">신고하기</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 모달 내용 끝 -->

		<!-- 회사소개 모달 내용 시작 -->
		<div class="modal fade" id="aboutSumyModal" tabindex="-1"
			aria-labelledby="declarationModalLabel" style="display: none;"
			aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title ml-auto" id="declarationModalLabel">
							회사소개</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<div
							class="g-brd-around g-brd-gray-light-v3 g-bg-white rounded g-mb-20">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.344060966518!2d126.98692621556901!3d37.57051513165742!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2e7a005c9c5%3A0xac4890a924a29f30!2z642U7KGw7J2A7Lu07ZOo7YSw7JWE7Yq47ZWZ7JuQIOyiheuhnOy6oO2NvOyKpA!5e0!3m2!1sko!2skr!4v1624784512798!5m2!1sko!2skr"
								width="100%" height="200px" style="border: 0;"
								allowfullscreen="" loading="lazy"></iframe>
						</div>
						<div style="border-radius: 2px;">
							<div class="col-12 g-my-15 text-left g-color-gray-dark-v5">
								<span class="u-icon-v1 g-color-primary--hover "> <i
									class="icon-communication-002 u-line-icon-pro"></i>
								</span> 회사명 -<br>Sumy
							</div>
							<div class="col-12 g-my-15 text-left g-color-gray-dark-v5">
								<span class="u-icon-v1 g-color-primary--hover"> <i
									class="icon-communication-044 u-line-icon-pro"></i>
								</span> 사업자등록번호 -<br>123-12315-46546
							</div>
							<div class="col-12 g-my-15 text-left g-color-gray-dark-v5">
								<span class="u-icon-v1 g-color-primary--hover"> <i
									class="icon-communication-054 u-line-icon-pro"></i>
								</span> 대표문의번호 -<br>1599-8888
							</div>
							<div class="col-12 g-my-15 text-left g-color-gray-dark-v5">
								<span class="u-icon-v1 g-color-primary--hover"> <i
									class="icon-communication-011 u-line-icon-pro"></i>
								</span> 찾아오시는 길 -<br>
								<h6>서울특별시 종로구 종로2가 수표로 105 육의전빌딩 9층</h6>
							</div>
						</div>

					</div>
					<div class="modal-footer justify-content-center">
						<div class="row g-mx-minus-5 g-mb-20">
							<button class="btn btn-lg u-btn-primary g-mr-10 g-font-size-14"
								type="button" data-toggle="modal"
								data-target="#questionForSumyModal" data-dismiss="modal"
								aria-label="Close">문의하기</button>
							<button
								class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14"
								data-dismiss="modal" aria-label="Close" type="button">
								닫기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 회사소개 모달 내용 끝 -->

		<!-- 문의하기 모달 내용 시작 -->
		<div class="modal fade" id="questionForSumyModal" tabindex="-1"
			aria-labelledby="declarationModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title ml-auto" id="declarationModalLabel">문의하기</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<form>
							<label class="g-mb-10">문의 제목</label>
							<div class="g-mb-10">
								<input id="questionForSumyModalTitle"
									class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15"
									type="text" placeholder="문의 제목 입력">
							</div>
							<label class="g-mb-10">문의 내용</label>
							<!-- Textarea Resizable -->
							<div class="g-mb-30">
								<textarea id="questionForSumyModalContents"
									class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 g-brd-primary--focus g-resize-none rounded-3 g-py-13 g-px-15"
									rows="5" placeholder="문의 내용을 작성해주세요."></textarea>
							</div>
							<label class="g-mb-10">이미지 찾기</label>
							<div class="input-group g-mb-10">
								<div class="custom-file">
									<!-- Plain File Input -->
									<div class="form-group mb-0">
										<label class="u-file-attach-v2 g-color-gray-dark-v5 mb-0">
											<input id="imgInp" class="questionFileInput"
											name="file-attachment" type="file"> <i
											class="icon-cloud-upload g-font-size-16 g-pos-rel g-top-2 g-mr-5"></i>
											<span class="js-value">이미지 첨부 1</span>
										</label>
									</div>
									<!-- End Plain File Input -->
								</div>
							</div>

							<div
								class="g-brd-around g-brd-gray-light-v3 g-bg-white rounded g-mb-20 text-center g-bg-gray-light-v5"
								style="height: 360px">
								<img id="blah" class="img-fluid"
									src="/resources/static/user/assets/img-temp/500x320/img1.png" alt="이미지 찾기를 실행해주세요."
									style="height: 100%">
							</div>
						</form>
					</div>
					<div class="modal-footer justify-content-center">
						<div class="row g-mx-minus-5 g-mb-20">
							<button id="questionForSumyBtn"
								class="btn btn-lg u-btn-primary g-mr-10 g-font-size-14"
								type="button" data-dismiss="modal" aria-label="Close">
								문의하기</button>
							<button
								class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14"
								data-dismiss="modal" aria-label="Close" type="button">
								닫기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 문의하기 모달 내용 끝 -->

		<!-- Footer -->
		<footer class="g-bg-main-light-v1">
			<jsp:include page="layout/footer.jsp"/>
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
	<script src="/resources/static/assets/vendor/slick-carousel/slick/slick.js"></script>
	<script src="/resources/static/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
	<script src="/resources/static/assets/vendor/jquery.countdown.min.js"></script>
	<script
		src="/resources/static/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

	<!-- JS Unify -->
	<script src="/resources/static/assets/js/hs.core.js"></script>
	<script src="/resources/static/assets/js/components/hs.header.js"></script>
	<script src="/resources/static/assets/js/helpers/hs.hamburgers.js"></script>
	<script src="/resources/static/assets/js/components/hs.dropdown.js"></script>
	<script src="/resources/static/assets/js/components/hs.scrollbar.js"></script>
	<script src="/resources/static/assets/js/components/hs.countdown.js"></script>
	<script src="/resources/static/assets/js/components/hs.carousel.js"></script>
	<script src="/resources/static/assets/js/components/hs.tabs.js"></script>
	<script src="/resources/static/assets/js/components/hs.count-qty.js"></script>
	<script src="/resources/static/assets/js/components/hs.go-to.js"></script>
	<script src="/resources/static/assets/js/helpers/hs.rating.js"></script>
	<script src="/resources/static/assets/js/helpers/hs.focus-state.js"></script>
	<script src="/resources/static/assets/js/helpers/hs.file-attachments.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

	<!-- JS Customization -->
	<script src="/resources/static/assets/js/custom.js"></script>

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

      // initialization of go to
      $.HSCore.components.HSGoTo.init('.js-go-to');

      // initialization of HSScrollBar component
      $.HSCore.components.HSScrollBar.init($('.js-scrollbar'));

      // initialization of quantity counter
      $.HSCore.components.HSCountQty.init('.js-quantity');

      // initialization of tabs
      $.HSCore.components.HSTabs.init('[role="tablist"]');

      // initialization of rating
      $.HSCore.helpers.HSRating.init();

      // initialization of forms
      // $.HSCore.components.HSFileAttachment.init('.js-file-attachment');
      // $.HSCore.helpers.HSFocusState.init();

      // input = file 저장주소
      $.HSCore.helpers.HSFileAttachments.init();
      // $.HSCore.components.HSFileAttachment.init('.js-file-attachment');
      $.HSCore.helpers.HSFocusState.init();
    });

    $(window).on('resize', function () {
      setTimeout(function () {
        $.HSCore.components.HSTabs.init('[role="tablist"]');
      }, 200);
    });
  </script>
</body>
</html>