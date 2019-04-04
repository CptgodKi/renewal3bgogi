<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../inc/top.jsp" %>
    <%@ include file="../../inc/top_nav.jsp" %>
    <script type="text/javascript">
    	$(function(){
    		//판매처 감추기
    		$('.cdStoreCompanyDiv').hide();
    		
    		$('input[name=cdLossFlag]').change(function(){
    			if($(this).val()=='1'){
    				$('.cdLossRateDiv').show();
    			}else{
    				$('.cdLossRateDiv').hide();
    			}
    		});
    		
    		$('input[name=cdCompanyDiagnosis]').change(function(){
    			if($(this).val()=='1'){
    				$('.cdManufacturerDiv').show();
    				$('.cdStoreCompanyDiv').hide();
    				
    			}else{
    				$('.cdManufacturerDiv').hide();
    				$('.cdStoreCompanyDiv').show();
    			}
    		});
    	});
    </script>
    
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
                                        <li class="breadcrumb-item active" aria-current="page"> 원가 상세사항 입력</li>
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
                                <h5 class="card-header"> 원가 데이터 상세사항 입력</h5>
                                <div class="card-body">
                                    <form name="insertCostDetailForm" id="validationform" >
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원가명 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" placeholder="원가명을 입력해주세요." class="form-control" id="cdName" name="cdName">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원가 분류 코드 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <select class="form-control" id="ccFk" name="ccFk">
                                                	<c:forEach var="cclist" items="${ccList }">
	                                                    <option value="${cclist.ccPk }"> ${cclist.ccCodeType } </option>                                                	
                                                	</c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원가 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" placeholder="원가를 입력해주세요. (손실률 없는 원가)" id="cdPrice" class="form-control" name="cdPrice">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원가 손실 여부 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" value="1" name="cdLossFlag" checked="checked" class="custom-control-input"><span class="custom-control-label"> 손실 Y </span>
                                            </label>
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" value="0" name="cdLossFlag" class="custom-control-input"><span class="custom-control-label"> 손실 N</span>
                                            </label>
                                            </div>
                                        </div>
                                        <div class="form-group row cdLossRateDiv">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원가 손실률 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" placeholder="원가 손실률을 입력해주세요." class="form-control" id="cdLossRate" name="cdLossRate">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 구입사 구분 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" value="1" name="cdCompanyDiagnosis" checked="checked" class="custom-control-input"><span class="custom-control-label"> 제조사 </span>
                                            </label>
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" value="0" name="cdCompanyDiagnosis" class="custom-control-input"><span class="custom-control-label"> 판매처 </span>
                                            </label>
                                            </div>
                                        </div>
                                        <div class="form-group row cdManufacturerDiv">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right" style="color:red;"> 제조사</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" placeholder="제조사를 입력해주세요. (쓰지 않아도 무관)" class="form-control" id="cdManufacturer" name="cdManufacturer">
                                            </div>
                                        </div>
                                        <div class="form-group row cdStoreCompanyDiv">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right" style="color:skyblue;"> 판매처 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" placeholder="판매처를 입력해주세요. (쓰지 않아도 무관)" class="form-control" id="cdStoreCompany" name="cdStoreCompany">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원가 단위 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <select class="form-control" id="cdMeasure" name="cdMeasure">
                                                    <option value="kg"> Kg(키로)</option>
                                                    <option value="liter"> Liter(리터)</option>
                                                    <option value="ea"> Ea(개수)</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원가 설명란 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <textarea class="form-control" id="cdRemark" name="cdRemark" rows="3" style="resize: none;" placeholder="적지 않아도 무관."></textarea>
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
        <!-- /page content -->
        <%@ include file="../../inc/bottom.jsp" %>