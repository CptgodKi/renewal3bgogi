jQuery(document).ready(function($) {
	
	jQuery.ajaxSettings.traditional = true;
	
	$.ajax({
	    type       : 'GET',
	    url        : '/products/cost_code_list.do',
	    success    : function(data){
	    	insertCostCodeList(data, 'costCode0');
	    }
	});
	
	//costCode 뒤에 id값 부여
	var costCodeCounting = 1;
	
	//원재료 추가하기 버튼 누를 경우
	$("button[name=addCostDetail]").click(function(){
		var costDetaildataSet = "";
		
		costDetaildataSet+='<div class="form-group row">'                                        	
	        +'<div class="col-3 col-sm-2 col-lg-3">'
	            +'<select class="form-control" name="costCode" id="costCode'+costCodeCounting+'">'
	
	            +'</select>'
	        +'</div>'
	        +'<div class="col-5 col-sm-4 col-lg-5">'
	            +'<select class="form-control" name="costsVOList['+costCodeCounting+'].cdFk">'
	            	+'<option value="0"> 분류를 선택해주세요. </option>'
	            +'</select>'
	        +'</div>'
	        +'<div class="col-2 col-sm-3 col-lg-2">'
	            +'<input type="text" disabled="disabled" class="form-control" id="test3" name="costsVOList['+costCodeCounting+'].costMesureCal">'
	        +'</div>'
	        +'<div class="col-2 col-sm-3 col-lg-2">'
	            +'<button type="button" class="btn btn-warning btn-block" name="deleteCostDetail"> <i class="fas fa-trash"></i> 삭제 </button>'
	        +'</div>'
		+'</div>';
		
		$("#addCostDetailDiv").append(costDetaildataSet);
		
		$.ajax({
		    type       : 'GET',
		    async	   : false,
		    url        : '/products/cost_code_list.do',
		    success    : function(data){
		    	insertCostCodeList(data, 'costCode'+costCodeCounting);
		    }
		});
		
		costCodeCounting++;
	
	});
	
	//분류 코드 넣기
	function insertCostCodeList(costCodeList, costCodeListId){
		var costCodeListHTML = '<option value="0">분류 코드를 선택해주세요</option>';
		
		$.each(costCodeList, function(){
			costCodeListHTML+='<option value="'+this.ccPk+'" >'+this.ccCodeType+'</option>';
		});
		
		$("#"+costCodeListId).html(costCodeListHTML);
		
	}
	
	function insertCostDetailList(costDetailList){
		var costDetailListHTML = '<option value="0">제품을 선택해주세요</option>';
		
		$.each(costDetailList, function(){
			costDetailListHTML+='<option value="'+this.cdPk+'" data-unit-type="'+this.cdMeasure+'">'+this.cdName+', 단위[ '+this.cdMeasure+' ],  손실률 포함 원가 : '+comma(this.cdCost+(this.cdCost*this.cdLossRate/100))+' 원</option>';
		});
		
		return costDetailListHTML;
	}
	
	/*$("select[name=costCode]").change(function(){
		if($(this).val() == 0){
			alert("분류 코드를 선택해야 합니다.");
			$(this).focus();
			return false;
		}else{
			$.ajax({
			    type       : 'GET',
			    url        : '/products/cost_code_list.do',
			    success    : function(data){
			    	insertCostCodeList(data, 'costCode0');
			    }
			});
		}
	});*/
	
	//삭제버튼 누를 시 
	$(document).on('click', 'button[name=deleteCostDetail]', function(){
		$(this).parent().parent().remove();
	});
	
	//분류코드 변경시 데이터 가져오기
	$(document).on('change', 'select[name=costCode]', function(){
		var ccPk = $(this).val();
		var insertName = $(this).parent().next().find("select");
		
		if($(this).val() == 0){
			alert("분류 코드를 선택해주세요.");
			$(this).focus();
			
		}else{
			$.ajax({
			    type       : 'GET',
			    url        : '/products/cost_detail_list_by_ccpk.do',
			    data       : {"ccPk":ccPk},
			    success    : function(data){
			    	var costDetailListResult = insertCostDetailList(data);
			    	insertName.html(costDetailListResult);
			    	insertName.selectpicker('refresh');

			    }
			});
			
		}
	});
	
	$(document).on('change', 'select[name$=cdFk]', function(){
		var measureType = $(this).children("option:selected").data("unit-type");
		
		if(measureType == 'kg'){
			$(this).parent().parent().next().find("input").prop("placeholder","g 단위를 입력해주세요.");
			$(this).parent().parent().next().find("input").prop("disabled","");
			
		}else if(measureType == 'ea'){
			$(this).parent().parent().next().find("input").prop("placeholder","개수를 입력해주세요.");
			$(this).parent().parent().next().find("input").prop("disabled","");
			
		}else if(measureType == 'liter'){
			$(this).parent().parent().next().find("input").prop("placeholder","ml 단위를 입력해주세요.");
			$(this).parent().parent().next().find("input").prop("disabled","");
			
		}else{
			$(this).parent().parent().next().find("input").prop("placeholder","");
			$(this).parent().parent().next().find("input").prop("disabled","disabled");
			
		}
	});
	

}); // AND OF JQUERY