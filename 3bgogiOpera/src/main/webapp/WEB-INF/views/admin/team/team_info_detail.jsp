<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../inc/top.jsp" %>
    <%@ include file="../../inc/top_nav.jsp" %>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/jquery-ui-1.12.1/jquery-ui.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<link href='${pageContext.request.contextPath}/resources/vendor/full-calendar/css/fullcalendar.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/vendor/full-calendar/css/fullcalendar.min.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/vendor/full-calendar/css/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src="${pageContext.request.contextPath}/resources/vendor/full-calendar/js/break_calendar.js"></script>
    <script type="text/javascript">
    	$(function(){
    	
    		$.applyDatePicker=function(id){
    			$.setToday(id);
    			
    			$(id).datepicker({
    				
    				dateFormat:"yy-mm-dd",
    			    changeMonth: true,
    				dayNamesMin:['일','월','화', '수', '목', '금','토'],
    				monthNames:['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    				monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
    			}).focus(function(){
    				/* $(".ui-datepicker-prev, .ui-datepicker-next").remove(); */
    				
    			});
    			
    		}
    		
    		$.convertDate=function(date){
    			return date.getFullYear()+"-"+$.formatDate(date.getMonth()+1)+"-"+$.formatDate(date.getDate());
    		}
    		
    		$.formatDate=function(data){
    			if(data<10){
    				data="0"+data;
    			}
    			return data
    		}
    		
    		$.setToday=function(id){
    			var endtDay=$(id).val();
    			
    			//처음 페이지 로드시 현재 날짜 셋팅하기
    			if(endtDay==null || endtDay==''){
    				var today=new Date();
    				var str=$.convertDate(today);
    				
    				$(id).val(str);
    			}		
    		}
    		
    		
    		$.applyDatePicker("#adStart");
    		$.applyDatePicker("#adEnd");
    		
    		$("#adType").change(function(){
    			if($(this).val() == 1){
    				
    				$(".calendarDiv").show();
    				$(".adWeeksDiv").hide();
    				
    			}else if($(this).val()==2){
    				$(".calendarDiv").hide();
    				$(".adWeeksDiv").show();
    			}
    			
    		});
    		
    		$("#adStart").change(function(){
    			var adEnd = new Date($("#adEnd").val());
    			var refDate = new Date();
    			refDate.setHours(0);
    			refDate.setMinutes(0);
    			refDate.setSeconds(0);
    			
    			var toDay = new Date($(this).val());
    			
    			if(toDay < refDate){
    				alert("휴가를 오늘보다 전 일에 신청할 수 없습니다. 오늘로 설정합니다.");
	    			$(this).val(formatDate(refDate));
	    			$(this).focus();
	    			return false;
    			}else if(toDay > adEnd){
    				alert("휴가 종료일이 시작일보다 값이 작아 재 설정합니다.");
    				$("#adEnd").val(formatDate(toDay));
    				$("#adEnd").focus();
    				return false;
    			}
    			
    			
    		});
    		
    		$("#adEnd").change(function(){
    			
    			var adStart = new Date($("#adStart").val());
    			
    			var toDay = new Date($(this).val());
    			
    			if(toDay < adStart){
    				alert("휴가 시작일보다 전 일에 신청할 수 없습니다.");
	    			$(this).val(formatDate(adStart));
	    			$(this).focus();
	    			return false;
    			}
    			
    		});
    		
    		$("button[name=deleteDaysoff]").click(function(){
    			var adminPk = $("input[name=adminFk]").val();
    			var updateType = 2;
    			var adPk = $(this).val();
    			
    			location.href="<c:url value='/admin/team/admin_daysoff_change.do?adminPk="+adminPk+"&updateType="+updateType+"&adPk="+adPk+"'/>";
    			
    		});
    		
			$("button[name=permisionDaysoff]").click(function(){
				var adminPk = $("input[name=adminFk]").val();
    			var updateType = 1;
    			var adPk = $(this).val();
    			
    			location.href="<c:url value='/admin/team/admin_daysoff_change.do?adminPk="+adminPk+"&updateType="+updateType+"&adPk="+adPk+"'/>";
    			
    		});
			
			$("#formatYear").change(function(){
				var formatYear = $(this).val();
				
				if(formatYear == null){
					
					alert('년도를 선택해주세요.');
					
					event.preventDefault();
					
					return false;
				}
				
				var adminPk = $("input[name=adminFk]").val();
				var formatYear = $("#formatYear").val();
				
				$.ajax({
					url:'<c:url value="/admin/team/ajax_aamonth.do"/>',
					data:{
						"adminPk":adminPk,
						"formatYear":formatYear
					},
					success:function(data){
						Pace.start();
						var formatMonthList = "<option>월을 선택해주세요.</option>";
						
						$.each(data, function(idx, items){
							
							formatMonthList+="<option value='"+this.formatMonth+"'>"+this.formatMonth+"</option>";
							
						});
						
						$("#formatMonth").html(formatMonthList);
						Pace.stop();
						
					},
					error:function(xhr, status, error){
						alert("세선이 종료되었거나 권한이 없습니다. ");
						location.href="<c:url value='/login.do'/>";
						Pace.stop();
					}
					
				});
				
			});
			
			
			$("#formatMonth").change(function(){
				var formatMonth = $(this).val();
				
				if(formatMonth == null){
					
					alert('월을 선택해주세요.');
					
					event.preventDefault();
					
					return false;
				}
				
				var adminPk = $("input[name=adminFk]").val();
				var formatYear = $("#formatYear").val();
				var formatMonth = $("#formatMonth").val();
				
				$.ajax({
					url:'<c:url value="/admin/team/ajax_admin_breaks.do"/>',
					data:{
						"adminPk":adminPk,
						"formatYear":formatYear,
						"formatMonth":formatMonth
					},
					success:function(data){
						var toDayFormat = formatDate(new Date());
						var adminBreaksList = "";
						
						$.each(data, function(idx, items){
							
							var dcDates = formatDate(this.dcDate);
							
							adminBreaksList += "<tr";
							
							if( toDayFormat == dcDates) adminBreaksList+= "style='color:red;'";
								
							adminBreaksList +=">"
								+"<td>"+dcDates+"</td>"
								+"<td>";	
							
							if(this.aaWorkStart != null && this.workBreaks != null) adminBreaksList += "[휴무 중 출근]"+formatDate_HH_MM(this.aaWorkStart);
							if(this.aaWorkStart != null && this.workBreaks == null) adminBreaksList += formatDate_HH_MM(this.aaWorkStart);			
							if(this.aaWorkStart == null && dcDates > toDayFormat && this.workBreaks != null && this.workBreaks == '휴가') adminBreaksList += "휴가";
							if(this.aaWorkStart == null && dcDates > toDayFormat && this.workBreaks != null && this.workBreaks != '휴가') adminBreaksList += this.workBreaks;			
							if(this.aaWorkStart == null && dcDates > toDayFormat && this.workBreaks == null) adminBreaksList += "-";
							if(this.aaWorkStart == null && dcDates == toDayFormat && this.workBreaks != null) adminBreaksList += "[휴무]";
							if(this.aaWorkStart == null && dcDates == toDayFormat && this.workBreaks == null) adminBreaksList += "출근 전";
							if(this.aaWorkStart == null && dcDates < toDayFormat && this.workBreaks == null) adminBreaksList += "데이터 없음";
							if(this.aaWorkStart == null && dcDates < toDayFormat && this.workBreaks != null) adminBreaksList += this.workBreaks;
							
							adminBreaksList += "</td>"
								+"<td>";
							
							
								if(this.aaWorkStart == null && this.aaWorkEnd != null && dcDates == toDayFormat && this.workBreaks == null) adminBreaksList += "출근 전";
								if(this.aaWorkStart == null && this.aaWorkEnd != null && dcDates == toDayFormat && this.workBreaks != null) adminBreaksList += this.workBreaks;
								if(this.aaWorkStart != null && this.aaWorkEnd != null && dcDates == toDayFormat && this.workBreaks == null) adminBreaksList += "퇴근 전";
								if(this.aaWorkStart != null && this.aaWorkEnd != null  && this.workTime != null) adminBreaksList += formatDate_HH_MM(this.aaWorkEnd);
								if(this.aaWorkStart != null && this.aaWorkEnd != null  && this.workTime != null && dcDates < toDayFormat && this.workTime == null) adminBreaksList +="임의 계산";
								if(this.aaWorkStart == null && dcDates > toDayFormat && this.workBreaks == null) adminBreaksList +="-";
								if(this.aaWorkStart == null && dcDates > toDayFormat && this.workBreaks != null) adminBreaksList += this.workBreaks;
								if(this.aaWorkStart == null && dcDates < toDayFormat && this.workBreaks == null) adminBreaksList += "데이터 없음";
								if(this.aaWorkStart == null && dcDates < toDayFormat && this.workBreaks != null) adminBreaksList += this.workBreaks;
										
								adminBreaksList += "</td>"
									+"<td>";
									
								if(this.aaWorkStart != null && this.aaWorkEnd != null && this.workTime != null) adminBreaksList += this.workTime;
								if(this.aaWorkStart != null && this.aaWorkEnd != null && this.workTime == null && dcDates < toDayFormat) adminBreaksList += formatDate_HH_MM(this.aaWorkEnd);
								if(this.aaWorkStart == null && this.aaWorkEnd == null && dcDates != toDayFormat) adminBreaksList += "-";
								if(this.aaWorkStart != null && this.aaWorkEnd == null && dcDates == toDayFormat) adminBreaksList += "-";
										
								adminBreaksList +="</td></tr>";
							
						});
						
						$(".adminBreaksTable").html(adminBreaksList);
						
					},
					error:function(xhr, status, error){
						alert("세선이 종료되었거나 권한이 없습니다. 로그인 창으로 이동합니다.");
						location.href="<c:url value='/login.do'/>";
					}
					
				});
				
			});
			
			
    		

    	});
    </script>
    <style type="text/css">
    	
    </style>
        <!-- page content -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="influence-profile">
                <div class="container-fluid dashboard-content ">
                    <!-- ============================================================== -->
                    <!-- pageheader -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h3 class="mb-2"> 팀원 기록 상세 확인 </h3>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link"> 팀원 </a></li>
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link"> 근태관리 </a></li>
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link"> 팀원상세확인 </a></li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- content -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <!-- ============================================================== -->
                        <!-- profile -->
                        <!-- ============================================================== -->
                        <div class="col-xl-3 col-lg-3 col-md-5 col-sm-12 col-12">
                            <!-- ============================================================== -->
                            <!-- card profile -->
                            <!-- ============================================================== -->
                            <div class="card">
                                <div class="card-body">
                                    <div class="user-avatar text-center d-block">
                                        <img src="${pageContext.request.contextPath}/resources/images/3bgogi_icon.png" alt="User Avatar" class="rounded-circle user-avatar-xxl">
                                    </div>
                                    <div class="text-center">
                                        <h2 class="font-24 mb-0"> ${adminVO.adminName }</h2>
                                    </div>
                                </div>
                                <div class="card-body border-top" style="text-align: center;">
                                    <h3 class="font-16"> 연락처 </h3>
                                    <div class="">
	                                    <ul class="list-unstyled mb-0">
	                                        <li class="mb-0"><i class="fas fa-fw fa-phone mr-2"></i> ${adminVO.adminPhone }</li>
	                                    </ul>
	                                    <ul class="list-unstyled mb-0">
	                                        <li class="mb-0"><i class="fas fa-fw fa-home mr-2"></i> ${adminVO.adminAddress }</li>
	                                    </ul>
	                                    <ul class="list-unstyled mb-0">
	                                        <li class="mb-0"><i class="fas fa-fw fa-bell mr-2"></i> 아침 출근 시각 : ${adminVO.adminWorktime }</li>
	                                    </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- end card profile -->
                            <!-- ============================================================== -->
                        </div>
                        <!-- ============================================================== -->
                        <!-- end profile -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- campaign data -->
                        <!-- ============================================================== -->
                        <div class="col-xl-9 col-lg-9 col-md-7 col-sm-12 col-12">
                            <!-- ============================================================== -->
                            <!-- campaign tab one -->
                            <!-- ============================================================== -->
                            <div class="influence-profile-content pills-regular">
                                <ul class="nav nav-pills mb-3 nav-justified" id="pills-tab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="pills-campaign-tab" data-toggle="pill" href="#pills-campaign" role="tab" aria-controls="pills-campaign" aria-selected="true">출결기록</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="pills-packages-tab" data-toggle="pill" href="#pills-packages" role="tab" aria-controls="pills-packages" aria-selected="false">휴무</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="pills-review-tab" data-toggle="pill" href="#pills-review" role="tab" aria-controls="pills-review" aria-selected="false">달력</a>
                                    </li>
                                    
                                    <li class="nav-item">
                                        <a class="nav-link" id="pills-msg-tab" data-toggle="pill" href="#pills-msg" role="tab" aria-controls="pills-msg" aria-selected="false">프로젝트</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="pills-msg-tab" data-toggle="pill" href="#pills-msg" role="tab" aria-controls="pills-msg" aria-selected="false">로그</a>
                                    </li>
                                </ul>
                                <div class="tab-content" id="pills-tabContent">
                                    <div class="tab-pane fade show active" id="pills-campaign" role="tabpanel" aria-labelledby="pills-campaign-tab">
                                        <div class="row">
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                                <div class="section-block">
                                                    <h3 class="section-title"> 출결 기록 확인 </h3>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                                <div class="card">
                                                    <div class="card-body">
				                                        <h3 class="font-16"> 년도 선택 </h3>
				                                        <select name="formatYear" id="formatYear" class="form-control">
				                                        	<option>년도를 선택해주세요.</option>
				                                        	<c:forEach var="datesYearlist" items="${datesYearList }">				                                        	
					                                            <option value="${datesYearlist.formatYear }">${datesYearlist.formatYear }</option>
				                                        	</c:forEach>
				                                        </select>
				                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                                                <div class="card">
                                                    <div class="card-body">
				                                        <h3 class="font-16"> 월 선택 </h3>
				                                        <select name="formatMonth" id="formatMonth" class="form-control">
				                                        	<option>년도를 선택해주세요.</option>
				                                        </select>
				                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-body">
                                                <table class="table table-striped table-bordered first">
														<thead style="text-align: center;">
															<tr>
																<th>일 자</th>
																<th>출근</th>
																<th>퇴근</th>
																<th>근무시간</th>
															</tr>
														</thead>
														<tbody class="adminBreaksTable" style="text-align: center;">
															<jsp:useBean id="toDay" class="java.util.Date"/>
															<fmt:formatDate var="toDayFormat" value="${toDay }" pattern="yyyy-MM-dd"/>
															<c:if test="${!empty aaList }">
																<c:forEach var="aalist" items="${aaList }">
																	<fmt:formatDate var="dcDates" value="${aalist.dcDate }" pattern="yyyy-MM-dd"/>
																	<tr
																		<c:if test="${toDayFormat == dcDates }">
																			style="color:red;"
																		</c:if>
																	>
																		<td>${dcDates }</td>
																		<td>
																			<c:if test="${!empty aalist.aaWorkStart and !empty aalist.workBreaks}">
																				[휴무 중 출근]<fmt:formatDate value="${aalist.aaWorkStart }" pattern="HH:mm"/>
																			</c:if>
																			<c:if test="${!empty aalist.aaWorkStart and empty aalist.workBreaks}">
																				<fmt:formatDate value="${aalist.aaWorkStart }" pattern="HH:mm"/>
																			</c:if>
																			<c:if test="${empty aalist.aaWorkStart and dcDates > toDayFormat and !empty aalist.workBreaks and aalist.workBreaks == '휴가'}">
																				[휴가]
																			</c:if>
																			<c:if test="${empty aalist.aaWorkStart and dcDates > toDayFormat and !empty aalist.workBreaks and aalist.workBreaks != '휴가'}">
																				${aalist.workBreaks }
																			</c:if>
																			<c:if test="${empty aalist.aaWorkStart and dcDates > toDayFormat and empty aalist.workBreaks}">
																				-
																			</c:if>
																			<c:if test="${empty aalist.aaWorkStart and dcDates == toDayFormat and !empty aalist.workBreaks}">
																				[휴무]
																			</c:if>
																			<c:if test="${empty aalist.aaWorkStart and dcDates == toDayFormat and empty aalist.workBreaks}">
																				출근 전
																			</c:if>
																			<c:if test="${empty aalist.aaWorkStart and dcDates < toDayFormat and empty aalist.workBreaks}">
																				데이터 없음
																			</c:if>
																			<c:if test="${empty aalist.aaWorkStart and dcDates < toDayFormat and !empty aalist.workBreaks}">
																				${aalist.workBreaks }
																			</c:if>
																		</td>
																		<td>
																			<c:if test="${empty aalist.aaWorkStart and !empty aalist.aaWorkEnd and dcDates == toDayFormat and empty aalist.workBreaks}">
																				출근 전
																			</c:if>
																			<c:if test="${empty aalist.aaWorkStart and empty aalist.aaWorkEnd and dcDates == toDayFormat and !empty aalist.workBreaks}">
																				${aalist.workBreaks }
																			</c:if>
																			<c:if test="${!empty aalist.aaWorkStart and !empty aalist.aaWorkEnd and dcDates == toDayFormat and empty aalist.workTime}">
																				퇴근 전
																			</c:if>
																			<c:if test="${!empty aalist.aaWorkStart and !empty aalist.aaWorkEnd and !empty aalist.workTime}">
																				<fmt:formatDate value="${aalist.aaWorkEnd }" pattern="HH:mm"/>
																			</c:if>
																			
																			<c:if test="${!empty aalist.aaWorkStart and !empty aalist.aaWorkEnd and dcDates < toDayFormat  and empty aalist.workTime}">
																				임의 계산
																			</c:if>
																			<c:if test="${empty aalist.aaWorkStart and dcDates > toDayFormat  and empty aalist.workBreaks}">
																				-
																			</c:if>
																			<c:if test="${empty aalist.aaWorkStart and dcDates > toDayFormat  and !empty aalist.workBreaks}">
																				${aalist.workBreaks }
																			</c:if>
																			<c:if test="${empty aalist.aaWorkStart and aalist.dcDate < toDay and empty aalist.workBreaks}">
																				데이터 없음
																			</c:if>
																			<c:if test="${empty aalist.aaWorkStart and dcDates < toDayFormat and !empty aalist.workBreaks}">
																				${aalist.workBreaks }
																			</c:if>
																		</td>
																		<td>
																			<c:if test="${!empty aalist.aaWorkStart and !empty aalist.aaWorkEnd and !empty aalist.workTime}">
																				${aalist.workTime}
																			</c:if>
																			<c:if test="${!empty aalist.aaWorkStart and !empty aalist.aaWorkEnd and empty aalist.workTime and dcDates < toDayFormat}">
																				<fmt:formatDate value="${aalist.aaWorkEnd }" pattern="HH:mm"/>
																			</c:if>
																			<c:if test="${empty aalist.aaWorkStart and empty aalist.aaWorkEnd and dcDates != toDayFormat}">
																				-
																			</c:if>
																			<c:if test="${!empty aalist.aaWorkStart and empty aalist.workTime and dcDates == toDayFormat}">
																				-
																			</c:if>
																		</td>
																	</tr>
																</c:forEach>
															</c:if>
															<c:if test="${empty aaList }">
																<tr>
																	<td colspan="4"> 출퇴근 기록이 존재하지 않습니다. </td>
																</tr>
															</c:if>
														</tbody>
													</table>
                                            </div>
                                        </div>
                                        <nav aria-label="Page navigation example" style="text-align: center;">
                                            <ul class="pagination" style="display: -webkit-inline-box;">
                                                <li class="page-item"><a class="page-link" href="#">이전</a></li>
                                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                                <li class="page-item"><a class="page-link " href="#">2</a></li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#">다음</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <div class="tab-pane fade" id="pills-packages" role="tabpanel" aria-labelledby="pills-packages-tab">
                                        <div class="card">
                                            <h5 class="card-header"> 휴무 추가하기 </h5>
                                            <div class="card-body">
                                                <form name="daysoffForm" method="post" action="<c:url value='/admin/team/team_info_detail.do'/>">
                                                    <div class="row">
                                                        <div class="offset-xl-3 col-xl-6 offset-lg-3 col-lg-3 col-md-12 col-sm-12 col-12 p-4">
                                                        	<div class="form-group">
                                                                <label for="email">휴무명</label>
                                                                <input type="text" class="form-control form-control-lg" id="adTitle" name="adTitle" placeholder="휴가 혹은 휴무 명을 입력해주세요">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="adType"> 종류 </label>
                                                                <select class="form-control" id="adType" name="adType">                                                                	
                                                                	<option value="1">휴가</option>
                                                                	<option value="2">고정적휴무</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group adWeeksDiv" style="display: none;">
                                                                <label for="adWeeks"> 요일 선택 </label>
                                                                <select class="form-control" id="adWeeks" name="adWeeks">
                                                                	<c:set var="weeks" value="${fn:split('월요일,화요일,수요일,목요일,금요일,토요일,일요일',',') }"/>
                                                                	<c:set var="weekCount" value="0"/>
                                                                	<c:set var="dupliCount" value="0"/>
                                                                	<c:forEach var="weekArray" items="${weeks }" varStatus="idx">
                                                                		<c:set var="dupliCount" value="0"/>
                                                                		<c:forEach var="weekAdList" items="${adList }">
                                                                			<c:if test="${weekAdList.adWeeks == idx.index and weekAdList.adType == 2 }">
                                                                				<c:set var="dupliCount" value="${dupliCount + 1 }"/>
                                                                			</c:if>
                                                                		</c:forEach>
                                                                		<c:if test="${dupliCount == 0 }">
                                                                			<option value="${idx.index }">${weekArray }</option>
                                                                		</c:if>
                                                                	</c:forEach>     	
                                                                </select>
                                                            </div>
                                                            <div class="form-row calendarDiv">
                                                            	<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 mb-2">                                                            	
	                                                                <label for="adStart">휴가 시작일</label>
	                                                                <input type="text" class="form-control form-control-lg" id="adStart" name="adStart" placeholder="">
                                                            	</div>
                                                            	<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 mb-2">      
                                                            		<label for="adEnd">휴가 종료일</label>                                                      	
	                                                                <input type="text" class="form-control form-control-lg" id="adEnd" name="adEnd" placeholder="">
                                                            	</div>
                                                            </div>
                                                            <input type="hidden" value="${adminVO.adminPk }" name="adminFk">
                                                            <button type="submit" class="btn btn-primary float-right"> 휴무 신청하기 </button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="card">
                                        	<h5 class="card-header"> 고정휴무일 </h5>
                                            <div class="card-body">
                                                <table class="table table-striped table-bordered first">
														<thead style="text-align: center;">
															<tr>
																<th> 요일 </th>
																<th> 승인 여부 </th>
																<sec:authorize access="hasRole('ROLE_DEVELOPER')">
																<th>승인 및 삭제</th>
																</sec:authorize>
															</tr>
														</thead>
														<tbody style="text-align: center;">
															<c:if test="${!empty adList }">															
																<c:forEach var="adlist" items="${adList }">
																	<c:if test="${adlist.adType == 2 }">																	
																		<tr>
																			<td> ${adlist.adTitle } </td>
																			<td>
																				<c:if test="${adlist.adFlag eq true}">
																					승인
																				</c:if>
																				<c:if test="${adlist.adFlag ne true}">
																					승인 대기중
																				</c:if>
																			</td>
																			<sec:authorize access="hasRole('ROLE_DEVELOPER')">
																				<td>
																					<c:if test="${adlist.adFlag eq true}">
																						<button type="button" class="btn btn-warning" value="${adlist.adPk }" name="deleteDaysoff">삭제</button>
																					</c:if>
																					
																					<c:if test="${adlist.adFlag ne true}">
																						<button type="button" class="btn btn-primary" value="${adlist.adPk }" name="permisionDaysoff">허가</button>
																					</c:if>
																				</td>
																			</sec:authorize>
																		</tr>
																	</c:if>
																</c:forEach>
															</c:if>
															<c:if test="${empty adList }">															
																<tr>
																	<td colspan="2"> 휴무 데이터가 존재하지 않습니다. </td>
																</tr>
															</c:if>
														</tbody>
													</table>
                                            </div>
                                        </div>
                                        <div class="card">
                                        	<h5 class="card-header"> 휴가 및 유동적 휴일 </h5>
                                            <div class="card-body">
                                                <table class="table table-striped table-bordered first">
														<thead style="text-align: center;">
															<tr>
																<th> 날 짜 </th>
																<th> 휴가명 </th>
																<th> 승인 여부 </th>
																<sec:authorize access="hasRole('ROLE_DEVELOPER')">
																	<th>승인 및 삭제</th>
																</sec:authorize>
															</tr>
														</thead>
														<tbody style="text-align: center;">
															<c:if test="${!empty adList }">															
																<c:forEach var="adlist" items="${adList }">
																	<c:if test="${adlist.adType == 1 }">																	
																		<tr>
																			<td>
																				<fmt:formatDate value="${adlist.adStart }" pattern="yyyy-MM-dd"/> ~ 
																				<fmt:formatDate value="${adlist.adEnd }" pattern="yyyy-MM-dd"/>
																			</td>
																			<td> ${adlist.adTitle } </td>
																			<td>
																				<c:if test="${adlist.adFlag eq true}">
																					승인
																				</c:if>
																				<c:if test="${adlist.adFlag ne true}">
																					승인 대기중
																				</c:if>
																			</td>
																			<sec:authorize access="hasRole('ROLE_DEVELOPER')">
																				<td>
																					<c:if test="${adlist.adFlag eq true}">
																						<button type="button" class="btn btn-warning" value="${adlist.adPk }" name="deleteDaysoff">삭제</button>
																					</c:if>
																					
																					<c:if test="${adlist.adFlag ne true}">
																						<button type="button" class="btn btn-primary" value="${adlist.adPk }" name="permisionDaysoff">허가</button>
																					</c:if>
																				</td>
																			</sec:authorize>
																		</tr>
																	</c:if>
																</c:forEach>
															</c:if>
															<c:if test="${empty adList }">															
																<tr>
																	<td colspan="2"> 휴무 데이터가 존재하지 않습니다. </td>
																</tr>
															</c:if>
														</tbody>
													</table>
                                            </div>
                                        </div>
                                    </div>
                                    
									<div class="tab-pane fade" id="pills-review" role="tabpanel" aria-labelledby="pills-review-tab">
										<div class="card">
											<div class="card-body">
												<div id='calendar1'></div>
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="pills-msg" role="tabpanel" aria-labelledby="pills-msg-tab">
                                        <div class="card">
                                            <h5 class="card-header">Send Messages</h5>
                                            <div class="card-body">
                                                <form>
                                                    <div class="row">
                                                        <div class="offset-xl-3 col-xl-6 offset-lg-3 col-lg-3 col-md-12 col-sm-12 col-12 p-4">
                                                            <div class="form-group">
                                                                <label for="name">Your Name</label>
                                                                <input type="text" class="form-control form-control-lg" id="name" placeholder="">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="email">Your Email</label>
                                                                <input type="email" class="form-control form-control-lg" id="email" placeholder="">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="subject">Subject</label>
                                                                <input type="text" class="form-control form-control-lg" id="subject" placeholder="">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="messages">Messgaes</label>
                                                                <textarea class="form-control" id="messages" rows="3"></textarea>
                                                            </div>
                                                            <button type="submit" class="btn btn-primary float-right">Send Message</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- end campaign tab one -->
                            <!-- ============================================================== -->
                        </div>
                        <!-- ============================================================== -->
                        <!-- end campaign data -->
                        <!-- ============================================================== -->
                    </div>
                </div>
            </div>
        <!-- /page content -->
        
        
    <script src='${pageContext.request.contextPath}/resources/vendor/full-calendar/js/moment.min.js'></script>
    <script src='${pageContext.request.contextPath}/resources/vendor/full-calendar/js/fullcalendar.js'></script>
    <script src='${pageContext.request.contextPath}/resources/vendor/full-calendar/js/jquery-ui.min.js'></script>
    
        <%@ include file="../../inc/bottom.jsp" %>