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
                                    <form name="insertCostDetailForm" id="validationform" >
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원가명 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" placeholder="원가명을 입력해주세요." class="form-control" id="cdName" name="cdName">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> Gram  </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" placeholder="원가의 Gram 수를 입력해주세요." class="form-control" id="cdLossRate" name="cdLossRate">
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
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원재료 </label>
                                            <div class="col-4 col-sm-3 col-lg-2">
                                                <select class="form-control" id="test1" name="test2">
                                                	<option value="1">첫번째 분류</option>
                                                	<option value="2">두번째 분류</option>
                                                	<option value="3">세번째 분류</option>
                                                	<option value="4">네번째 분류</option>
                                                	<option value="5">다섯번째 분류</option>
                                                	<option value="6">여섯번째 분류</option>
                                                </select>
                                            </div>
                                            <div class="col-4 col-sm-3 col-lg-2">
                                                <select class="form-control" id="test1" name="test2">
                                                	<option value="1">종류 고기</option>
                                                	<option value="2">종류 꼬기</option>
                                                	<option value="3">종류 우유</option>
                                                	<option value="4">종류 사과</option>
                                                	<option value="5">밀까루</option>
                                                	<option value="6">갬-성</option>
                                                </select>
                                            </div>
                                            <div class="col-4 col-sm-3 col-lg-2">
                                                <input type="text" placeholder="Gram을 입력해주세요" class="form-control" id="test3" name="test3">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원재료 </label>
                                            <div class="col-4 col-sm-3 col-lg-2">
                                                <select class="form-control" id="test1" name="test2">
                                                	<option value="1">첫번째 분류</option>
                                                	<option value="2">두번째 분류</option>
                                                	<option value="3">세번째 분류</option>
                                                	<option value="4">네번째 분류</option>
                                                	<option value="5">다섯번째 분류</option>
                                                	<option value="6">여섯번째 분류</option>
                                                </select>
                                            </div>
                                            <div class="col-4 col-sm-3 col-lg-2">
                                                <select class="form-control" id="test1" name="test2">
                                                	<option value="1">종류 고기</option>
                                                	<option value="2">종류 꼬기</option>
                                                	<option value="3">종류 우유</option>
                                                	<option value="4">종류 사과</option>
                                                	<option value="5">밀까루</option>
                                                	<option value="6">갬-성</option>
                                                </select>
                                            </div>
                                            <div class="col-4 col-sm-3 col-lg-2">
                                                <input type="text" placeholder="Gram을 입력해주세요" class="form-control" id="test3" name="test3">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 자재 </label>
                                            <div class="col-4 col-sm-3 col-lg-2">
                                                <select class="form-control" id="test4" name="test4">
                                                	<option value="1">아이스박스</option>
                                                	<option value="2">포장지</option>
                                                	<option value="2">산소</option>
                                                	<option value="2">진공</option>
                                                </select>
                                            </div>
                                            <div class="col-4 col-sm-3 col-lg-2">
                                                <select class="form-control" id="test5" name="test5">
                                                	<option value="1">c-1</option>
                                                	<option value="2">c-2</option>
                                                	<option value="3">c-3</option>
                                                	<option value="4">산소</option>
                                                	<option value="5">co2</option>
                                                	<option value="6">비닐</option>
                                                </select>
                                            </div>
                                            <div class="col-4 col-sm-3 col-lg-2">
                                                <input type="text" placeholder="개수를 입력해주세요" class="form-control" id="test6" name="test6">
                                            </div>
                                        </div>
                                        <div class="form-group row text-right">
                                            <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
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
		    <script type="text/javascript">
		    	$(function(){
		    		
		    	});
		    </script>
        <!-- /page content -->
        <%@ include file="../../inc/bottom.jsp" %>