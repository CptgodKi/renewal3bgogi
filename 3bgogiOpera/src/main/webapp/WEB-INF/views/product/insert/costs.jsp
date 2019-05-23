<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../inc/top.jsp" %>
    <%@ include file="../../inc/top_nav.jsp" %>
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
                            <h2 class="pageheader-title"> 데이터 관리 </h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link"> 데이터 관리 </a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link"> 데이터 입력 </a></li>
                                        <li class="breadcrumb-item active" aria-current="page"> 원가 입력</li>
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
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header"> 다중 원가 입력</h5>
                                <div class="card-body">
                                    <form name="insertCostDetailForm" id="insertCostDetailForm" method="post" action="<c:url value='/products/insert/costs.do'/>">
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원가명 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" placeholder="원가명을 입력해주세요." class="form-control" id="cdName" name="cdName">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원가 생산 시간 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" placeholder="생산하는데 드는 시간을 입력해주세요. (쓰지 않아도 무관)" class="form-control" id="cdCompany" name="cdCompany">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원가 설명란 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <textarea class="form-control" id="cdRemark" name="cdRemark" rows="3" style="resize: none;" placeholder="적지 않아도 무관."></textarea>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="form-group row">
                                        	<label class="col-12 col-sm-12 col-form-label text-sm-center">다중 원재료 및 자재 선택</label>
                                        </div>
                                        <hr>
                                        <div class="form-group row">
                                        	<div class="col-6 col-sm-12 col-lg-6 offset-3 addCostDetailDiv">
                                        		<button type="button" class="btn btn-primary btn-block" id="addCostDetail" name="addCostDetail"> <i class="fas fa-plus"></i> 원재료 추가하기 </button>
                                        	</div>
                                        </div>
                                        <div class="col-8 col-sm-10 col-lg-8 offset-2 addCostDetailDiv" id="addCostDetailDiv">
                                        	<div class="form-group row">                                        	
	                                            <div class="col-3 col-sm-2 col-lg-3">
	                                                <select class="form-control" name="costCode" id="costCode0">

	                                                </select>
	                                            </div>
	                                            <div class="col-5 col-sm-4 col-lg-5">
	                                            	<select class="selectpicker" data-live-search="true" name="costsVOList[0].cdFk" data-size="8">
	                                                	<option value="0"> 분류를 선택해주세요. </option>
	                                                </select>
	                                            </div>
	                                            <div class="col-2 col-sm-3 col-lg-2">
	                                                <input type="text" disabled="disabled" class="form-control" id="test3" name="costsVOList[0].costMesureCal">
	                                            </div>
	                                            <div class="col-2 col-sm-3 col-lg-2">
	                                                <button type="button" class="btn btn-warning btn-block" name="deleteCostDetail"> <i class="fas fa-trash"></i> 삭제 </button>
	                                            </div>
                                        	</div>
                                        </div>
                                        <div class="form-group row text-right">
                                            <div class="col col-sm-12 col-lg-12">
                                                <button type="submit" class="btn btn-space btn-primary">저장하기</button>
                                                <button class="btn btn-space btn-secondary">취소하기</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        
                        <!-- ============================================================== -->
                        <!-- end valifation types -->
                        <!-- ============================================================== -->
                    </div>
            </div>
		    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery-3.3.1.min.js"></script>
		    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.js"></script>
            <script src="${pageContext.request.contextPath}/resources/vendor/slimscroll/jquery.slimscroll.js"></script>
		    <script src="${pageContext.request.contextPath}/resources/vendor/multi-select/js/jquery.multi-select.js"></script>
		    <script src="${pageContext.request.contextPath}/resources/libs/js/main-js.js"></script>
		    <script src="${pageContext.request.contextPath}/resources/libs/js/renewal_cost_manage.js"></script>
		    <script type="text/javascript">
		    	$(function(){
		    		
		    	});
		    </script>
        <!-- /page content -->
        <%@ include file="../../inc/bottom.jsp" %>