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

  
  <!-- ?????? ?????? -->
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
</head>

<body>
  <main>
    <!-- sidebar ?????? -->
    	<jsp:include page="layout/sidebar.jsp"/>
    <!-- sidebar ??? -->

        <div class="col g-ml-45 g-ml-0--lg g-pb-65--md">
          <!-- Breadcrumb-v1 -->
          <div class="g-bg-gray-light-v8 g-pa-20">
            <ul class="u-list-inline g-color-gray-dark-v6">

              <li class="list-inline-item g-mr-10">
                <a id="pageName" class="u-link-v5 g-color-gray-dark-v6 g-color-secondary--hover g-valign-middle" href="/admin/news/list">?????? ??????</a>
                <i class="hs-admin-angle-right g-font-size-12 g-color-gray-light-v6 g-valign-middle g-ml-10"></i>
              </li>

              <li class="list-inline-item g-mr-10">
                <a class="u-link-v5 g-color-gray-dark-v6 g-color-secondary--hover g-valign-middle" href="${pageContext.request.contextPath }/admin/news/list">?????? ?????????</a>
                <i class="hs-admin-angle-right g-font-size-12 g-color-gray-light-v6 g-valign-middle g-ml-10"></i>
              </li>

              <li class="list-inline-item">
                <span class="g-valign-middle">?????? ??????</span>
              </li>
            </ul>
          </div>
          <!-- End Breadcrumb-v1 -->


          <!-- ????????? ?????? -->
          <div class="g-pa-20">
            <h1 class="g-font-weight-300 g-font-size-28 g-color-black g-mb-28">?????? ??????</h1>

            <!-- 1-st column -->
            <div class="">
              <!-- Line Text Inputs -->
              <div class="g-brd-around g-brd-gray-light-v7 g-rounded-4 g-pa-15 g-pa-20--md g-mb-30">
                <!-- ?????? ?????? ?????? -->
                <div class="g-mb-30">
                  <label class="" for="inputGroup-4_2">
                    <h5>?????? ??????</h5>
                  </label>

                  <div class="form-group g-pos-rel">
                    <span class="g-pos-abs g-top-0 g-right-0 d-block g-width-40 h-100 opacity-0 g-opacity-1--success">
                      <i class="hs-admin-check g-absolute-centered g-font-size-default g-color-secondary"></i>
                    </span>
                    <input id="newsTitle"
                      class="form-control form-control-md g-brd-none g-brd-bottom g-brd-gray-light-v7 g-brd-gray-light-v3--focus rounded-0 px-0 g-py-10"
                      type="text" placeholder="??????????????? ??????????????????." maxlength="100">
                  </div>
                </div>
                <!-- ?????? ?????? ??? -->

                <!-- ?????? ????????? ?????? -->
                <div class="g-mb-30">
                  <label class="" for="inputGroup-4_2">
                    <h5>?????? ?????????</h5>
                  </label>

                  <div class="form-group g-pos-rel">
                    <span class="g-pos-abs g-top-0 g-right-0 d-block g-width-40 h-100 opacity-0 g-opacity-1--success">
                      <i class="hs-admin-check g-absolute-centered g-font-size-default g-color-secondary"></i>
                    </span>
                    <input id="newsSubTitle"
                      class="form-control form-control-md g-brd-none g-brd-bottom g-brd-gray-light-v7 g-brd-gray-light-v3--focus rounded-0 px-0 g-py-10"
                      type="text" placeholder="?????? ???????????? ??????????????????." maxlength="100">
                  </div>
                </div>
                <!-- ???????????? ??? -->

                <h5 class="g-my-20">????????? ?????????</h5>
                <!-- ????????? ????????? ?????? -->
                <div class="row justify-content-center g-mb-30 g-bg-gray-light-v9 rounded-0 g-mx-0">
                    <img id="preview-image" class="img-fluid g-height-300" src="/upload/default_img.jpg">  
                </div>
                <!-- ????????? ????????? ??? -->

                <!-- ????????? ?????? ?????? -->
                <div class="form-group g-mb-40 g-brd-bottom g-brd-gray-light-v7 rounded-0">
                  <label class="u-file-attach-v2 g-color-gray-dark-v5 mb-0">
                  <form id="fileForm" enctype="multipart/form-data">
                    <input id="fileAttachment" name="file" type="file">
                   </form>
                    <i class="icon-cloud-upload g-font-size-16 g-pos-rel g-top-2 g-mr-5"></i>
                    <span class="js-value" id="imgExplain">????????? ????????? ??????????????????.</span>
                  </label>
                </div>
                <!-- ????????? ?????? ??? -->

                <!-- ?????? ?????? ?????? -->
                <div class="g-mb-30">
                  <label class="" for="inputGroup-4_2">
                    <h5>?????? ??????</h5>
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
                <!-- ?????? ?????? ??? -->

              </div>
              <!-- End Line Text Inputs -->
              
              <div class="justify-content-center row align-items-center">
                <a href="${pageContext.request.contextPath }/admin/news/list" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-dismiss="modal">????????????</a>
                <a id="btn-news-add-parent" href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14">??????</a>
              </div>

            </div>
            <!-- End 1-st column -->

          </div>
        </div>
        <!-- ????????? ??? -->

        <div class="align-items-center g-line-height-1 justify-content-center">

          <!-- ?????? ?????? ?????? ?????? ?????? -->
          <div class="modal fade justify-content-center" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
          aria-hidden="true">
            <div class="modal-dialog  modal-dialog-scrollable">
              <div class="modal-content">
                <div class="modal-body">
                  <div class="row justify-content-center g-mx-5">
                    <div class="col-12 g-mt-10 g-mb-30">????????? ?????? ???????????????????</div>
                    <div>
                      <a id="btn-news-add" href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-toggle="modal"  data-dismiss="modal">??????</a>
                      <a href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-dismiss="modal">??????</a>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>
          <!-- ?????? ?????? ?????? ?????? ??? -->

          <!-- ?????? ?????? ?????? ??????-->
          <div class="modal fade justify-content-center" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
              <div class="modal-content">
                <div class="modal-body">
                  <div class="row justify-content-center g-mx-5">
                    <div class="col-12 g-mt-10 g-mb-30">?????? ????????? ?????????????????????.</div>
                      <div>
                        <a href="/admin/news/list" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-font-size-14">??????</a>
                      </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- ?????? ?????? ?????? ???-->
          
          <!-- Footer -->
          <jsp:include page="layout/footer.jsp" />
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
    <!-- <script src="/resources/static/assets/js/custom.js"></script> -->

    <!-- ???????????? ???????????? -->
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <!-- include summernote-ko-KR -->
	<script src="/resources/static/etc/summernote-ko-KR.js"></script>

    <!-- ???????????? ?????? -->
    <script>
      $('#summernote').summernote({
        placeholder: '??????????????? ??????????????????.',
        tabsize: 2,
        height: 300,
        lang: 'ko-KR'
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

        // ????????? ???????????? ??????
        function readImage(input) {
          // ?????? ????????? ????????? ?????? ??????
          if (input.files && input.files[0]) {
            // ????????? ???????????? ?????? (??????)
            // FileReader ???????????? ??????
            const reader = new FileReader()
            // ???????????? ????????? ??? ??????
            reader.onload = e => {
              const previewImage = document.getElementById("preview-image");
              previewImage.src = e.target.result;
            }
            // reader??? ????????? ????????? ??????
            reader.readAsDataURL(input.files[0]);
          }
        }

        // ????????? ????????? ????????? ??????
        function checkImgEffective() {
          var fileNm = $("#fileAttachment").val();

          if (fileNm != "") {

            var ext = fileNm.slice(fileNm.lastIndexOf(".") + 1).toLowerCase();

            if (!(ext == "gif" || ext == "jpg" || ext == "png" || ext == "jpeg")) {
              alert("??????????????? (.jpg, .png, .gif ) ??? ????????? ???????????????.");
              $("#fileAttachment").val('');
              $("#imgExplain").text("????????? ????????? ??????????????????.");
              $("#preview-image").attr('src', "/upload/default_img.jpg");
              return false;
            }
          }
        }

        // input file??? change ????????? ??????
        const inputImage = document.getElementById("fileAttachment")
        inputImage.addEventListener("change", e => {
          if( $("#fileAttachment").val() == ""){
            $("#imgExplain").text("????????? ????????? ??????????????????.");
            $("#preview-image").attr('src', "/upload/default_img.jpg");
          }
          checkImgEffective();
          readImage(e.target);
        });
        // ????????? ???????????? ???
        
      	//sidebar ?????? ?????????
        $("#newsSidebar").addClass("has-active");
        
      });
    </script>
         
    <script src="/resources/static/etc/admin-news-add.js"></script>
   
</body>

</html>