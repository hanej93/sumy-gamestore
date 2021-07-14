<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page-single-product-1</title>
<head>
<!-- Title -->
<title>sumy web - 게임상세보기</title>

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

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="/resources/static/assets/vendor/icon-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/static/assets/vendor/icon-line-pro/style.css">
<link rel="stylesheet" href="/resources/static/assets/vendor/icon-hs/style.css">
<link rel="stylesheet" href="/resources/static/assets/vendor/animate.css">
<!-- <link rel="stylesheet" href="/resources/static/assets/vendor/hamburgers/hamburgers.min.css"> -->
<link rel="stylesheet"
	href="/resources/static/assets/vendor/hs-megamenu/src/hs.megamenu.css">
<link rel="stylesheet"
	href="/resources/static/assets/vendor/slick-carousel/slick/slick.css">
<link rel="stylesheet"
	href="/resources/static/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">
<link rel="stylesheet"
	href="/resources/static/assets/vendor/icon-line/css/simple-line-icons.css">

<!-- CSS Unify Theme -->
<link rel="stylesheet" href="/resources/static/user/assets/css/styles.e-commerce.css">

</head>

<body>
	<main class="g-pt-80">
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
					<li class="list-inline-item g-color-primary"><span>게임
							상세보기</span></li>
				</ul>
			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- Product Description -->
		<div class="container g-py-50">
			<div class="row">
				<div class="col-lg-7">
					<!-- Carousel -->
					<div id="carouselCus1" class="js-carousel g-pt-10 g-mb-10"
						data-infinite="true" data-fade="true"
						data-arrows-classes="u-arrow-v1 g-brd-around g-brd-white g-absolute-centered--y g-width-45 g-height-45 g-font-size-14 g-color-white g-color-primary--hover rounded-circle"
						data-arrow-left-classes="fa fa-angle-left g-left-40"
						data-arrow-right-classes="fa fa-angle-right g-right-40"
						data-nav-for="#carouselCus2">
						<div class="js-slide g-bg-cover g-bg-black-opacity-0_1--after">
							<img class="img-fluid w-100"
								src="/resources/static/user/assets/img-temp/700x467/img1.jpg" alt="Image Description">
						</div>
						<div class="js-slide g-bg-cover g-bg-black-opacity-0_1--after">
							<img class="img-fluid w-100"
								src="/resources/static/user/assets/img-temp/700x467/img1.jpg" alt="Image Description">
						</div>
						<div class="js-slide g-bg-cover g-bg-black-opacity-0_1--after">
							<img class="img-fluid w-100"
								src="/resources/static/user/assets/img-temp/700x467/img1.jpg" alt="Image Description">
						</div>
						<div class="js-slide g-bg-cover g-bg-black-opacity-0_1--after">
							<img class="img-fluid w-100"
								src="/resources/static/user/assets/img-temp/700x467/img1.jpg" alt="Image Description">
						</div>
						<div class="js-slide g-bg-cover g-bg-black-opacity-0_1--after">
							<img class="img-fluid w-100"
								src="/resources/static/user/assets/img-temp/700x467/img1.jpg" alt="Image Description">
						</div>
					</div>

					<div id="carouselCus2"
						class="js-carousel text-center u-carousel-v3 g-mx-minus-5"
						data-infinite="true" data-center-mode="true" data-slides-show="3"
						data-is-thumbs="true" data-focus-on-select="false"
						data-nav-for="#carouselCus1">
						<div class="js-slide g-cursor-pointer g-px-5">
							<img class="img-fluid" src="/resources/static/user/assets/img-temp/250x170/img1.jpg"
								alt="Image Description">
						</div>

						<div class="js-slide g-cursor-pointer g-px-5">
							<img class="img-fluid" src="/resources/static/user/assets/img-temp/250x170/img2.jpg"
								alt="Image Description">
						</div>

						<div class="js-slide g-cursor-pointer g-px-5">
							<img class="img-fluid" src="/resources/static/user/assets/img-temp/250x170/img3.jpg"
								alt="Image Description">
						</div>

						<div class="js-slide g-cursor-pointer g-px-5">
							<img class="img-fluid" src="/resources/static/user/assets/img-temp/250x170/img3.jpg"
								alt="Image Description">
						</div>

						<div class="js-slide g-cursor-pointer g-px-5">
							<img class="img-fluid" src="/resources/static/user/assets/img-temp/250x170/img3.jpg"
								alt="Image Description">
						</div>
					</div>
					<!-- End Carousel -->
				</div>

				<div class="col-lg-5">
					<div class="g-px-40--lg g-pt-10">
						<!-- Product Info -->
						<img class="img-fluid" src="/resources/static/user/assets/img-temp/500x320/img1.png"
							alt="Image Description">
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
		</div>
		<!-- End Product Description -->

		<!-- Description -->
		<div class="container">
			<div class="g-brd-bottom g-brd-gray-light-v4 g-py-50">
				<h2 class="h4 mb-3">게임 스토리</h2>

				<div class="row">
					<div class="col-md-8 g-mb-30">
						<p>거실에 마법의 공장이 딱 나타났다고 상상해보세요. 노동자와 작업대, 기계를 관리하고 멋진 물건을 만들며
							작지만 큰 공방을 꿈꾸던 공장으로 키워보세요!</p>
					</div>

					<div class="col-md-4 g-mb-0 g-mb-30--md">
						<!-- List -->
						<ul class="list-unstyled g-color-text">
							<li class="g-brd-bottom--dashed g-brd-gray-light-v3 pt-1 mb-3">
								<span>개발사:</span> <span class="float-right g-color-black">어나더레벨코프</span>
							</li>
							<li class="g-brd-bottom--dashed g-brd-gray-light-v3 pt-1 mb-3">
								<span>태그:</span> <span class="float-right g-color-black">폭력,
									어드벤쳐, 슈팅</span>
							</li>
							<li class="g-brd-bottom--dashed g-brd-gray-light-v3 pt-1 mb-3">
								<span>출시일:</span> <span class="float-right g-color-black">2021-10-12</span>
							</li>
							<li class="g-brd-bottom--dashed g-brd-gray-light-v3 pt-1 mb-3">
								<span>구매 수:</span> <span class="float-right g-color-black">50,000,000</span>
							</li>
						</ul>
						<!-- End List -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Description -->

		<!-- Details -->
		<div class="container g-py-50 text-center">
			<style>
