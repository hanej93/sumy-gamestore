<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Title -->
  <title>User Contacts | Unify - Responsive Website Template</title>

  <!-- Required Meta Tags Always Come First -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <!-- Favicon -->
  <link rel="shortcut icon" href="/resources/static/favicon.ico">
  <!-- Google Fonts -->
  <link rel="stylesheet"
    href="//fonts.googleapis.com/css?family=Open+Sans%3A400%2C300%2C500%2C600%2C700%7CPlayfair+Display%7CRoboto%7CRaleway%7CSpectral%7CRubik">
  <!-- CSS Global Compulsory -->
  <link rel="stylesheet" href="/resources/static/assets/vendor/bootstrap/bootstrap.min.css">
  <!-- CSS Global Icons -->
  <link rel="stylesheet" href="/resources/static/assets/vendor/icon-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="/resources/static/assets/vendor/icon-line/css/simple-line-icons.css">
  <link rel="stylesheet" href="/resources/static/assets/vendor/icon-etlinefont/style.css">
  <link rel="stylesheet" href="/resources/static/assets/vendor/icon-line-pro/style.css">
  <link rel="stylesheet" href="/resources/static/assets/vendor/icon-hs/style.css">

  <link rel="stylesheet" href="/resources/static/admin/assets/vendor/hs-admin-icons/hs-admin-icons.css">
  <link rel="stylesheet" href="/resources/static/assets/vendor/animate.css">
  <link rel="stylesheet" href="/resources/static/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">
  <link rel="stylesheet" href="/resources/static/admin/assets/vendor/bootstrap-select/css/bootstrap-select.min.css">
  <link rel="stylesheet" href="/resources/static/admin/assets/vendor/chartist-js/chartist.min.css">
  <link rel="stylesheet" href="/resources/static/admin/assets/vendor/fancybox/jquery.fancybox.min.css">
  <link rel="stylesheet" href="/resources/static/admin/assets/vendor/bootstrap-tagsinput/css/bootstrap-tagsinput.css">

  <link rel="stylesheet" href="/resources/static/assets/vendor/hamburgers/hamburgers.min.css">
  <link rel="stylesheet" href="/resources/static/assets/vendor/jquery-ui/themes/base/jquery-ui.min.css">

  <!-- CSS Unify -->
  <link rel="stylesheet" href="/resources/static/admin/assets/css/unify-admin.css">

  <!-- CSS Customization -->
  <link rel="stylesheet" href="/resources/static/assets/css/custom.css">
  
</head>

