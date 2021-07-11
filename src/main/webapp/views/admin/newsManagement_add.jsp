<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

  <link rel="stylesheet" href="/resources/static/assets/vendor/hamburgers/hamburgers.min.css">

  <!-- CSS Unify -->
  <link rel="stylesheet" href="/resources/static/admin/assets/css/unify-admin.css">

  <!-- CSS Customization -->
  <link rel="stylesheet" href="/resources/static/assets/css/custom.css">

  
  <!-- 썸머 노트 -->
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
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
            aria-labelledby="activityInvoker">
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

            <!-- Activity Short Stat. -->
            <section class="g-pa-20">
              <h5 class="text-uppercase g-font-size-default g-letter-spacing-0_5 g-mb-10">이벤트</h5>
              <div class="media g-py-10">
                <div class="d-flex align-self-center g-mr-12"></div>
                <div class="media-body align-self-center">에픽 메가 세일</div>
              </div>
            </section>
            <!-- End Activity Short Stat. -->

            <!-- 가격 -->
            <section class="g-pa-20">
              <h5 class="text-uppercase g-font-size-default g-letter-spacing-0_5 g-mb-10">가격</h5>

              <!-- Pricing -->
              <div class="g-mb-30">
                <h3 class="h5 mb-3">Pricing</h3>

                <div class="text-center">
                  <span class="d-block g-color-primary mb-4">$(<span id="rangeSliderAmount3">0</span>)</span>
                  <div id="rangeSlider1" class="u-slider-v1-3" data-result-container="rangeSliderAmount3"
                    data-range="true" data-default="180, 320" data-min="0" data-max="500"></div>
                </div>
              </div>
              <!-- End Pricing -->
            </section>
            <!-- 가격 종료 -->

            <!-- 장르 -->
            <section class="g-pa-20">
              <h5 class="text-uppercase g-font-size-default g-letter-spacing-0_5 g-mb-10">장르</h5>

              <div class="media u-header-dropdown-bordered-v2 g-py-10">
                <div class="d-flex align-self-center g-mr-12"></div>
                <div class="media-body align-self-center">아케이드</div>
              </div>

              <div class="media u-header-dropdown-bordered-v2 g-py-10">
                <div class="d-flex align-self-center g-mr-12"></div>
                <div class="media-body align-self-center">아케이드</div>
              </div>

              <div class="media u-header-dropdown-bordered-v2 g-py-10">
                <div class="d-flex align-self-center g-mr-12"></div>
                <div class="media-body align-self-center">아케이드</div>
              </div>

              <div class="media u-header-dropdown-bordered-v2 g-py-10">
                <div class="d-flex align-self-center g-mr-12"></div>
                <div class="media-body align-self-center">아케이드</div>
              </div>

              <div class="media g-py-10">
                <div class="d-flex align-self-center g-mr-12"></div>
                <div class="media-body align-self-center">아케이드</div>
              </div>
            </section>
            <!-- 장르 종료 -->

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
            <li
              class="u-sidebar-navigation-v1-menu-item u-side-nav--has-sub-menu u-side-nav--top-level-menu-item u-side-nav-opened">
              <a class="media u-side-nav--top-level-menu-link u-side-nav--hide-on-hidden g-px-15 g-py-12" href="#"
                data-hssm-target="#subMenu1">
                <span class="d-flex align-self-center g-pos-rel g-font-size-18 g-mr-18">
                  <i class="hs-admin-server"></i>
                </span>
                <span class="media-body align-self-center">게임관리</span>
                <span class="d-flex align-self-center u-side-nav--control-icon">
                  <i class="hs-admin-angle-right"></i>
                </span>
                <span class="u-side-nav--has-sub-menu__indicator"></span>
              </a>

              <!-- Dashboards: Submenu-1 -->
              <ul id="subMenu1" class="u-sidebar-navigation-v1-menu u-side-nav--second-level-menu mb-0"
                style="display: block;">

              </ul>
              <!-- End Dashboards: Submenu-1 -->
            </li>
            <!-- End Dashboards -->

            <!-- Layouts Settings -->
            <li
              class="u-sidebar-navigation-v1-menu-item u-side-nav--has-sub-menu u-side-nav--top-level-menu-item u-side-nav-opened has-active">
              <a class="media u-side-nav--top-level-menu-link u-side-nav--hide-on-hidden g-px-15 g-py-12" href="#"
                data-hssm-target="#subMenu2">
                <span class="d-flex align-self-center g-pos-rel g-font-size-18 g-mr-18">
                  <i class="hs-admin-settings"></i>
                </span>
                <span class="media-body align-self-center">고객관리</span>
                <span class="d-flex align-self-center u-side-nav--control-icon">
                  <i class="hs-admin-angle-right"></i>
                </span>
                <span class="u-side-nav--has-sub-menu__indicator"></span>
              </a>

            </li>
            <!-- End Layouts Settings -->

            <!-- App Views -->
            <li class="u-sidebar-navigation-v1-menu-item u-side-nav--has-sub-menu u-side-nav--top-level-menu-item">
              <a class="media u-side-nav--top-level-menu-link u-side-nav--hide-on-hidden g-px-15 g-py-12" href="#"
                data-hssm-target="#subMenu4">
                <span class="d-flex align-self-center g-pos-rel g-font-size-18 g-mr-18">
                  <i class="hs-admin-layers"></i>
                </span>
                <span class="media-body align-self-center">신고/문의 관리</span>
                <span class="d-flex align-self-center u-side-nav--control-icon">
                  <i class="hs-admin-angle-right"></i>
                </span>

                <span class="u-side-nav--has-sub-menu__indicator"></span>
              </a>

            </li>
            <!-- End App Views -->

            <!-- Forms -->
            <li class="u-sidebar-navigation-v1-menu-item u-side-nav--has-sub-menu u-side-nav--top-level-menu-item">
              <a class="media u-side-nav--top-level-menu-link u-side-nav--hide-on-hidden g-px-15 g-py-12" href="#"
                data-hssm-target="#subMenu7">
                <span class="d-flex align-self-center g-pos-rel g-font-size-18 g-mr-18">
                  <i class="hs-admin-pencil-alt"></i>
                </span>
                <span class="media-body align-self-center">뉴스관리</span>
                <span class="d-flex align-self-center u-side-nav--control-icon">
                  <i class="hs-admin-angle-right"></i>
                </span>

                <span class="u-side-nav--has-sub-menu__indicator"></span>
              </a>

            </li>
            <!-- End Forms -->


        </div>


        <div class="col g-ml-45 g-ml-0--lg g-pb-65--md">
          <!-- Breadcrumb-v1 -->
          <div class="g-bg-gray-light-v8 g-pa-20">
            <ul class="u-list-inline g-color-gray-dark-v6">

              <li class="list-inline-item g-mr-10">
                <a class="u-link-v5 g-color-gray-dark-v6 g-color-secondary--hover g-valign-middle" href="#!">뉴스 관리</a>
                <i class="hs-admin-angle-right g-font-size-12 g-color-gray-light-v6 g-valign-middle g-ml-10"></i>
              </li>

              <li class="list-inline-item g-mr-10">
                <a class="u-link-v5 g-color-gray-dark-v6 g-color-secondary--hover g-valign-middle" href="#!">뉴스 리스트</a>
                <i class="hs-admin-angle-right g-font-size-12 g-color-gray-light-v6 g-valign-middle g-ml-10"></i>
              </li>

              <li class="list-inline-item">
                <span class="g-valign-middle">뉴스 추가</span>
              </li>
            </ul>
          </div>
          <!-- End Breadcrumb-v1 -->


          <!-- 컨텐츠 시작 -->
          <div class="g-pa-20">
            <h1 class="g-font-weight-300 g-font-size-28 g-color-black g-mb-28">뉴스 추가</h1>

            <!-- 1-st column -->
            <div class="">
              <!-- Line Text Inputs -->
              <div class="g-brd-around g-brd-gray-light-v7 g-rounded-4 g-pa-15 g-pa-20--md g-mb-30">
                <!-- 뉴스 제목 시작 -->
                <div class="g-mb-30">
                  <label class="" for="inputGroup-4_2">
                    <h5>뉴스 제목</h5>
                  </label>

                  <div class="form-group g-pos-rel">
                    <span class="g-pos-abs g-top-0 g-right-0 d-block g-width-40 h-100 opacity-0 g-opacity-1--success">
                      <i class="hs-admin-check g-absolute-centered g-font-size-default g-color-secondary"></i>
                    </span>
                    <input id="inputGroup-4_2"
                      class="form-control form-control-md g-brd-none g-brd-bottom g-brd-gray-light-v7 g-brd-gray-light-v3--focus rounded-0 px-0 g-py-10"
                      type="text" placeholder="뉴스제목을 입력해주세요." maxlength="100">
                  </div>
                </div>
                <!-- 뉴스 제목 끝 -->

                <!-- 뉴스 부제목 시작 -->
                <div class="g-mb-30">
                  <label class="" for="inputGroup-4_2">
                    <h5>뉴스 부제목</h5>
                  </label>

                  <div class="form-group g-pos-rel">
                    <span class="g-pos-abs g-top-0 g-right-0 d-block g-width-40 h-100 opacity-0 g-opacity-1--success">
                      <i class="hs-admin-check g-absolute-centered g-font-size-default g-color-secondary"></i>
                    </span>
                    <input id="inputGroup-4_2"
                      class="form-control form-control-md g-brd-none g-brd-bottom g-brd-gray-light-v7 g-brd-gray-light-v3--focus rounded-0 px-0 g-py-10"
                      type="text" placeholder="뉴스 부제목을 입력해주세요." maxlength="100">
                  </div>
                </div>
                <!-- 제작사명 끝 -->

                <h5 class="g-my-20">썸네일 이미지</h5>
                <!-- 이미지 썸네일 시작 -->
                <div class="row justify-content-center g-mb-30 g-bg-gray-light-v9 rounded-0 g-mx-0">
                    <img id="preview-image" class="img-fluid g-height-300" src="/resources/static/assets/img-temp/500x600/img1.jpg">  
                </div>
                <!-- 이미지 썸네일 끝 -->

                <!-- 이미지 선택 시작 -->
                <div class="form-group g-mb-40 g-brd-bottom g-brd-gray-light-v7 rounded-0">
                  <label class="u-file-attach-v2 g-color-gray-dark-v5 mb-0">
                    <input id="fileAttachment" name="file-attachment" type="file">
                    <i class="icon-cloud-upload g-font-size-16 g-pos-rel g-top-2 g-mr-5"></i>
                    <span class="js-value" id="imgExplain">이미지 파일을 첨부해주세요.</span>
                  </label>
                </div>
                <!-- 이미지 선택 끝 -->

                <!-- 뉴스 내용 입력 -->
                <div class="g-mb-30">
                  <label class="" for="inputGroup-4_2">
                    <h5>뉴스 내용</h5>
                  </label>

                  <div class="form-group g-pos-rel">
                    <span class="g-pos-abs g-top-0 g-right-0 d-block g-width-40 h-100 opacity-0 g-opacity-1--success">
                      <i class="hs-admin-check g-absolute-centered g-font-size-default g-color-secondary"></i>
                    </span>
                    <!-- Textarea Resizable -->
                    <div class="g-mb-20 g-mx-0">
                      <!-- <label class="g-mb-10" for="inputGroup2_2">Textarea resizable</label> -->
                      <textarea id="summernote" class="form-control form-control-md rounded-0 g-color-gray-dark-v6" rows="4"></textarea>
                    </div>
                  </div>
                </div>
                <!-- 뉴스 제목 끝 -->

              </div>
              <!-- End Line Text Inputs -->
              
              <div class="justify-content-center row align-items-center">
                <a href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-dismiss="modal">돌아가기</a>
                <a href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-toggle="modal" data-target="#exampleModal">추가</a>
              </div>

            </div>
            <!-- End 1-st column -->

          </div>
        </div>
        <!-- 컨텐츠 끝 -->

        <div class="align-items-center g-line-height-1 justify-content-center">

          <!-- 뉴스 추가 모달 내용 시작 -->
          <div class="modal fade justify-content-center" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
          aria-hidden="true">
            <div class="modal-dialog  modal-dialog-scrollable">
              <div class="modal-content">
                <div class="modal-body">
                  <div class="row justify-content-center g-mx-5">
                    <div class="col-12 g-mt-10 g-mb-30">뉴스를 추가 하시겠습니까?</div>
                    <div>
                      <a href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-toggle="modal" data-target="#exampleModal2">추가</a>
                      <a href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-dismiss="modal">닫기</a>
                    </div>
                  </div>
                </div>

                <!-- 추가 완료 팝업 시작-->
                <div class="modal fade justify-content-center" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel"
                  aria-hidden="true">
                  <div class="modal-dialog modal-dialog-scrollable">
                    <div class="modal-content">
                      <div class="modal-body">
                        <div class="row justify-content-center g-mx-5">
                          <div class="col-12 g-mt-10 g-mb-30">뉴스 추가를 완료하였습니다.</div>
                            <div>
                              <a href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-font-size-14" data-dismiss="modal">확인</a>
                            </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- 추가 완료 팝업 끝-->
              </div>
            </div>
          </div>
          <!-- 뉴스 추가 모달 내용 끝 -->

        <!-- Footer -->
        <footer id="footer"
          class="u-footer--bottom-sticky g-bg-white g-color-gray-dark-v6 g-brd-top g-brd-gray-light-v7 g-pa-20">
          <div class="row align-items-center">
            <!-- Footer Nav -->
            <div class="col-md-4 g-mb-10 g-mb-0--md">
              <ul class="list-inline text-center text-md-left mb-0">
                <li class="list-inline-item">
                  <a class="g-color-gray-dark-v6 g-color-secondary--hover" href="#">FAQ</a>
                </li>
                <li class="list-inline-item">
                  <span class="g-color-gray-dark-v6">|</span>
                </li>
                <li class="list-inline-item">
                  <a class="g-color-gray-dark-v6 g-color-secondary--hover" href="#">Support</a>
                </li>
                <li class="list-inline-item">
                  <span class="g-color-gray-dark-v6">|</span>
                </li>
                <li class="list-inline-item">
                  <a class="g-color-gray-dark-v6 g-color-secondary--hover" href="#">Contact Us</a>
                </li>
              </ul>
            </div>
            <!-- End Footer Nav -->

            <!-- Footer Socials -->
            <div class="col-md-4 g-mb-10 g-mb-0--md">
              <ul class="list-inline g-font-size-16 text-center mb-0">
                <li class="list-inline-item g-mx-10">
                  <a href="#" class="g-color-facebook g-color-secondary--hover">
                    <i class="fa fa-facebook-square"></i>
                  </a>
                </li>
                <li class="list-inline-item g-mx-10">
                  <a href="#" class="g-color-google-plus g-color-secondary--hover">
                    <i class="fa fa-google-plus"></i>
                  </a>
                </li>
                <li class="list-inline-item g-mx-10">
                  <a href="#" class="g-color-black g-color-secondary--hover">
                    <i class="fa fa-github"></i>
                  </a>
                </li>
                <li class="list-inline-item g-mx-10">
                  <a href="#" class="g-color-twitter g-color-secondary--hover">
                    <i class="fa fa-twitter"></i>
                  </a>
                </li>
              </ul>
            </div>
            <!-- End Footer Socials -->

            <!-- Footer Copyrights -->
            <div class="col-md-4 text-center text-md-right">
              <small class="d-block g-font-size-default">&copy; 2020 Htmlstream. All Rights Reserved.</small>
            </div>
            <!-- End Footer Copyrights -->
          </div>
        </footer>
        <!-- End Footer -->
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
    <script src="/resources/static/assets/vendor/jquery.filer/js/jquery.filer.min.js"></script>

    <!-- JS Unify -->
    <script src="/resources/static/assets/js/hs.core.js"></script>
    <script src="/resources/static/admin/assets/js/components/hs.side-nav.js"></script>
    <script src="/resources/static/assets/js/helpers/hs.hamburgers.js"></script>
    <script src="/resources/static/assets/js/components/hs.dropdown.js"></script>
    <script src="/resources/static/assets/js/components/hs.scrollbar.js"></script>
    <script src="/resources/static/admin/assets/js/components/hs.bar-chart.js"></script>
    <script src="/resources/static/assets/js/helpers/hs.focus-state.js"></script>
    <script src="/resources/static/admin/assets/js/components/hs.popup.js"></script>

    <script src="/resources/static/assets/js/helpers/hs.file-attachments.js"></script>
    <script src="/resources/static/assets/js/components/hs.file-attachement.js"></script>

    <!-- JS Custom -->
    <script src="/resources/static/assets/js/custom.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <!-- 썸머노트 설정 -->
    <script>
      $('#summernote').summernote({
        placeholder: '뉴스 내용을 작성해주세요.',
        tabsize: 2,
        height: 300
      });
    </script>

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

        $.HSCore.helpers.HSFileAttachments.init();
        $.HSCore.components.HSFileAttachment.init('.js-file-attachment');
        $.HSCore.helpers.HSFocusState.init();

        // 이미지 미리보기 시작
        function readImage(input) {
          // 인풋 태그에 파일이 있는 경우
          if (input.files && input.files[0]) {
            // 이미지 파일인지 검사 (생략)
            // FileReader 인스턴스 생성
            const reader = new FileReader()
            // 이미지가 로드가 된 경우
            reader.onload = e => {
              const previewImage = document.getElementById("preview-image");
              previewImage.src = e.target.result;
            }
            // reader가 이미지 읽도록 하기
            reader.readAsDataURL(input.files[0]);
          }
        }

        // 이미지 업로드 유효성 체크
        function checkImgEffective() {
          var fileNm = $("#fileAttachment").val();

          if (fileNm != "") {

            var ext = fileNm.slice(fileNm.lastIndexOf(".") + 1).toLowerCase();

            if (!(ext == "gif" || ext == "jpg" || ext == "png" || ext == "jpeg")) {
              alert("이미지파일 (.jpg, .png, .gif ) 만 업로드 가능합니다.");
              $("#fileAttachment").val('');
              $("#imgExplain").text("이미지 파일을 첨부해주세요.");
              $("#preview-image").attr('src', "/resources/static/assets/img-temp/500x600/img1.jpg");
              return false;
            }
          }
        }

        // input file에 change 이벤트 부여
        const inputImage = document.getElementById("fileAttachment")
        inputImage.addEventListener("change", e => {
          if( $("#fileAttachment").val() == ""){
            $("#imgExplain").text("이미지 파일을 첨부해주세요.");
            $("#preview-image").attr('src', "/resources/static/assets/img-temp/500x600/img1.jpg");
          }
          checkImgEffective();
          readImage(e.target);
        });
        // 이미지 미리보기 끝
      });
    </script>
</body>

</html>