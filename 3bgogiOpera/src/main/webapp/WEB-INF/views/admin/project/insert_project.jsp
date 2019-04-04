<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../inc/top.jsp" %>
    <%@ include file="../../inc/top_nav.jsp" %>
    <script type="text/javascript">
    	$(function(){
    		
    	});
    </script>
    <style type="text/css">
		.table-grid-test{
			display: grid;
		}
    </style>
        <!-- page content -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title"> 업무 확인 </h2>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link"> 개인 </a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link"> 업무일지 </a></li>
                                        <li class="breadcrumb-item active" aria-current="page"> 업무 확인 </li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                    <div class="row">
                        <!-- ============================================================== -->
                        <!-- valifation types -->
                        <!-- ============================================================== -->
                        	<div class="col-xl-2 col-lg-2 col-md-6 col-sm-12 col-12">
		                        <div class="sidebar-nav-fixed">
		                        	<div id="custom-search" class="top-search-bar">
		                        		<label class="custom-control custom-checkbox">
                                        	<input type="checkbox" class="custom-control-input"><span class="custom-control-label">오늘 할 일만 보기</span>
                                        </label>
		                                <label class="custom-control custom-checkbox">
                                        	<input type="checkbox" checked="" class="custom-control-input"><span class="custom-control-label">감추기 보기</span>
                                        </label>
                                        <label class="custom-control custom-checkbox">
                                        	<input type="checkbox" class="custom-control-input"><span class="custom-control-label">완료된 업무 보기</span>
                                        </label>
                                        <label class="custom-control custom-checkbox">
                                        	<input type="checkbox" class="custom-control-input"><span class="custom-control-label">다른 팀원 업무 보기</span>
                                        </label>
                                        <label class="custom-control custom-checkbox">
                                        	<input type="checkbox" class="custom-control-input"><span class="custom-control-label">다른 팀원 태그 보기</span>
                                        </label>
                                        <label class="custom-control custom-checkbox">
                                        	<input type="checkbox" class="custom-control-input"><span class="custom-control-label">알람만 보기</span>
                                        </label>
		                            </div>
		                            <hr>
		                            <ul class="list-unstyled">
		                                <li><a href="javascript:void(0);" class="active">갓기찬</a></li>
		                                <li><a href="javascript:void(0);">예약</a></li>
		                                <li><a href="javascript:void(0);">긴급</a></li>
		                                <li><a href="javascript:void(0);">웹페이지</a></li>
		                                <li><a href="javascript:void(0);">테스트</a></li>
		                                <li><a href="javascript:void(0);">나만</a></li>
		                                <li><a href="javascript:void(0);">매일</a></li>
		                                <li><a href="javascript:void(0);">나중</a></li>
		                                <li><a href="javascript:void(0);">빨리</a></li>
		                                <li><a href="javascript:void(0);">ㅎㅇㅎㅇ</a></li>
		                                <li><a href="javascript:void(0);">시스템운영개발</a></li>
		                            </ul>
		                        </div>
		                    </div>
	                        <div class="col-xl-10">
		                        <div class="row">
									<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12"style="margin-bottom: 25px;">
										<form action="">
											<div class="input-group">
												<input type="text" class="form-control" placeholder="업무명을 적은 뒤 #을 적어 상세사항 입력">
												<div class="input-group-append be-addon">
													<button type="button" data-toggle="dropdown"
														class="btn btn-secondary dropdown-toggle"> 추가사항 </button>
													<div class="dropdown-menu">
														<a href="#" class="dropdown-item">알람 켜기</a>
															<div class="dropdown-divider"></div>
														<input type="file" class="dropdown-item">
													</div>
												</div>
												<button type="button" class="btn btn-primary"> 입력 </button>
											</div>										
										</form>
									</div>
									<div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12 table-grid-test">
		                                <div class="card">
		                                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/card-img.jpg" alt="Card image cap" align="middle">
		                                    <div class="card-header d-flex">
		                                        <h4 class="mb-0">Card Header</h4>
		                                        <div class="dropdown ml-auto">
		                                            <a class="toolbar" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-dots-vertical"></i>  </a>
		                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
		                                                <a class="dropdown-item" href="#"> 업무 삭제 </a>
		                                                <a class="dropdown-item" href="#"> 상담 알람 </a>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="card-body">
		                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		                                    </div>
		                                </div>
		                            </div>
		                            
		                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12 table-grid-test">
		                                <div class="card">
		                                	<img class="card-img-top renewal-img-padding" src="${pageContext.request.contextPath}/resources/images/3bgogi_logo.png" alt="Card image cap" align="middle">
		                                    <div class="card-header d-flex">
		                                        <span class="title renewal-page-modal-title" style="color: #ff6161; font-size: 20px;">리뉴얼 업무 페이지</span>
		                                        <div class="dropdown ml-auto">
		                                            <a class="toolbar" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-dots-vertical"></i>  </a>
		                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
		                                                <a class="dropdown-item" href="#"> 업무 삭제 </a>
		                                                <a class="dropdown-item" href="#"> 상담 알람 </a>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="card-body">
		                                        <p class="card-text">언제 다 완성시킬 수 있을까 현기증나네요</p>
		                                    </div>
		                                    <div class="card-footer">
		                                    	<div class="btn-group tag-list">
													<span class="badge badge-light">#업무페이지</span>&nbsp;
													<span class="badge badge-light">#디자인</span>&nbsp;
													<span class="badge badge-light">#업무</span>&nbsp;
													<span class="badge badge-light">#분석</span>
												</div>
		                                    </div>
		                                </div>
		                            </div>
		                            
		                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12 table-grid-test">
		                                <div class="card">
		                                    <div class="card-header d-flex">
		                                        <h4 class="mb-0">ㅎㅇ</h4>
		                                        <div class="dropdown ml-auto">
		                                            <a class="toolbar" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-dots-vertical"></i>  </a>
		                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
		                                                <a class="dropdown-item" href="#"> 업무 삭제 </a>
		                                                <a class="dropdown-item" href="#"> 상담 알람 </a>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="card-body">
		                                        <p class="card-text">인사는 여기까지만</p>
		                                    </div>
		                                </div>
		                            </div>
		                            
		                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12 table-grid-test">
		                                <div class="card">
		                                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/3bgogi_logo.png" alt="Card image cap" align="middle">
		                                    <div class="card-header d-flex">
		                                        <h4 class="mb-0">디자인</h4>
		                                        <div class="dropdown ml-auto">
		                                            <a class="toolbar" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-dots-vertical"></i>  </a>
		                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
		                                                <a class="dropdown-item" href="#"> 업무 삭제 </a>
		                                                <a class="dropdown-item" href="#"> 상담 알람 </a>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="card-body">
		                                        <p class="card-text">테스트</p>
		                                    </div>
		                                </div>
		                            </div>
		                            
		                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12 table-grid-test">
		                                <div class="card">
		                                    <div class="card-header d-flex">
		                                        <h4 class="mb-0">ㅎㅇ</h4>
		                                        <div class="dropdown ml-auto">
		                                            <a class="toolbar" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-dots-vertical"></i>  </a>
		                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
		                                                <a class="dropdown-item" href="#"> 업무 삭제 </a>
		                                                <a class="dropdown-item" href="#"> 상담 알람 </a>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="card-body">
		                                        <p class="card-text">인사는 여기까지만</p>
		                                    </div>
		                                </div>
		                            </div>
		                            
		                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12 table-grid-test">
		                                <div class="card">
		                                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/3bgogi_logo.png" alt="Card image cap" align="middle">
		                                    <div class="card-header d-flex">
		                                        <h4 class="mb-0">디자인</h4>
		                                        <div class="dropdown ml-auto">
		                                            <a class="toolbar" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-dots-vertical"></i>  </a>
		                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
		                                                <a class="dropdown-item" href="#"> 업무 삭제 </a>
		                                                <a class="dropdown-item" href="#"> 상담 알람 </a>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="card-body">
		                                        <p class="card-text">테스트</p>
		                                    </div>
		                                </div>
		                            </div>
		                            
		                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12 table-grid-test">
		                                <div class="card">
		                                    <div class="card-header d-flex">
		                                        <h4 class="mb-0">ㅎㅇ</h4>
		                                        <div class="dropdown ml-auto">
		                                            <a class="toolbar" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-dots-vertical"></i>  </a>
		                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
		                                                <a class="dropdown-item" href="#"> 업무 삭제 </a>
		                                                <a class="dropdown-item" href="#"> 상담 알람 </a>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="card-body">
		                                        <p class="card-text">인사는 여기까지만</p>
		                                    </div>
		                                </div>
		                            </div>
		                            
		                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12 table-grid-test">
		                                <div class="card">
		                                    <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/3bgogi_logo.png" alt="Card image cap" align="middle">
		                                    <div class="card-header d-flex">
		                                        <h4 class="mb-0">디자인</h4>
		                                        <div class="dropdown ml-auto">
		                                            <a class="toolbar" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-dots-vertical"></i>  </a>
		                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
		                                                <a class="dropdown-item" href="#"> 업무 삭제 </a>
		                                                <a class="dropdown-item" href="#"> 상담 알람 </a>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="card-body">
		                                        <p class="card-text">테스트</p>
		                                    </div>
		                                </div>
		                            </div>
		                       </div>
	                    </div>
                        <!-- ============================================================== -->
                        <!-- end valifation types -->
                        <!-- ============================================================== -->
                    </div>
           
            </div>
        <!-- /page content -->
        <script type="text/javascript">
	    $(function(){
	    	
	    	
	    });
    </script>
        <%@ include file="../../inc/bottom.jsp" %>