<body>
  <main>
  
    <!-- Header -->
    <header id="js-header" class="u-header u-header--sticky-top">
      <div class="u-header__section u-header__section--admin-dark g-min-height-65">
        <nav class="navbar no-gutters g-pa-0">
          <div class="col-auto d-flex flex-nowrap u-header-logo-toggler g-py-12">
            <!-- Logo -->
            <a href="/resources/static/admin/index.html"
              class="navbar-brand d-flex align-self-center g-hidden-xs-down g-line-height-1 py-0 g-mt-5">

              <svg class="u-header-logo" version="1.1" xmlns="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink">
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g transform="translate(-78.000000, -19.000000)">
                    <g transform="translate(78.000000, 19.000000)">
                      <path class="g-fill-primary"
                        d="M0,0 L19.2941176,0 L19.2941176,0 C23.7123956,-8.11624501e-16 27.2941176,3.581722 27.2941176,8 L27.2941176,27.2941176 L8,27.2941176 L8,27.2941176 C3.581722,27.2941176 5.41083001e-16,23.7123956 0,19.2941176 L0,0 Z">
                      </path>
                      <path class="g-fill-white"
                        d="M21.036662,24.8752523 L20.5338647,22.6659916 L20.3510293,22.6659916 C19.8533083,23.4481246 19.1448284,24.0626484 18.2255681,24.5095816 C17.3063079,24.9565147 16.2575544,25.1799779 15.0792761,25.1799779 C13.0376043,25.1799779 11.5139914,24.672107 10.5083918,23.6563498 C9.50279224,22.6405927 9,21.1017437 9,19.0397567 L9,8.02392554 L12.6109986,8.02392554 L12.6109986,18.4150692 C12.6109986,19.7050808 12.8750915,20.6725749 13.4032852,21.3175807 C13.9314789,21.9625865 14.7593086,22.2850846 15.886799,22.2850846 C17.3901196,22.2850846 18.4947389,21.8356188 19.2006901,20.9366737 C19.9066413,20.0377286 20.2596117,18.5318912 20.2596117,16.4191164 L20.2596117,8.02392554 L23.855374,8.02392554 L23.855374,24.8752523 L21.036662,24.8752523 Z">
                      </path>
                      <path class="g-fill-white"
                        d="M44.4764678,24.4705882 L40.8807055,24.4705882 L40.8807055,14.1099172 C40.8807055,12.809748 40.6191519,11.8397145 40.096037,11.1997875 C39.5729221,10.5598605 38.7425531,10.2399018 37.6049051,10.2399018 C36.0914269,10.2399018 34.9842682,10.6868282 34.2833958,11.5806945 C33.5825234,12.4745608 33.2320924,13.9727801 33.2320924,16.0753974 L33.2320924,24.4705882 L29.6515664,24.4705882 L29.6515664,7.61926145 L32.4550421,7.61926145 L32.9578394,9.8285222 L33.1406747,9.8285222 C33.6485533,9.02607405 34.3697301,8.40647149 35.3042266,7.96969592 C36.2387232,7.53292034 37.27478,7.31453583 38.412428,7.31453583 C42.4551414,7.31453583 44.4764678,9.3714132 44.4764678,13.4852296 L44.4764678,24.4705882 Z M53.7357283,24.4705882 L50.1552023,24.4705882 L50.1552023,7.61926145 L53.7357283,7.61926145 L53.7357283,24.4705882 Z M49.9418944,3.15503112 C49.9418944,2.51510412 50.1171098,2.0224693 50.467546,1.67711187 C50.8179823,1.33175444 51.3182351,1.15907831 51.9683197,1.15907831 C52.5980892,1.15907831 53.0881846,1.33175444 53.4386208,1.67711187 C53.7890571,2.0224693 53.9642725,2.51510412 53.9642725,3.15503112 C53.9642725,3.76448541 53.7890571,4.24442346 53.4386208,4.59485968 C53.0881846,4.94529589 52.5980892,5.12051137 51.9683197,5.12051137 C51.3182351,5.12051137 50.8179823,4.94529589 50.467546,4.59485968 C50.1171098,4.24442346 49.9418944,3.76448541 49.9418944,3.15503112 Z M68.0077253,10.3313195 L63.8939294,10.3313195 L63.8939294,24.4705882 L60.2981671,24.4705882 L60.2981671,10.3313195 L57.525164,10.3313195 L57.525164,8.65532856 L60.2981671,7.55831633 L60.2981671,6.4613041 C60.2981671,4.47042009 60.7654084,2.99505497 61.699905,2.03516447 C62.6344015,1.07527397 64.0615189,0.595335915 65.9812999,0.595335915 C67.2408388,0.595335915 68.4800439,0.803563007 69.6989525,1.22002344 L68.7543031,3.93208145 C67.8705943,3.64766945 67.0275286,3.50546559 66.2250804,3.50546559 C65.4124747,3.50546559 64.820805,3.75686171 64.4500537,4.25966149 C64.0793023,4.76246128 63.8939294,5.51664965 63.8939294,6.52224922 L63.8939294,7.61926145 L68.0077253,7.61926145 L68.0077253,10.3313195 Z M69.0089215,7.61926145 L72.9094094,7.61926145 L76.3375727,17.1724096 C76.8556088,18.5335242 77.2009611,19.813359 77.3736398,21.0119524 L77.49553,21.0119524 C77.5869482,20.453286 77.7545456,19.7752783 77.9983273,18.9779089 C78.242109,18.1805396 79.5321012,14.3943616 81.8683427,7.61926145 L85.738358,7.61926145 L78.5315971,26.7103215 C77.2212704,30.2146837 75.0374253,31.9668385 71.9799963,31.9668385 C71.1877057,31.9668385 70.4157419,31.8805004 69.6640816,31.7078217 L69.6640816,28.8738734 C70.2024329,28.9957643 70.8169567,29.0567088 71.5076716,29.0567088 C73.2344587,29.0567088 74.4482703,28.056203 75.1491427,26.0551615 L75.7738303,24.4705882 L69.0089215,7.61926145 Z">
                      </path>
                    </g>
                  </g>
                </g>
              </svg>



            </a>
            <!-- End Logo -->

            <!-- Sidebar Toggler -->
            <a class="js-side-nav u-header__nav-toggler d-flex align-self-center ml-auto" href="#"
              data-hssm-class="u-side-nav--mini u-sidebar-navigation-v1--mini" data-hssm-body-class="u-side-nav-mini"
              data-hssm-is-close-all-except-this="true" data-hssm-target="#sideNav">
              <i class="hs-admin-align-left"></i>
            </a>
            <!-- End Sidebar Toggler -->
          </div>

          <!-- Messages/Notifications/Top Search Bar/Top User -->
          <div class="col-auto d-flex g-py-12 g-pl-40--lg ml-auto">

            <!-- Top User -->
            <div class="col-auto d-flex g-pt-5 g-pt-0--sm g-pl-10 g-pl-20--sm">
              <div class="g-pos-rel g-px-10--lg">
                <a id="profileMenuInvoker" class="d-block" href="#" aria-controls="profileMenu" aria-haspopup="true"
                  aria-expanded="false" data-dropdown-event="click" data-dropdown-target="#profileMenu"
                  data-dropdown-type="css-animation" data-dropdown-duration="300" data-dropdown-animation-in="fadeIn"
                  data-dropdown-animation-out="fadeOut">
                  <span class="g-pos-rel">
                    <span class="u-badge-v2--xs u-badge--top-right g-hidden-sm-up g-bg-secondary g-mr-5"></span>
                    <img class="g-width-30 g-width-40--md g-height-30 g-height-40--md rounded-circle g-mr-10--sm"
                      src="/resources/static/admin/assets/img-temp/130x130/img1.jpg" alt="Image description">
                  </span>
                  <span class="g-pos-rel g-top-2">
                    <span class="g-hidden-sm-down">Charlie Bailey</span>
                    <i class="hs-admin-angle-down g-pos-rel g-top-2 g-ml-10"></i>
                  </span>
                </a>

                <!-- Top User Menu -->
                <ul id="profileMenu"
                  class="g-pos-abs g-left-0 g-width-100x--lg g-nowrap g-font-size-14 g-py-20 g-mt-17 rounded"
                  aria-labelledby="profileMenuInvoker">
                  <li class="mb-0">
                    <a class="media g-color-primary--hover g-py-5 g-px-20" href="#">
                      <span class="d-flex align-self-center g-mr-12">
                        <i class="hs-admin-shift-right"></i>
                      </span>
                      <span class="media-body align-self-center">Sign Out</span>
                    </a>
                  </li>
                </ul>
                <!-- End Top User Menu -->
              </div>
            </div>
            <!-- End Top User -->
          </div>
          <!-- End Messages/Notifications/Top Search Bar/Top User -->

          <!-- 필터 -->
          <div id="activityMenu"
            class="js-custom-scroll u-header-sidebar g-pos-fix g-top-0 g-left-auto g-right-0 g-z-index-4 g-width-300 g-width-400--sm g-height-100vh"
            >
            <div class="u-header-dropdown-bordered-v1 g-pa-20">
              <a id="activityInvokerClose" class="pull-right g-color-lightblue-v2" href="#" aria-controls="activityMenu"
                aria-haspopup="true" aria-expanded="false" data-dropdown-event="click"
                data-dropdown-target="#activityMenu" data-dropdown-type="css-animation"
                data-dropdown-animation-in="fadeInRight" data-dropdown-animation-out="fadeOutRight"
                data-dropdown-duration="300">
                <i class="hs-admin-close"></i>
              </a>
              <h4 class="text-uppercase g-font-size-default g-letter-spacing-0_5 g-mr-20 g-mb-0">필터</h4>
            </div>


            <!-- Filters -->
            <form class="g-brd-left--lg g-brd-gray-light-v4 g-pt-40 g-px-20">
              <div class="g-pl-15--lg g-pt-60">
                <!-- Categories -->
                <div class="g-mb-30">
                  <h3 class="h5 mb-3">이벤트</h3>

                  <ul class="list-unstyled">
                    <li class="my-3">
                      <a class="d-block u-link-v5 g-color-white g-color-primary--hover" href="#">전체상품
                        <span class="float-right g-font-size-12">202</span></a>
                    </li>
                    <li class="my-3">
                      <a class="d-block u-link-v5 g-color-white g-color-primary--hover" href="#">할인상품
                        <span class="float-right g-font-size-12">44</span></a>
                    </li>
                  </ul>
                </div>
                <!-- End Categories -->

                <hr class="g-bg-white">

                <!-- 필터인덱스3 -->
                <!-- Pricing -->
                <div class="g-mb-30">
                  <h3 class="h5 mb-3">가격</h3>

                  <div class="text-center">
                    <span class="d-block g-color-white mb-4">(<span id="rangeSliderAmount3">0</span>) 원</span>
                    <div id="rangeSlider1" class="u-slider-v1-3" data-result-container="rangeSliderAmount3"
                      data-range="true" data-default="20000, 40000" data-min="0" data-max="60000" data-step="5000">
                    </div>
                  </div>
                </div>
                <!-- End Pricing -->


                <hr class="g-bg-white">

                <!-- Rating -->
                <div class="g-mb-30">
                  <h3 class="h5 mb-3">별점</h3>

                  <ul class="js-rating u-rating-v1 g-line-height-1 g-font-size-20 g-color-gray-light-v3 mb-0"
                    data-hover-classes="g-color-primary">
                    <li class="g-color-primary click">
                      <i class="fa fa-star"></i>
                    </li>
                    <li class="g-color-primary click">
                      <i class="fa fa-star"></i>
                    </li>
                    <li class="g-color-primary click">
                      <i class="fa fa-star"></i>
                    </li>
                    <li class="g-color-primary click">
                      <i class="fa fa-star "></i>
                    </li>
                    <li>
                      <i class="fa fa-star"></i>
                    </li>
                  </ul>
                </div>
                <!-- End Rating -->




                <div id="accordion-12" class="u-accordion u-accordion-color-white" role="tablist"
                  aria-multiselectable="true">
                  <!-- Card -->
                  <div class="g-brd-none rounded-0 g-mb-15">
                    <div id="accordion-12-heading-01" class="u-accordion__header g-pa-0" role="tab">
                      <h5 class="mb-0">
                        <a class="d-flex g-text-underline--none--hover g-brd-none" href="#accordion-12-body-01"
                          data-toggle="collapse" data-parent="#accordion-12" aria-expanded="true"
                          aria-controls="accordion-12-body-01">
                          장르
                          <span class="u-accordion__control-icon g-ml-10">
                            <i class="fa fa-angle-down"></i>
                            <i class="fa fa-angle-up"></i>
                          </span>
                        </a>
                      </h5>
                    </div>
                    <div id="accordion-12-body-01" class="collapse show" role="tabpanel"
                      aria-labelledby="accordion-12-heading-01" data-parent="#accordion-12">
                      <ul class="list-unstyled">
                        <li class="my-2">
                          <label
                            class="form-check-inline u-check d-block u-link-v5 g-color-white g-color-primary--hover g-pl-30">
                            <input class="g-hidden-xs-up g-pos-abs g-top-0 g-left-0" type="checkbox">
                            <span class="d-block u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
                              <i class="fa" data-check-icon="&#xf00c"></i>
                            </span>
                            액션 <span class="float-right g-font-size-13">24</span>
                          </label>
                        </li>
                        <li class="my-2">
                          <label
                            class="form-check-inline u-check d-block u-link-v5 g-color-white g-color-primary--hover g-pl-30">
                            <input class="g-hidden-xs-up g-pos-abs g-top-0 g-left-0" type="checkbox" checked>
                            <span class="d-block u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
                              <i class="fa" data-check-icon="&#xf00c"></i>
                            </span>
                            어드벤처 <span class="float-right g-font-size-13">334</span>
                          </label>
                        </li>
                        <li class="my-2">
                          <label
                            class="form-check-inline u-check d-block u-link-v5 g-color-white g-color-primary--hover g-pl-30">
                            <input class="g-hidden-xs-up g-pos-abs g-top-0 g-left-0" type="checkbox">
                            <span class="d-block u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
                              <i class="fa" data-check-icon="&#xf00c"></i>
                            </span>
                            인디 <span class="float-right g-font-size-13">18</span>
                          </label>
                        </li>
                        <li class="my-2">
                          <label
                            class="form-check-inline u-check d-block u-link-v5 g-color-white g-color-primary--hover g-pl-30">
                            <input class="g-hidden-xs-up g-pos-abs g-top-0 g-left-0" type="checkbox" checked>
                            <span class="d-block u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
                              <i class="fa" data-check-icon="&#xf00c"></i>
                            </span>
                            Nike <span class="float-right g-font-size-13">6</span>
                          </label>
                        </li>
                        <li class="my-2">
                          <label
                            class="form-check-inline u-check d-block u-link-v5 g-color-white g-color-primary--hover g-pl-30">
                            <input class="g-hidden-xs-up g-pos-abs g-top-0 g-left-0" type="checkbox">
                            <span class="d-block u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
                              <i class="fa" data-check-icon="&#xf00c"></i>
                            </span>
                            Puma <span class="float-right g-font-size-13">71</span>
                          </label>
                        </li>
                        <li class="my-2">
                          <label
                            class="form-check-inline u-check d-block u-link-v5 g-color-white g-color-primary--hover g-pl-30">
                            <input class="g-hidden-xs-up g-pos-abs g-top-0 g-left-0" type="checkbox">
                            <span class="d-block u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
                              <i class="fa" data-check-icon="&#xf00c"></i>
                            </span>
                            Zara <span class="float-right g-font-size-13">9</span>
                          </label>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <!-- End Card -->
                </div>

                <hr class="g-bg-white">
                <div class="row justify-content-center g-pb-40">
                  <button class="btn u-btn-black g-font-size-12 text-uppercase g-py-12 g-px-25 g-mx-15"
                    type="reset">초기화</button>
                  <button class="btn u-btn-black g-font-size-12 text-uppercase g-py-12 g-px-25 g-mx-15"
                    type="button">적용</button>
                </div>
                <!-- 필터인덱스1 -->
              </div>
            </form>
            <!-- End Filters -->


          </div>
          <!-- 필터 종료 -->


      </div>
    </header>
    <!-- End Header -->

    <main class="container-fluid px-0 g-pt-65">
      <div class="row no-gutters g-pos-rel g-overflow-x-hidden">
        <!-- Sidebar Nav -->
        <div id="sideNav" class="col-auto u-sidebar-navigation-v1 u-sidebar-navigation--dark">
          <ul id="sideNavMenu" class="u-sidebar-navigation-v1-menu u-side-nav--top-level-menu g-min-height-100vh mb-0">
            <!-- Dashboards -->
            <li id="gameSidebar"
              class="u-sidebar-navigation-v1-menu-item u-side-nav--has-sub-menu u-side-nav--top-level-menu-item u-side-nav-opened has-active">
              <a class="media u-side-nav--top-level-menu-link u-side-nav--hide-on-hidden g-px-15 g-py-12" href="${pageContext.request.contextPath }/admin/game/list"
                >
                <span class="d-flex align-self-center g-pos-rel g-font-size-18 g-mr-18">
                  <i class="hs-admin-game"></i>
                </span>
                <span class="media-body align-self-center">게임 관리</span>
                <span class="d-flex align-self-center u-side-nav--control-icon">
                  <i class="hs-admin-angle-right"></i>
                </span>
                <span class="u-side-nav--has-sub-menu__indicator"></span>
              </a>
            </li>
            <!-- End Dashboards -->

            <!-- 고객 관리 시작 -->
            <li id="userSidebar"
              class="u-sidebar-navigation-v1-menu-item u-side-nav--has-sub-menu u-side-nav--top-level-menu-item">
              <a class="media u-side-nav--top-level-menu-link u-side-nav--hide-on-hidden g-px-15 g-py-12" href="${pageContext.request.contextPath }/admin/user/list"
                >
                <span class="d-flex align-self-center g-pos-rel g-font-size-18 g-mr-18">
                  <i class="hs-admin-face-smile"></i>
                </span>
                <span class="media-body align-self-center">고객 관리</span>
                <span class="d-flex align-self-center u-side-nav--control-icon">
                  <i class="hs-admin-angle-right"></i>
                </span>
                <span class="u-side-nav--has-sub-menu__indicator"></span>
              </a>

            </li>
            <!-- 고객 관리 끝 -->

            <!-- 문의 관리 시작 -->
            <li id="questionSidebar"
            class="u-sidebar-navigation-v1-menu-item u-side-nav--has-sub-menu u-side-nav--top-level-menu-item">
              <a class="media u-side-nav--top-level-menu-link u-side-nav--hide-on-hidden g-px-15 g-py-12" href="${pageContext.request.contextPath }/admin/question/list"
                >
                <span class="d-flex align-self-center g-pos-rel g-font-size-18 g-mr-18">
                  <i class="icon-communication-005 u-line-icon-pro"></i>
                </span>
                <span class="media-body align-self-center">문의 관리</span>
                <span class="d-flex align-self-center u-side-nav--control-icon">
                  <i class="hs-admin-angle-right"></i>
                </span>

                <span class="u-side-nav--has-sub-menu__indicator"></span>
              </a>

            </li>
            <!-- 문의 관리 끝-->

            <!-- 신고 관리 시작 -->
            <li id="warningSidebar"
            class="u-sidebar-navigation-v1-menu-item u-side-nav--has-sub-menu u-side-nav--top-level-menu-item">
              <a class="media u-side-nav--top-level-menu-link u-side-nav--hide-on-hidden g-px-15 g-py-12"href="${pageContext.request.contextPath }/admin/report/list"
                >
                <span class="d-flex align-self-center g-pos-rel g-font-size-18 g-mr-18">
                  <i class="hs-admin-alert"></i>
                </span>
                <span class="media-body align-self-center">신고 관리</span>
                <span class="d-flex align-self-center u-side-nav--control-icon">
                  <i class="hs-admin-angle-right"></i>
                </span>

                <span class="u-side-nav--has-sub-menu__indicator"></span>
              </a>
            </li>
            <!-- 신고 관리 끝-->

            <!-- 뉴스 관리 시작 -->
            <li id="newsSidebar"
            class="u-sidebar-navigation-v1-menu-item u-side-nav--has-sub-menu u-side-nav--top-level-menu-item">
              <a class="media u-side-nav--top-level-menu-link u-side-nav--hide-on-hidden g-px-15 g-py-12" href="${pageContext.request.contextPath }/admin/news/list"
                >
                <span class="d-flex align-self-center g-pos-rel g-font-size-18 g-mr-18">
                  <i class="icon-communication-020 u-line-icon-pro"></i>
                </span>
                <span class="media-body align-self-center">뉴스 관리</span>
                <span class="d-flex align-self-center u-side-nav--control-icon">
                  <i class="hs-admin-angle-right"></i>
                </span>

                <span class="u-side-nav--has-sub-menu__indicator"></span>
              </a>

            </li>
            <!-- 뉴스 관리 끝 -->
		</ul>

        </div>


        <div class="col g-ml-45 g-ml-0--lg g-pb-65--md">
          <!-- Breadcrumb-v1 -->
          <div class="g-bg-gray-light-v8 g-pa-20">
            <ul class="u-list-inline g-color-gray-dark-v6">

              <li class="list-inline-item g-mr-10">
                <a class="u-link-v5 g-color-gray-dark-v6 g-color-secondary--hover g-valign-middle" href="#!">게임 관리</a>
                <i class="hs-admin-angle-right g-font-size-12 g-color-gray-light-v6 g-valign-middle g-ml-10"></i>
              </li>

              <li class="list-inline-item">
                <span class="g-valign-middle">게임 리스트</span>
              </li>
            </ul>
          </div>
          <!-- End Breadcrumb-v1 -->


          <!-- 테이블 시작 -->

          <div class="g-pa-20">
            <div class="media">
              <div class="d-flex align-self-center">
                <h1 class="g-font-weight-300 g-font-size-28 g-color-black mb-0">게임 리스트</h1>
              </div>

              <div class="row justify-content-end media-body align-self-center">
                <a class="btn btn-xl u-btn-secondary g-width-160--md g-font-size-default g-ml-10 g-height-50"
                  href="${pageContext.request.contextPath }/admin/game/add">게임 추가
                </a>
                <!-- Top Activity Toggler -->

                <a id="activityInvoker"
                  class="g-pos-rel g-width-50 g-height-50 g-font-size-20 btn btn-lg u-btn-outline-darkgray g-mx-20 g-color-primary g-color-secondary--hover g-bg-white g-brd-gray-light-v3"
                  href="#" aria-controls="activityMenu" aria-haspopup="true" aria-expanded="false"
                  data-dropdown-event="click" data-dropdown-target="#activityMenu" data-dropdown-type="css-animation"
                  data-dropdown-animation-in="fadeInRight" data-dropdown-animation-out="fadeOutRight"
                  data-dropdown-duration="300">
                  <i class="hs-admin-align-right g-absolute-centered"></i>
                </a>
                <!-- End Top Activity Toggler -->
              </div>
            </div>




            <hr class="d-flex g-brd-gray-light-v7 g-my-30">

            <div class="media flex-wrap g-mb-30">
              <div class="d-flex align-self-center align-items-center g-ml-10 g-ml-20--md g-ml-40--lg">

              </div>

              <div class="d-flex g-hidden-md-up w-100"></div>

              <div class="media-body align-self-center g-mt-10 g-mt-0--md">
                <div class="input-group g-pos-rel g-max-width-380 float-right">
                  <input id="game-title-search" value="${paging.keyword }"
                    class="form-control h-100 g-font-size-default g-brd-gray-light-v7 g-brd-lightblue-v3--focus g-rounded-20 g-pl-20 g-pr-50 g-py-10"
                    type="text" placeholder="게임제목을 입력하세요.">
                  <input id="nowPage" type="hidden" value="${paging.nowPage }">
                  <a  id="game-title-search-btn"
                    class="btn g-pos-abs g-top-0 g-right-0 g-z-index-2 g-width-60 h-100 g-bg-transparent g-font-size-16 g-color-primary g-color-secondary--hover rounded-0"
                    type="submit">
                    <i class="hs-admin-search g-absolute-centered"></i>
                  </a>
                </div>
              </div>
            </div>

            <div class="js-custom-scroll g-height-500 g-pa-15 g-pa-0-30-25--md">
              <table class="table w-100 g-mb-25">
                <thead class="g-color-gray-dark-v6">
                  <tr>
                    <th class="g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        No.
                      </div>
                    </th>
                    <th class="g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        게임
                      </div>
                    </th>
                    <th
                      class="g-hidden-sm-down g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        제작사
                      </div>
                    </th>
                    <th class="g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        가격
                      </div>
                    </th>
                    <th
                      class="g-hidden-sm-down g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        총 판매수익
                      </div>
                    </th>
                    <th
                      class="g-hidden-sm-down g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        게임판매수
                      </div>
                    </th>
                    <th class="g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        수정/삭제
                      </div>
                    </th>
                  </tr>
                </thead>

                <tbody class="g-font-size-default g-color-black" id="accordion-09" role="tablist"
                  aria-multiselectable="true">
                  <!-- 게시글 반복 시작 -->
                  <c:forEach items="${viewAll }" var="gameInfo">
                  <tr id="contact-1-header">
                    <td
                      class="g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md text-center">
                      ${gameInfo.gameId}</td>
                    <td
                      class="g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md g-px-5 g-px-10--sm">
                      <a class="d-flex align-items-center u-link-v5 g-color-black g-color-secondary--hover g-color-secondary--opened"
                        href="/sumy/single-product/${gameInfo.gameId }">
                        <img
                          class="flex-shrink-0 g-width-80 g-height-115 g-brd-around g-brd-2 g-brd-transparent g-brd-lightblue-v3--parent-opened g-rounded-5 g-mr-20--sm"
                          src="${gameInfo.gameThumbImage}" alt="Image Description">
                        <span class="flex-grow-1 ms-3">${gameInfo.gameTitle}</span>
                      </a>
                    </td>
                    <td
                      class="g-hidden-sm-down g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md text-center">
                      ${gameInfo.gameDev}</td>
                    <td
                      class="g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md g-px-5 g-px-10--sm text-center">
                      <span class="">
                      <c:if test="${ gameInfo.gameDiscountRate ne '0'}">
                        <span class="u-label g-bg-secondary rounded g-mr-5">${gameInfo.gameDiscountRate }%</span>
                        <del class="g-color-gray-dark-v10">₩<fmt:formatNumber value="${gameInfo.gamePrice}" type="number"/></del>
                      </c:if>
                        <span class="g-ml-8">₩<fmt:formatNumber value="${gameInfo.gamePrice * (100-gameInfo.gameDiscountRate) / 100}" type="number" pattern="###,###,###,###,###,###"/></span>
                      </span>
                    </td>
                    <td
                      class="g-hidden-sm-down g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md g-px-5 g-px-10--sm text-center">
                      <span class="g-hidden-sm-down">₩<fmt:formatNumber value="${gameInfo.gameTotalEarnings }" type="number"/></span>
                    </td>
                    <td
                      class="g-hidden-sm-down g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md text-center">
                      <span class="g-hidden-sm-down"><fmt:formatNumber value="${gameInfo.gameSaleCount }" type="number"/></span>
                    </td>

                    <td
                      class="g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md g-px-5 g-px-10--sm g-pr-25">
                      <div class="d-flex align-items-center justify-content-center g-line-height-1">
                        <a class="u-link-v5 g-color-gray-light-v6 g-color-secondary--hover g-mr-15" href="${pageContext.request.contextPath }/admin/game/update/${gameInfo.gameId}">
                          <i class="hs-admin-pencil g-font-size-18"></i>
                        </a>

                        <!-- 삭제 버튼 시작 -->
                        <a class="u-link-v5 g-color-gray-light-v6 g-color-secondary--hover" data-toggle="modal"
                        data-target="#exampleModal3${gameInfo.gameId}">
                          <i class="hs-admin-trash g-font-size-18"></i>
                        </a>
                        <!-- 삭제 버튼 끝 -->

                        <!-- 삭제 모달 내용 시작 -->
                        <div class="modal fade justify-content-center" id="exampleModal3${gameInfo.gameId}" tabindex="-1" aria-labelledby="exampleModalLabel"
                          aria-hidden="true">
                          <div class="modal-dialog  modal-dialog-scrollable">
                            <div class="modal-content">
                              <div class="modal-body">
                                <div class="row justify-content-center g-mx-5">
                                  <div class="col-12 g-mt-10 g-mb-30">게임을 삭제 하시겠습니까?</div>
                                  <div>
                                    <a id="delBtn${gameInfo.gameId}" gameId="${gameInfo.gameId}" href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-toggle="modal">삭제</a>
                                    <a href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-dismiss="modal">닫기</a>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </td>
                  </tr>
                  <!-- 게시글 반복 끝 -->
                  </c:forEach>
                </tbody>
              </table>
              <!-- 테이블 끝 -->
              <!-- 게임 삭제 완료 팝업 시작-->
              <div class="modal fade justify-content-center" id="exampleModal4" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable">
                  <div class="modal-content">
                    <div class="modal-body">
                      <div class="row justify-content-center g-mx-5">
                        <div class="col-12 g-mt-10 g-mb-30">게임삭제를 완료하였습니다.</div>
                          <div>
                            <a href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-font-size-14" data-dismiss="modal">닫기</a>
                          </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- 게임 삭제 완료 팝업 끝-->
              
            </div>

            <nav aria-label="Page Navigation">
              <ul class="list-inline d-flex align-items-center justify-content-center g-my-60">
              	<c:if test="${paging.startPage != 1 }">
	                <li class="list-inline-item g-mr-10">
	                  <a class="u-pagination-v1__item u-pagination-v1-2 g-bg-lightblue-v3--active g-color-gray-dark-v6 g-color-black--hover g-color-white--active g-brd-gray-light-v7 g-brd-lightblue-v3--hover g-brd-lightblue-v3--active g-px-18 g-py-12 g-rounded-4"
	                    href="/admin/game/list?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}&keyword=${paging.keyword}" aria-label="Previous">
	                    <span aria-hidden="true">
	                      <i class="hs-admin-angle-left"></i>
	                    </span>
	                    <span class="sr-only">Previous</span>
	                  </a>
	                </li>
                </c:if>
                
                
                <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
	                <c:choose>
	                	<c:when test="${p != paging.nowPage }">
			                <li class="list-inline-item g-hidden-sm-down g-mr-10">
			                  <a class="u-pagination-v1__item u-pagination-v1-2 g-bg-lightblue-v3--active g-color-gray-dark-v6 g-color-black--hover g-color-white--active g-brd-gray-light-v7 g-brd-lightblue-v3--hover g-brd-lightblue-v3--active g-px-18 g-py-12 g-rounded-4"
			                    href="/admin/game/list?nowPage=${p }&cntPerPage=${paging.cntPerPage}&keyword=${paging.keyword}">${p }</a>
			                </li>
		                </c:when>
		                <c:when test="${p == paging.nowPage }">
			                <li class="list-inline-item g-hidden-sm-down g-mr-10">
			                  <span
			                    class="u-pagination-v1__item u-pagination-v1-2 g-bg-lightblue-v3--active g-color-gray-dark-v6 g-color-black--hover g-color-white--active g-brd-gray-light-v7 g-brd-lightblue-v3--hover g-brd-lightblue-v3--active g-px-18 g-py-12 g-rounded-4 active">
			                    ${p }</span>
			                </li>
		                </c:when>
	                </c:choose>
                </c:forEach>
                
                <c:if test="${paging.endPage != paging.lastPage}">
	                <li class="list-inline-item">
	                  <a class="u-pagination-v1__item u-pagination-v1-2 g-bg-lightblue-v3--active g-color-gray-dark-v6 g-color-black--hover g-color-white--active g-brd-gray-light-v7 g-brd-lightblue-v3--hover g-brd-lightblue-v3--active g-px-18 g-py-12 g-rounded-4"
	                    href="/admin/game/list?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&keyword=${paging.keyword}" aria-label="Next">
	                    <span aria-hidden="true">
	                      <i class="hs-admin-angle-right"></i>
	                    </span>
	                    <span class="sr-only">Next</span>
	                  </a>
	                </li>
                </c:if>
              </ul>
            </nav>
          </div>
          
		  <!--푸터 시작-->		
          <jsp:include page="layout/footer.jsp"/>
          <!--푸터 끝-->	
          	
        </div>
      </div>
      </section>
    </main>

    <!-- JS Global Compulsory -->
    <script src="/resources/static/admin/assets/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/static/admin/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>

    <script src="/resources/static/assets/vendor/popper.js/popper.min.js"></script>
    <script src="/resources/static/assets/vendor/bootstrap/bootstrap.min.js"></script>

    <script src="/resources/static/assets/vendor/cookiejs/jquery.cookie.js"></script>


    <!-- JS Plugins Init. -->
    <script src="/resources/static/assets/vendor/appear.js"></script>
    <script src="/resources/static/admin/assets/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <script src="/resources/static/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/resources/static/admin/assets/vendor/chartist-js/chartist.min.js"></script>
    <script src="/resources/static/admin/assets/vendor/fancybox/jquery.fancybox.min.js"></script>

    <script src="/resources/static/admin/assets/vendor/bloodhound-js/js/bloodhound.min.js"></script>
    <script src="/resources/static/admin/assets/vendor/bloodhound-js/js/typeahead.jquery.min.js"></script>
    <script src="/resources/static/admin/assets/vendor/bootstrap-tagsinput/js/bootstrap-tagsinput.min.js"></script>

    <script src="/resources/static/assets/vendor/jquery-ui/ui/widgets/slider.js"></script>

    <!-- jQuery UI Core -->
    <script src="/resources/static/assets/vendor/jquery-ui/ui/widget.js"></script>
    <script src="/resources/static/assets/vendor/jquery-ui/ui/version.js"></script>
    <script src="/resources/static/assets/vendor/jquery-ui/ui/keycode.js"></script>
    <script src="/resources/static/assets/vendor/jquery-ui/ui/position.js"></script>
    <script src="/resources/static/assets/vendor/jquery-ui/ui/unique-id.js"></script>
    <script src="/resources/static/assets/vendor/jquery-ui/ui/safe-active-element.js"></script>

    <!-- jQuery UI Helpers -->
    <script src="/resources/static/assets/vendor/jquery-ui/ui/widgets/menu.js"></script>
    <script src="/resources/static/assets/vendor/jquery-ui/ui/widgets/mouse.js"></script>

    <!-- jQuery UI Widgets -->
    <script src="/resources/static/assets/vendor/jquery-ui/ui/widgets/slider.js"></script>


    <!-- JS Unify -->
    <script src="/resources/static/assets/js/hs.core.js"></script>
    <script src="/resources/static/admin/assets/js/components/hs.side-nav.js"></script>
    <script src="/resources/static/assets/js/helpers/hs.hamburgers.js"></script>
    <script src="/resources/static/assets/js/components/hs.dropdown.js"></script>
    <script src="/resources/static/assets/js/components/hs.scrollbar.js"></script>
    <script src="/resources/static/assets/js/components/hs.count-qty.js"></script>
    <script src="/resources/static/admin/assets/js/components/hs.bar-chart.js"></script>
    <script src="/resources/static/assets/js/helpers/hs.focus-state.js"></script>
    <script src="/resources/static/admin/assets/js/components/hs.popup.js"></script>

    <script src="/resources/static/assets/js/helpers/hs.rating.js"></script>
    <script src="/resources/static/assets/js/components/hs.slider.js"></script>

    <!-- JS Custom -->
    <!-- <script src="/resources/static/assets/js/custom.js"></script> -->

    <!-- JS Plugins Init. -->
    <script>
      $(document).on('ready', function () {
        // initialization of custom select
        $('.js-select').selectpicker();

        // initialization of sidebar navigation component
        $.HSCore.components.HSSideNav.init('.js-side-nav');

        // initialization of hamburger
        $.HSCore.helpers.HSHamburgers.init('.hamburger');

        // initialization of charts
        $.HSCore.components.HSBarChart.init('.js-bar-chart');

        // initialization of HSDropdown component
        $.HSCore.components.HSDropdown.init($('[data-dropdown-target]'), {
          dropdownHideOnScroll: false
        });

        // initialization of custom scrollbar
        $.HSCore.components.HSScrollBar.init($('.js-custom-scroll'));

        // initialization of popups
        $.HSCore.components.HSPopup.init('.js-fancybox', {
          btnTpl: {
            smallBtn: '<button data-fancybox-close class="btn g-pos-abs g-top-25 g-right-30 g-line-height-1 g-bg-transparent g-font-size-16 g-color-gray-light-v6 g-brd-none p-0" title=""><i class="hs-admin-close"></i></button>'
          }
        });

        // initialization of forms
        $.HSCore.helpers.HSRating.init();

        // initialization of range slider
        $.HSCore.components.HSSlider.init('#rangeSlider1');

        // initialization of forms
        $.HSCore.components.HSCountQty.init('.js-quantity');


      // 필터인덱스2
      // 기능: 필터 초기화 이벤트
      // 제작: 의진
      // 설명:
      // 1. 초기화 버튼을 눌렀을 때 별 4개로 초기화
      // 2. 가격 20000 - 40000으로 초기화
      $("button[type='reset']").click(function () {
        $("h3:contains('별점')").next().children().addClass('g-color-primary click');
        $("h3:contains('별점')").next().children().last().removeClass('g-color-primary click');
        
        $.HSCore.components.HSSlider.init('#rangeSlider1');
      });

      });
    </script>
    <script src="/resources/static/etc/admin-game-list.js"></script>
    
</body>

</html>