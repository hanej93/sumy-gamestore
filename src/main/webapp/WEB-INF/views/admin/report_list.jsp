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

  <link rel="stylesheet" href="/resources/static/assets/vendor/hamburgers/hamburgers.min.css">

  <!-- CSS Unify -->
  <link rel="stylesheet" href="/resources/static/admin/assets/css/unify-admin.css">

  <!-- CSS Customization -->
  <link rel="stylesheet" href="/resources/static/assets/css/custom.css">
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
                <a id="pageName" class="u-link-v5 g-color-gray-dark-v6 g-color-secondary--hover g-valign-middle" href="#!">?????? ??????</a>
                <i class="hs-admin-angle-right g-font-size-12 g-color-gray-light-v6 g-valign-middle g-ml-10"></i>
              </li>

              <li class="list-inline-item">
                <span class="g-valign-middle">?????? ?????????</span>
              </li>
            </ul>
          </div>
          <!-- End Breadcrumb-v1 -->


          <!-- ????????? ?????? -->
          <div class="g-pa-20">
            <div class="media">
              <div class="d-flex align-self-center">
                <h1 class="g-font-weight-300 g-font-size-28 g-color-black mb-0">?????? ?????????</h1>
              </div>
            </div>

            <hr class="d-flex g-brd-gray-light-v7 g-my-30">

            <div class="media flex-wrap g-mb-30">
              <div class="d-flex align-self-center align-items-center g-ml-10 g-ml-20--md g-ml-40--lg">
                <span class="g-color-gray-dark-v6 g-mr-12">?????? ??????:</span>

                <div class="u-select--v1 g-pr-20">
                  <select id="reportReadYn-select" class="js-select u-select--v1-select w-100" style="display: none;">
                  <option <c:if test="${paging.reportReadYn == 'Both'}">selected</c:if>
                      data-content='<span class="d-flex align-items-center"><span class="g-line-height-1_2 g-color-black">Both</span></span>'>
                      Both</option>
                    <option <c:if test="${paging.reportReadYn == 'No'}">selected</c:if>
                      data-content='<span class="d-flex align-items-center"><span class="g-line-height-1_2 g-color-black">No</span></span>'>
                      No</option>
                    <option <c:if test="${paging.reportReadYn == 'Yes'}">selected</c:if>
                      data-content='<span class="d-flex align-items-center"><span class="g-line-height-1_2 g-color-black">Yes</span></span>'>
                      Yes</option>
                  </select>
                  <i class="hs-admin-angle-down g-absolute-centered--y g-right-0 g-color-gray-light-v6 ml-auto"></i>
                </div>
              </div>

              <div class="d-flex g-hidden-md-up w-100"></div>

              <div class="media-body align-self-center g-mt-10 g-mt-0--md">
                <div class="input-group g-pos-rel g-max-width-380 float-right">
                  <input id="report-nickname-search" value="${paging.keyword }"
                    class="form-control h-100 g-font-size-default g-brd-gray-light-v7 g-brd-lightblue-v3--focus g-rounded-20 g-pl-20 g-pr-50 g-py-10"
                    type="text" placeholder="??????????????? ???????????????.">
                  <button id="report-nickname-search-btn"
                    class="btn g-pos-abs g-top-0 g-right-0 g-z-index-2 g-width-60 h-100 g-bg-transparent g-font-size-16 g-color-primary g-color-secondary--hover rounded-0"
                    type="submit">
                    <i class="hs-admin-search g-absolute-centered"></i>
                  </button>
                </div>
              </div>
            </div>

            <div class="g-pa-15 g-pa-0-30-25--md">
              <table class="table w-100 g-mb-25">
                <thead class="g-color-gray-dark-v6">
                  <tr>
                    <th class="g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        No.
                      </div>
                    </th>
                    <th
                      class="g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        ?????????
                      </div>
                    </th>
                    <th
                      class="g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        ????????????
                      </div>
                    </th>
                    <th class="g-hidden-sm-down g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                         ???????????? ??????
                      </div>
                    </th>
                    <th
                      class="g-hidden-sm-down g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        ??????
                      </div>
                    </th>
                    <th
                      class="g-hidden-sm-down g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        ?????????
                      </div>
                    </th>
                    <th class="g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        ??????
                      </div>
                    </th>
                    <th class="g-bg-gray-light-v8 g-font-weight-400 g-valign-middle g-brd-bottom-none g-py-15">
                      <div class="d-flex align-items-center justify-content-center">
                        ??????/??????
                      </div>
                    </th>
                  </tr>
                </thead>

                <tbody class="g-font-size-default g-color-black" id="accordion-09" role="tablist"
                  aria-multiselectable="true">
                  <!-- ????????? ?????? ?????? -->
                  <c:forEach items="${viewAll }" var="reportList">
                  <tr id="contact-1-header" class="text-center" role="tab">
                    <td class="g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md">
                    	${reportList.reportId}
                    </td>
                    <td
                      class="g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md g-px-5 g-px-10--sm">
                      <span class="">${reportList.fromUserNickname }</span>
                    </td>
                    <td
                      class="g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md g-px-5 g-px-10--sm">
                      <span class="">${reportList.toUserNickname }</span>
                    </td>
                    <td class="g-hidden-sm-down g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md g-px-5 g-px-10--sm">
                      <span class="g-hidden-sm-down">${reportList.reviewReportCount }</span>
                      </td>
                    <td
                      class="g-hidden-sm-down g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md g-px-5 g-px-10--sm">
                      <span class="g-hidden-sm-down">${reportList.toUserWarningCount }</span>
                    </td>
                    <td
                      class="g-hidden-sm-down g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md g-px-5 g-px-10--sm">
                      <fmt:parseDate value="${reportList.reportWriteDate}" var="dateFmt" pattern="yyyy-MM-dd'T'HH:mm"/>
      					<fmt:formatDate value="${dateFmt}"  pattern="yyyy.MM.dd  HH:mm"/>
                    </td>
                    <td class="g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md">
                      <!-- Toggles Views -->
                      <label class="form-check-inline u-check mx-0 mb-0">
                        <input reportId="${reportList.reportId }" id="readYn-checkbox${reportList.reportId }" class="g-hidden-xs-up g-pos-abs g-top-0 g-right-0" name="radGroup1_1" type="checkbox"
                         <c:if test="${reportList.reportReadYn == 1 }">
                          checked
                         </c:if>
                         >
                        <div class="u-check-icon-radio-v7">
                          <i class="d-inline-block"></i>
                        </div>
                      </label>
                      <!-- End Toggles Views -->
                    </td>

                    <td
                      class="g-valign-middle g-brd-top-none g-brd-bottom g-brd-gray-light-v7 g-py-15 g-py-30--md g-px-10--sm">
                      <div class="align-items-center g-line-height-1 justify-content-center">

                        <!-- ?????? ?????? ?????? -->
                        <a class="u-link-v5 g-color-gray-light-v6 g-color-secondary--hover" data-toggle="modal"
                          data-target="#exampleModal1${reportList.reportId }">
                          <i class="hs-admin-pencil g-font-size-18"></i>
                        </a>
                        <!-- ?????? ?????? ??? -->

                        <!-- ?????? ?????? ?????? -->
                        <div toUserId="${reportList.toUserId }" reportId="${reportList.reportId }" class="modal fade" id="exampleModal1${reportList.reportId }" tabindex="-1" aria-labelledby="exampleModalLabel"
                          aria-hidden="true">
                          <div class="modal-dialog  modal-dialog-scrollable">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title ml-auto" id="exampleModalLabel">?????? ??????</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                <div class="row justify-content-start text-left g-mx-5">
                                  <div class="col-12 g-my-10"><h5>?????????</h5></div>
                                  <div class="col-12 g-my-10">?????? : ${reportList.fromUserName}</div>
                                  <div class="col-12 g-my-10">????????? : ${reportList.fromUserNickname}</div>
                                  <div class="col-12 g-my-10">????????? : ${reportList.fromUserEmail}</div>
                                  <div class="col-12 g-my-10">??????????????? : 
                                  	<fmt:parseDate value="${reportList.reportWriteDate}" var="dateFmt" pattern="yyyy-MM-dd'T'HH:mm"/>
      								<fmt:formatDate value="${dateFmt}"  pattern="yyyy.MM.dd  HH:mm"/></div>
                                </div>
                                <h5 class="modal-title ml-auto g-my-10" id="exampleModalLabel">?????? ??????</h5>
                                <div class="g-mb-20 g-px-20">
                                  <textarea class="form-control form-control-md rounded-0 g-color-gray-dark-v6" rows="4" placeholder="????????? ????????????." readonly="readonly">${reportList.reportText }</textarea>
                                </div>
                                <hr class="g-mx-20 g-my-10">
                                <div class="row justify-content-start text-left g-mx-5">
                                  <div class="col-12 g-my-10"><h5>?????? ??????</h5></div>
                                  <div class="col-12 g-my-10">?????? : ${reportList.toUserName}</div>
                                  <div class="col-12 g-my-10">????????? : ${reportList.toUserNickname}</div>
                                  <div class="col-12 g-my-10">????????? : ${reportList.toUserEmail}</div>
                                  <div class="col-12 g-my-10">???????????? ?????? : ${reportList.reviewReportCount}</div>
                                  <div class="col-12 g-my-10">?????? : 
                                    <div id="sumy-warning-minus${reportList.reportId }" class="btn btn-md g-color-primary--hover g-py-0"><i class="icon-minus"></i>
                                    </div>
                                    <span id="sumy-warning-num${reportList.reportId }">${reportList.toUserWarningCount }</span>
                                    <div id="sumy-warning-plus${reportList.reportId }" class="btn btn-md g-color-primary--hover g-py-0"><i class="icon-plus"></i>
                                    </div>
                                  </div>
                                </div>

                                <h5 class="modal-title ml-auto g-my-10" id="exampleModalLabel">?????? ??????</h5>
                                
                                <form>
                                  <!-- Textarea Resizable -->
                                  <div class="g-mb-20 g-px-20">
                                    <!-- <label class="g-mb-10" for="inputGroup2_2">Textarea resizable</label> -->
                                    <textarea class="form-control form-control-md rounded-0 g-color-gray-dark-v6" rows="4" placeholder="?????? ????????? ????????????." readonly="readonly">${reportList.reviewText }</textarea>
                                  </div>
                                </form>
                              </div>
                              <div class="modal-footer justify-content-center">
                                <a href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-toggle="modal" data-target="#exampleModal2${reportList.reportId}">?????? ??????</a>
                                <a href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-dismiss="modal">??????</a>
                                
                              </div>
                              
                            </div>
                          </div>
                        </div>
                        <!-- ?????? ?????? ??? -->
                  
                        <!-- ?????? ????????? ?????? ??????-->
                        <div class="modal fade justify-content-center" id="exampleModal2${reportList.reportId}" tabindex="-1" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                          <div class="modal-dialog  modal-dialog-scrollable">
                            <div class="modal-content">
                              <div class="modal-body">
                                <div class="row justify-content-center g-mx-5">
                                  <div class="col-12 g-mt-10 g-mb-30">????????? ?????????????????????????</div>
                                    <div>
                                      <a id="delReviewBtn${reportList.reportId}" reviewId="${reportList.reviewId}" href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-toggle="modal">??????</a>
                                      <a href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-dismiss="modal">??????</a>
                                    </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- ?????? ????????? ?????? ???-->

                        <!-- ?????? ?????? ?????? -->
                        <a class="u-link-v5 g-color-gray-light-v6 g-color-secondary--hover" data-toggle="modal"
                        data-target="#exampleModal4${reportList.reportId}">
                          <i class="hs-admin-trash g-font-size-18"></i>
                        </a>
                        <!-- ?????? ?????? ??? -->

                        <!-- ?????? ?????? ?????? ?????? -->
                        <div class="modal fade justify-content-center" id="exampleModal4${reportList.reportId}" tabindex="-1" aria-labelledby="exampleModalLabel"
                          aria-hidden="true">
                          <div class="modal-dialog  modal-dialog-scrollable">
                            <div class="modal-content">
                              <div class="modal-body">
                                <div class="row justify-content-center g-mx-5">
                                  <div class="col-12 g-mt-10 g-mb-30">??????????????? ?????? ???????????????????</div>
                                  <div>
                                    <a id="delBtn${reportList.reportId}" reportId="${reportList.reportId}" href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-toggle="modal">??????</a>
                                    <a href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-mr-10 g-font-size-14" data-dismiss="modal">??????</a>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- ?????? ?????? ?????? ??? -->
                      </div>
                    </td>
                  </tr>
                  <!-- ????????? ?????? ??? -->
                  </c:forEach>
                </tbody>
              </table>
              <!-- ????????? ??? -->
              <!-- ?????? ?????? ?????? ??????-->
              <div class="modal fade justify-content-center" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel"
              aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable">
                  <div class="modal-content">
                    <div class="modal-body">
                      <div class="row justify-content-center g-mx-5">
                        <div class="col-12 g-mt-10 g-mb-30">??????????????? ?????????????????????.</div>
                          <div>
                            <a href="#" class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-font-size-14" data-dismiss="modal">??????</a>
                          </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- ?????? ?????? ?????? ???-->
              <!-- ?????? ?????? ?????? ??????-->
              <div class="modal fade justify-content-center" id="exampleModal5" tabindex="-1" aria-labelledby="exampleModalLabel"
              aria-hidden="true">
	              <div class="modal-dialog modal-dialog-scrollable">
	                <div class="modal-content">
	                  <div class="modal-body">
	                    <div class="row justify-content-center g-mx-5">
	                      <div class="col-12 g-mt-10 g-mb-30">???????????? ????????? ?????????????????????.</div>
	                        <div>
	                          <a href="#"
	                          class="btn btn-lg u-btn-outline-primary u-btn-hover-v1-1 g-font-size-14"
	                          data-dismiss="modal">??????</a>
	                        </div>
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
            	<!-- ?????? ?????? ?????? ???-->
            
            </div>
			
            <nav aria-label="Page Navigation">
              <ul class="list-inline d-flex align-items-center justify-content-center g-my-60">
	              <c:if test="${paging.startPage != 1 }">
	                <li class="list-inline-item g-mr-10">
	                  <a class="u-pagination-v1__item u-pagination-v1-2 g-bg-lightblue-v3--active g-color-gray-dark-v6 g-color-black--hover g-color-white--active g-brd-gray-light-v7 g-brd-lightblue-v3--hover g-brd-lightblue-v3--active g-px-18 g-py-12 g-rounded-4"
	                    href="/admin/report/list?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}&keyword=${paging.keyword}&reportReadYn=${paging.reportReadYn}" aria-label="Previous">
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
				                    href="/admin/report/list?nowPage=${p }&cntPerPage=${paging.cntPerPage}&keyword=${paging.keyword}&reportReadYn=${paging.reportReadYn}">${p }</a>
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
		                    href="/admin/report/list?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&keyword=${paging.keyword}&reportReadYn=${paging.reportReadYn}" aria-label="Next">
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

          <!--?????? ??????-->		
          <jsp:include page="layout/footer.jsp"/>
          <!--?????? ???-->	
          
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

    <!-- JS Unify -->
    <script src="/resources/static/assets/js/hs.core.js"></script>
    <script src="/resources/static/admin/assets/js/components/hs.side-nav.js"></script>
    <script src="/resources/static/assets/js/helpers/hs.hamburgers.js"></script>
    <script src="/resources/static/assets/js/components/hs.dropdown.js"></script>
    <script src="/resources/static/assets/js/components/hs.scrollbar.js"></script>
    <script src="/resources/static/admin/assets/js/components/hs.bar-chart.js"></script>
    <script src="/resources/static/assets/js/helpers/hs.focus-state.js"></script>
    <script src="/resources/static/admin/assets/js/components/hs.popup.js"></script>

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

      	//sidebar ?????? ?????????
        $("#warningSidebar").addClass("has-active");

      });
    </script>
    
    <script src="/resources/static/etc/admin-report-list.js"></script>
</body>
</html>