.line--clamp {
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 8;
	overflow: hidden;
}
</style>
			<!-- 자세히보기 인덱스2 -->
			<div id="details" class="mb-5 line--clamp">
				<span class="d-block g-font-size-12 text-uppercase mb-5">게임소개</span>
				<h2 class="mb-4">Little Big Workshop</h2>
				<p>거실에 마법의 공장이 딱 나타났다고 상상해보세요. 근면한 노동자가 고객이 원하는 것은 뭐든 서둘러 만들어내는,
					신중하게 계획한 걸작이죠. 고무 오리, 서랍장, 드론과 전자 기타, 스쿠터와 각종 멋진 상품들을 다양한 재료로 제작하고
					판매해 현금을 벌 수 있으며, 이 현금은 기계를 더 사고, 노동자를 더 고용하고, 사업을 확장하는 데 바로 투자할 수
					있습니다. Little Big Workshop에서 공장 거물이 될 수 있습니다!</p>
				<p>Big Boss가 되어 여러분만의 책상 위 공장을 경영할 때입니다. 작업 현장을 조직하고, 노동자를 관리하고,
					기계류를 구매하고, 효율적인 생산 라인을 설계하세요. 모든 것은 제한 시간 내에 해야 하며 고객사에 만족을 안겨야
					합니다!</p>
				<p>여유를 가지세요. 원하는 대로 움직일 수 있게 될 때까지 생각하고, 숙고하고, 찔러볼 수 있는 샌드박스
					경험이니까요. 다수의 부품과 조각으로 만들어진 50종 이상의 고유한 제품 유형을 생산하며, 고객사와 끊임없이 변화하는
					시장에 제품을 공급하세요. 제품들 전부 다른 재료와 생산 방식으로 제작할 수 있습니다. 똑같아 보이는 공장이 어디에도
					없는 셈이죠.</p>
				<p>작은 공방에서 시작해 직원이 가득한 공장으로 확장하세요. 복잡한 기계를 잠금 해제하고, 더 많은 생산 방식을
					추가하고, 무엇보다도, 공간을 더 넓히세요. 머지않아 다수의 생산 라인을 경영하고, 날마다 수백 개의 최신 제품을
					생산하고, 귀여운 노동자들이 실제로 일하는 것을 기쁨에 차 지켜보게 될 것입니다.</p>
			</div>

			<button id="detailsBtn"
				class="btn u-btn-primary g-font-size-12 text-uppercase g-py-12 g-px-25">자세히
				보기</button>
		</div>
		<!-- End Details -->

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
												class="u-rating-v1 g-font-size-13 g-color-gray-light-v3 mb-0">
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
												class="u-rating-v1 g-font-size-13 g-color-gray-light-v3 mb-0"
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
												class="u-rating-v1 g-font-size-13 g-color-gray-light-v3 mb-0"
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
												class="u-rating-v1 g-font-size-13 g-color-gray-light-v3 mb-0"
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
												class="u-rating-v1 g-font-size-13 g-color-gray-light-v3 mb-0"
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
						<div class="text-center">
							<button
								class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-font-size-14"
								onclick="location.href='reviewMore-page.html'">리뷰 더보기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Review -->

		<!-- Products -->
		<div class="g-bg-gray-light-v5">
			<div class="container g-pt-50 g-pb-50">
				<div class="row g-mx-minus-10">
					<!-- Products -->
					<div class="container">
						<div class="text-center mx-auto g-max-width-600 g-mb-50">
							<h2 class="g-color-black mb-4">관련 게임</h2>
						</div>

						<div id="carouselCus1" class="js-carousel g-pb-100 g-mx-minus-10"
							data-infinite="true" data-slides-show="4"
							data-lazy-load="ondemand"
							data-arrows-classes="u-arrow-v1 g-pos-abs g-bottom-0 g-width-45 g-height-45 g-color-gray-dark-v5 g-bg-secondary g-color-white--hover g-bg-primary--hover rounded"
							data-arrow-left-classes="fa fa-angle-left g-left-10"
							data-arrow-right-classes="fa fa-angle-right g-right-10"
							data-pagi-classes="u-carousel-indicators-v1 g-absolute-centered--x g-bottom-20 text-center">
							<div class="js-slide">
								<div class="g-px-10">
									<!-- Product -->
									<figure class="g-pos-rel g-mb-20">
										<img class="img-fluid"
											data-lazy="/resources/static/user/assets/img-temp/480x700/img2.jpg"
											alt="Image Description">

										<span
											class="u-ribbon-v1 g-width-40 g-height-40 g-color-white g-bg-primary g-font-size-13 text-center text-uppercase g-rounded-50x g-top-10 g-right-minus-10 g-px-2 g-py-10">-40%</span>
										<a class="u-link-v2" href="page-single-product-1.html"></a>
									</figure>

									<div class="media">
										<!-- Product Info -->
										<div class="d-flex flex-column">
											<h4 class="h6 g-color-black mb-1">
												<a class="u-link-v5 g-color-black g-color-primary--hover"
													href="page-single-product-1.html"> 게임명 </a>
											</h4>
											<span
												class="d-inline-block g-color-gray-dark-v5 g-font-size-13">게임사</span>
											<span class="g-color-black g-font-size-17"> <del
													class="g-font-size-12 g-color-gray-dark-v5">&#8361;33,000</del>
												&#8361;30,000
											</span>
										</div>
										<!-- End Product Info -->

										<!-- Products Icons -->
										<ul class="list-inline media-body text-right">
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="page-wishlist-1.html" data-toggle="tooltip"
												data-placement="top" title="위시리스트 담기"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a></li>
										</ul>
										<!-- End Products Icons -->
									</div>
									<!-- End Product -->
								</div>
							</div>

							<div class="js-slide">
								<div class="g-px-10">
									<!-- Product -->
									<figure class="g-pos-rel g-mb-20">
										<img class="img-fluid"
											data-lazy="/resources/static/user/assets/img-temp/480x700/img2.jpg"
											alt="Image Description">

										<span
											class="u-ribbon-v1 g-width-40 g-height-40 g-color-white g-bg-primary g-font-size-13 text-center text-uppercase g-rounded-50x g-top-10 g-right-minus-10 g-px-2 g-py-10">-40%</span>
										<a class="u-link-v2" href="page-single-product-1.html"></a>
									</figure>

									<div class="media">
										<!-- Product Info -->
										<div class="d-flex flex-column">
											<h4 class="h6 g-color-black mb-1">
												<a class="u-link-v5 g-color-black g-color-primary--hover"
													href="page-single-product-1.html"> 게임명 </a>
											</h4>
											<span
												class="d-inline-block g-color-gray-dark-v5 g-font-size-13">게임사</span>
											<span class="g-color-black g-font-size-17"> <del
													class="g-font-size-12 g-color-gray-dark-v5">&#8361;33,000</del>
												&#8361;30,000
											</span>
										</div>
										<!-- End Product Info -->

										<!-- Products Icons -->
										<ul class="list-inline media-body text-right">
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="page-wishlist-1.html" data-toggle="tooltip"
												data-placement="top" title="위시리스트 담기"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a></li>
										</ul>
										<!-- End Products Icons -->
									</div>
									<!-- End Product -->
								</div>
							</div>

							<div class="js-slide">
								<div class="g-px-10">
									<!-- Product -->
									<figure class="g-pos-rel g-mb-20">
										<img class="img-fluid"
											data-lazy="/resources/static/user/assets/img-temp/480x700/img2.jpg"
											alt="Image Description">

										<span
											class="u-ribbon-v1 g-width-40 g-height-40 g-color-white g-bg-primary g-font-size-13 text-center text-uppercase g-rounded-50x g-top-10 g-right-minus-10 g-px-2 g-py-10">-40%</span>
										<a class="u-link-v2" href="page-single-product-1.html"></a>
									</figure>

									<div class="media">
										<!-- Product Info -->
										<div class="d-flex flex-column">
											<h4 class="h6 g-color-black mb-1">
												<a class="u-link-v5 g-color-black g-color-primary--hover"
													href="page-single-product-1.html"> 게임명 </a>
											</h4>
											<span
												class="d-inline-block g-color-gray-dark-v5 g-font-size-13">게임사</span>
											<span class="g-color-black g-font-size-17"> <del
													class="g-font-size-12 g-color-gray-dark-v5">&#8361;33,000</del>
												&#8361;30,000
											</span>
										</div>
										<!-- End Product Info -->

										<!-- Products Icons -->
										<ul class="list-inline media-body text-right">
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="page-wishlist-1.html" data-toggle="tooltip"
												data-placement="top" title="위시리스트 담기"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a></li>
										</ul>
										<!-- End Products Icons -->
									</div>
									<!-- End Product -->
								</div>
							</div>

							<div class="js-slide">
								<div class="g-px-10">
									<!-- Product -->
									<figure class="g-pos-rel g-mb-20">
										<img class="img-fluid"
											data-lazy="/resources/static/user/assets/img-temp/480x700/img2.jpg"
											alt="Image Description">

										<span
											class="u-ribbon-v1 g-width-40 g-height-40 g-color-white g-bg-primary g-font-size-13 text-center text-uppercase g-rounded-50x g-top-10 g-right-minus-10 g-px-2 g-py-10">-40%</span>
										<a class="u-link-v2" href="page-single-product-1.html"></a>
									</figure>

									<div class="media">
										<!-- Product Info -->
										<div class="d-flex flex-column">
											<h4 class="h6 g-color-black mb-1">
												<a class="u-link-v5 g-color-black g-color-primary--hover"
													href="page-single-product-1.html"> 게임명 </a>
											</h4>
											<span
												class="d-inline-block g-color-gray-dark-v5 g-font-size-13">게임사</span>
											<span class="g-color-black g-font-size-17"> <del
													class="g-font-size-12 g-color-gray-dark-v5">&#8361;33,000</del>
												&#8361;30,000
											</span>
										</div>
										<!-- End Product Info -->

										<!-- Products Icons -->
										<ul class="list-inline media-body text-right">
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="page-wishlist-1.html" data-toggle="tooltip"
												data-placement="top" title="위시리스트 담기"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a></li>
										</ul>
										<!-- End Products Icons -->
									</div>
									<!-- End Product -->
								</div>
							</div>

							<div class="js-slide">
								<div class="g-px-10">
									<!-- Product -->
									<figure class="g-pos-rel g-mb-20">
										<img class="img-fluid"
											data-lazy="/resources/static/user/assets/img-temp/480x700/img2.jpg"
											alt="Image Description">

										<span
											class="u-ribbon-v1 g-width-40 g-height-40 g-color-white g-bg-primary g-font-size-13 text-center text-uppercase g-rounded-50x g-top-10 g-right-minus-10 g-px-2 g-py-10">-40%</span>
										<a class="u-link-v2" href="page-single-product-1.html"></a>
									</figure>

									<div class="media">
										<!-- Product Info -->
										<div class="d-flex flex-column">
											<h4 class="h6 g-color-black mb-1">
												<a class="u-link-v5 g-color-black g-color-primary--hover"
													href="page-single-product-1.html"> 게임명 </a>
											</h4>
											<span
												class="d-inline-block g-color-gray-dark-v5 g-font-size-13">게임사</span>
											<span class="g-color-black g-font-size-17"> <del
													class="g-font-size-12 g-color-gray-dark-v5">&#8361;33,000</del>
												&#8361;30,000
											</span>
										</div>
										<!-- End Product Info -->

										<!-- Products Icons -->
										<ul class="list-inline media-body text-right">
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="page-wishlist-1.html" data-toggle="tooltip"
												data-placement="top" title="위시리스트 담기"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a></li>
										</ul>
										<!-- End Products Icons -->
									</div>
									<!-- End Product -->
								</div>
							</div>

							<div class="js-slide">
								<div class="g-px-10">
									<!-- Product -->
									<figure class="g-pos-rel g-mb-20">
										<img class="img-fluid"
											data-lazy="/resources/static/user/assets/img-temp/480x700/img2.jpg"
											alt="Image Description">

										<span
											class="u-ribbon-v1 g-width-40 g-height-40 g-color-white g-bg-primary g-font-size-13 text-center text-uppercase g-rounded-50x g-top-10 g-right-minus-10 g-px-2 g-py-10">-40%</span>
										<a class="u-link-v2" href="page-single-product-1.html"></a>
									</figure>

									<div class="media">
										<!-- Product Info -->
										<div class="d-flex flex-column">
											<h4 class="h6 g-color-black mb-1">
												<a class="u-link-v5 g-color-black g-color-primary--hover"
													href="page-single-product-1.html"> 게임명 </a>
											</h4>
											<span
												class="d-inline-block g-color-gray-dark-v5 g-font-size-13">게임사</span>
											<span class="g-color-black g-font-size-17"> <del
													class="g-font-size-12 g-color-gray-dark-v5">&#8361;33,000</del>
												&#8361;30,000
											</span>
										</div>
										<!-- End Product Info -->

										<!-- Products Icons -->
										<ul class="list-inline media-body text-right">
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="page-wishlist-1.html" data-toggle="tooltip"
												data-placement="top" title="위시리스트 담기"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a></li>
										</ul>
										<!-- End Products Icons -->
									</div>
									<!-- End Product -->
								</div>
							</div>

							<div class="js-slide">
								<div class="g-px-10">
									<!-- Product -->
									<figure class="g-pos-rel g-mb-20">
										<img class="img-fluid"
											data-lazy="/resources/static/user/assets/img-temp/480x700/img2.jpg"
											alt="Image Description">

										<span
											class="u-ribbon-v1 g-width-40 g-height-40 g-color-white g-bg-primary g-font-size-13 text-center text-uppercase g-rounded-50x g-top-10 g-right-minus-10 g-px-2 g-py-10">-40%</span>
										<a class="u-link-v2" href="page-single-product-1.html"></a>
									</figure>

									<div class="media">
										<!-- Product Info -->
										<div class="d-flex flex-column">
											<h4 class="h6 g-color-black mb-1">
												<a class="u-link-v5 g-color-black g-color-primary--hover"
													href="page-single-product-1.html"> 게임명 </a>
											</h4>
											<span
												class="d-inline-block g-color-gray-dark-v5 g-font-size-13">게임사</span>
											<span class="g-color-black g-font-size-17"> <del
													class="g-font-size-12 g-color-gray-dark-v5">&#8361;33,000</del>
												&#8361;30,000
											</span>
										</div>
										<!-- End Product Info -->

										<!-- Products Icons -->
										<ul class="list-inline media-body text-right">
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="page-wishlist-1.html" data-toggle="tooltip"
												data-placement="top" title="위시리스트 담기"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a></li>
										</ul>
										<!-- End Products Icons -->
									</div>
									<!-- End Product -->
								</div>
							</div>
						</div>
					</div>
					<!-- End Products -->

				</div>
			</div>
		</div>
		<!-- End Products -->

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

	<!-- JS Customization -->
	<script src="/resources/static/user/assets/js/page-single-product-1.js"></script>

	<!-- JS Plugins Init. -->
	<script>
    $(document).on('ready', function () {
      // initialization of carousel
      $.HSCore.components.HSCarousel.init('.js-carousel');

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
    });

    $(window).on('resize', function () {
      setTimeout(function () {
        $.HSCore.components.HSTabs.init('[role="tablist"]');
      }, 200);
    });

  </script>

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
    });

    $(window).on('resize', function () {
      setTimeout(function () {
        $.HSCore.components.HSTabs.init('[role="tablist"]');
      }, 200);
    });
  </script>
</body>
</html>