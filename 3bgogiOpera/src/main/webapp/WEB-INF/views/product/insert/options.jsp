<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../inc/top.jsp" %>
    <%@ include file="../../inc/top_nav.jsp" %>
    <script type="text/javascript">
    	$(function(){
    		
    		$("input[name=optionStockFlag]").change(function(){
    			if($(this).val()==1){
    				$(".optionStockDiv").show();
    				$(".optionStockMaxAlarmDiv").show();
    			}else{
    				$(".optionStockDiv").hide();
    				$(".optionStockMaxAlarmDiv").hide();
    			}
    		});
    		
    		$("#optionSubmit").submit(function(){
    			var optionName = $("input[name=optionName]").val();
    			var optionPrice = $("input[name=optionPrice]").val();
    			var optionBarcodeNumber1 = $("input[name=optionBarcodeNumber1]").val();
    			
    			
    		});
    		
    		//원가 연결 창 추가하기 누를 시 원가 연결 옵션 추가 이벤트
			$("#addCostsMatchingDivButton").click(function(){
				
				$.ajax({
	    			url:"<c:url value='/options/insert/costsVoListAjax.do'/>",
	    			type:"get",
	    			success:function(data){
	    				
	    				var costsConnectData = "";
	    				
	    				costsConnectData+='<div class="form-group row costsDiv">'
					                        +'<label class="col-12 col-sm-3 col-form-label text-sm-right"> 원가 연결 선택 </label>'
					                        +'<div class="col-12 col-sm-8 col-lg-6 row">'
					                            +'<div class="col-md-5 mb-3">'
					                           	 	+'<label for="country">옵션 명</label>'
					                            	+'<select class="form-control" id="optionMatching" name="optionMatching">';
	    				
	    				$.each(data, function(index, items){
	    					                                          	
	    					costsConnectData+='<option value="'+items.costName+'">'+items.costName+' -'+comma(items.totalPrice)+' 원</option>';                                   	
                        
	    				});
	    				
	    				costsConnectData+='</select>'
				                        +'</div>'
				                        +'<div class="col-md-2 mb-2 devideDiv">'
				                             +'<label for="zip"> 타입 </label>'
				                             +'<select class="form-control ocmGramRecalFlag" name="ocmGramRecalFlag">'
				                             	+'<option value="0"> 원본 그대로 </option>'
				                             	+'<option value="1"> 1g으로 나누기 </option>'
				                             	+'<option value="2"> 나누기 </option>'
				                             +'</select>'
				                         +'</div>'
				                         +'<div class="col-md-2 mb-1 devideNumDiv" style="display: none;">'
				                             +'<label for="zip">누눌 수</label>'
				                             +'<input type="text" value="1" class="form-control" name="ocmProductionDivide">'
				                         +'</div>'
				                         +'<div class="col-md-2 mb-1 devideEachDiv">'
				                             +'<label for="zip">개수</label>'
				                             +'<input type="text" value="1" class="form-control" name="ocmEach">'
				                         +'</div>'
				                         +'<div class="col-md-1 mb-1 deleteConnenctDiv">'
				                             +'<label for="zip"></label>'
				                             +'<button type="button" class="btn btn-space btn-warning" name="deleteConnenctButton"> 원가삭제 </button>'
				                         +'</div>'
				                    +'</div>'
				                +'</div>';
				                
	    			$('.costsConnectDiv').append(costsConnectData);
	    			
	    			}//success
	    			
	    		});//ajax
	    		
			});//addCostsMatchingDivButton click
			
			$(document).on("change", "select[name=ocmGramRecalFlag]", function(){

				if( $(this).val()==1 || $(this).val()==2 ){
					
					$(this).parent().parent().find('.devideNumDiv').show();	
					
				}else{
					
					$(this).parent().parent().find('.devideNumDiv').hide();
				}
				
			}); //ocmGramRecalFlag change 이벤트
			
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
                            <h2 class="pageheader-title"> 옵션 등록 </h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">데이터 관리</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">데이터 목록</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">상품 리스트</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">상품</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">옵션 등록</li>
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
                                <h5 class="card-header">${productVO.productName } 의 옵션 상세 입력 </h5>
                                <div class="card-body">
                                    <form id="insertProductForm" method="POST" action="<c:url value='/options/insert/option.do'/>">
                                    	<input type="hidden" name="productFk" value="${productVO.productPk }">
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 옵션 명</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" name="optionName" placeholder="상품 명을 입력해주세요" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 판매가 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" name="optionPrice" placeholder="판매가를 입력해주세요." class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 옵션 사용 여부 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
	                                            <label class="custom-control custom-radio custom-control-inline">
	                                                <input type="radio" name="optionFlag" checked="checked" value="1" class="custom-control-input"><span class="custom-control-label">사용</span>
	                                            </label>
	                                            <label class="custom-control custom-radio custom-control-inline">
	                                                <input type="radio" name="optionFlag" value="0" class="custom-control-input"><span class="custom-control-label">사용하지 않음</span>
	                                            </label>
                                            </div>
                                        </div>
                                         <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 주문서 위치 선택</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <select class="form-control" id="eoFk" name="eoFk">
	                                                <c:forEach var="exceloderseqVolist" items="${exceloderseqVoList }">
	                                                	<option value="${exceloderseqVolist.eosPk }">${exceloderseqVolist.eosLocation }</option>
	                                                </c:forEach>                                               	
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 합포 선택</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <select class="form-control" id="pccFk" name="pccFk">
	                                                <c:forEach var="packingcombinecodeVolist" items="${packingcombinecodeVoList }">
	                                                	<option value="${packingcombinecodeVolist.pccPk }">${packingcombinecodeVolist.pccType }</option>
	                                                </c:forEach>                                               	
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 옵션 순서 선택</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <select class="form-control" id="optionSeq" name="optionSeq">
                                                	<c:forEach var="numbering" begin="1" end="12" step="1">
                                                		<option value="${numbering }">${numbering } 순위 </option>
                                                	</c:forEach>                                            	
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 옵션 바코드 1</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" name="optionBarcodeNumber1" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 옵션 바코드 2</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" name="optionBarcodeNumber2" class="form-control">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 면세 여부 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
	                                            <label class="custom-control custom-radio custom-control-inline">
	                                                <input type="radio" name="optionTaxFlag" checked="checked" value="1" class="custom-control-input"><span class="custom-control-label">면세</span>
	                                            </label>
	                                            <label class="custom-control custom-radio custom-control-inline">
	                                                <input type="radio" name="optionTaxFlag" value="0" class="custom-control-input"><span class="custom-control-label">과세</span>
	                                            </label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 재고 체크 여부 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
	                                            <label class="custom-control custom-radio custom-control-inline">
	                                                <input type="radio" name="optionStockFlag" checked="checked" value="1" class="custom-control-input"><span class="custom-control-label">사용</span>
	                                            </label>
	                                            <label class="custom-control custom-radio custom-control-inline">
	                                                <input type="radio" name="optionStockFlag" value="0" class="custom-control-input"><span class="custom-control-label">사용하지 않음</span>
	                                            </label>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row optionStockMaxAlarmDiv">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 재고 알람 개수 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" name="optionStockMaxAlarm" value="0" class="form-control">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row optionStockDiv">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 재고 개수 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" name="optionStock" value="0" class="form-control">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 엑셀 컬러 여부 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
	                                            <label class="custom-control custom-radio custom-control-inline">
	                                                <input type="radio" name="optionExcelColorCheck"  value="1" class="custom-control-input"><span class="custom-control-label">사용</span>
	                                            </label>
	                                            <label class="custom-control custom-radio custom-control-inline">
	                                                <input type="radio" name="optionExcelColorCheck" checked="checked" value="0" class="custom-control-input"><span class="custom-control-label">사용하지 않음</span>
	                                            </label>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 옵션 메모 1</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" name="optionMemo1" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 옵션 메모 2</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" name="optionMemo2" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 옵션 메모 3</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" name="optionMemo3" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 옵션 메모 4</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" name="optionMemo4" class="form-control">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                        	<div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12"></div>
                                        	<div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
				                                <!-- .card -->
				                                <div class="card card-figure">
				                                    <!-- .card-figure -->
				                                    <figure class="figure">
				                                        <!-- .figure-img -->
				                                        <div class="figure-img">
				                                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/card-img.jpg" alt="Card image cap">
				                                            <div class="figure-action">
				                                                <a href="#" class="btn btn-block btn-sm btn-primary"> 등록되지 않음</a>
				                                            </div>
				                                        </div>
				                                        <!-- /.figure-img -->
				                                        <!-- .figure-caption -->
				                                        <figcaption class="figure-caption">
				                                            <p class="text-muted mb-0"> 옵션 이미지 1 </p>
				                                        </figcaption>
				                                        <!-- /.figure-caption -->
				                                    </figure>
				                                    <!-- /.card-figure -->
				                                </div>
				                                <!-- /.card -->
				                            </div>
				                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
				                                <!-- .card -->
				                                <div class="card card-figure">
				                                    <!-- .card-figure -->
				                                    <figure class="figure">
				                                        <!-- .figure-img -->
				                                        <div class="figure-img">
				                                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/card-img.jpg" alt="Card image cap">
				                                            <div class="figure-action">
				                                                <a href="#" class="btn btn-block btn-sm btn-primary"> 등록되지 않음</a>
				                                            </div>
				                                        </div>
				                                        <!-- /.figure-img -->
				                                        <!-- .figure-caption -->
				                                        <figcaption class="figure-caption">
				                                            <p class="text-muted mb-0"> 옵션 이미지 2</p>
				                                        </figcaption>
				                                        <!-- /.figure-caption -->
				                                    </figure>
				                                    <!-- /.card-figure -->
				                                </div>
				                                <!-- /.card -->
				                            </div>
				                        </div>   
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 비고 사항 </label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <textarea name="optionRemark" style="resize: none;" rows="8" class="form-control"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"></label>
                                            <div class="col-12 col-sm-8 col-lg-6" style="text-align: center;">
                                                <button type="button" class="btn btn-space btn-secondary" id="addCostsMatchingDivButton"> 원가 연결 창 추가하기 </button>
                                            </div>
                                        </div>
                                        <div class="costsConnectDiv">                                        
	                                        <div class="form-group row costsDiv">
	                                            <label class="col-12 col-sm-3 col-form-label text-sm-right"> 원가 연결 선택 </label>
	                                            <div class="col-12 col-sm-8 col-lg-6 row">
		                                            <div class="col-md-5 mb-3">
		                                           	 	<label for="country">옵션 명</label>
		                                            	<select class="form-control" id="optionMatching" name="optionMatching">
		                                                	<c:forEach var="costsVolist" items="${costsVoList }">                                                	
				                                                <option value="${costsVolist.costName }">${costsVolist.costName } - <fmt:formatNumber value="${costsVolist.totalPrice }" pattern="#,###"></fmt:formatNumber> 원</option>                                       	
		                                                	</c:forEach>
		                                                </select>
		                                            </div>
		                                            <div class="col-md-2 mb-2 devideDiv">
			                                             <label for="zip"> 타입 </label>
			                                             <select class="form-control ocmGramRecalFlag" name="ocmGramRecalFlag">
			                                             	<option value="0"> 원본 그대로 </option>
			                                             	<option value="1"> 1g으로 나누기 </option>
			                                             	<option value="2"> 나누기 </option>
			                                             </select>
		                                             </div>
		                                             <div class="col-md-2 mb-1 devideNumDiv" style="display: none;">
			                                             <label for="zip">누눌 수</label>
			                                             <input type="text" value="1" class="form-control" name="ocmProductionDivide">
		                                             </div>
		                                             <div class="col-md-2 mb-1 devideEachDiv">
			                                             <label for="zip">개수</label>
			                                             <input type="text" value="1" class="form-control" name="ocmEach">
		                                             </div>
		                                             <div class="col-md-1 mb-1 deleteConnenctDiv">
			                                             <label for="zip"></label>
			                                             <button type="button" class="btn btn-space btn-warning" name="deleteConnenctButton"> 원가삭제 </button>
		                                             </div>
	                                            </div>
	                                        </div>
                                        </div>
                                        <div class="form-group row text-right">
                                            <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                                <button id="optionSubmit" type="submit" class="btn btn-space btn-primary"> 옵션 등록 하기 </button>
                                                <button class="btn btn-space btn-secondary"> 등록 취소 </button>
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