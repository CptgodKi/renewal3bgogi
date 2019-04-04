jQuery(document).ready(function($) {
	
	$('.demo')
	.each(
			function() {
				$(this)
						.minicolors(
								{
									control : $(this).attr(
											'data-control')
											|| 'hue',
									defaultValue : $(this)
											.attr(
													'data-defaultValue')
											|| '',
									format : $(this).attr(
											'data-format')
											|| 'hex',
									keywords : $(this).attr(
											'data-keywords')
											|| '',
									inline : $(this).attr(
											'data-inline') === 'true',
									letterCase : $(this).attr(
											'data-letterCase')
											|| 'lowercase',
									opacity : $(this).attr(
											'data-opacity'),
									position : $(this).attr(
											'data-position')
											|| 'bottom left',
									swatches : $(this).attr(
											'data-swatches') ? $(
											this).attr(
											'data-swatches')
											.split('|')
											: [],
									change : function(value,
											opacity) {
										if (!value)
											return;
										if (opacity)
											value += ', '
													+ opacity;
										if (typeof console === 'object') {
											console.log(value);
										}
									},
									theme : 'bootstrap'
								});
			});//색상

    
	$('#proAlarmtDate').datetimepicker();
	
	$('.deleteTag').each(function(){
			$(this).hide();
	});
	
	$(".projectTag").hover(function(){
		$(this).find(".deleteTag").show();
	}, function(){
		$(this).find(".deleteTag").hide();
	});
	
	//업무 완료 사항 상단 검색 기능
	$("#searchProject").keyup(function(){
		
		var searchProejctVal =$("#searchProject").val();
		
		if(searchProejctVal != null || searchProejctVal  != ''){
			
			$(".msg").each(function(){
				
				if($(this).text().includes(searchProejctVal)){
					$(this).parent().parent().show();
				}else{
					$(this).parent().parent().hide();
				}
				
			});
			
		}else{
			
			$(".msg").each(function(){
				$(this).parent().parent().show();
			});
			
		}
		
		
	});
	
}); // AND OF JQUERY
