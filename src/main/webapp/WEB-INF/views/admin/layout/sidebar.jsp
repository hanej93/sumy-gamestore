<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
              class="u-sidebar-navigation-v1-menu-item u-side-nav--has-sub-menu u-side-nav--top-level-menu-item u-side-nav-opened">
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

              <!-- Dashboards: Submenu-1 -->
              
              <!-- End Dashboards: Submenu-1 -->
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
              <a class="media u-side-nav--top-level-menu-link u-side-nav--hide-on-hidden g-px-15 g-py-12" href="${pageContext.request.contextPath }/admin/report/list"
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


        </div>