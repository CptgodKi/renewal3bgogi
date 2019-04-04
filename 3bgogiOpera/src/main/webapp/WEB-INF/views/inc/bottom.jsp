<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <div class="footer" style="display: none;">
                
            </div>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- bootstap bundle js -->
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js -->
    <script src="${pageContext.request.contextPath}/resources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="${pageContext.request.contextPath}/resources/libs/js/main-js.js"></script>
    <!-- chart chartist js -->
    <script src="${pageContext.request.contextPath}/resources/vendor/charts/chartist-bundle/chartist.min.js"></script>
    <!-- color picker js -->
    <script src="${pageContext.request.contextPath}/resources/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap-colorpicker/jquery-asColor/dist/jquery-asColor.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap-colorpicker/jquery-asGradient/dist/jquery-asGradient.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap-colorpicker/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap-colorpicker/%40claviska/jquery-minicolors/jquery.minicolors.min.js"></script>
	<div class="modal fade" id="projectModal" tabindex="-1" role="dialog" aria-labelledby="projectModalLabel" aria-hidden="true">
		<div class="modal-dialog renewal-modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header renewal-modal-header">
					<a href="#" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</a>
				</div>
				<div class="modal-body renewal-modal-dody">
					<div class="container-fluid">
						<aside class="page-aside renewal-page-aside">
		                    <div class="aside-content renewal-aside-content">
		                        <div class="aside-header renewal-page-aside-header">
		                            <span class="title renewal-page-modal-title" style="color:#ff6161;">
		                            	리뉴얼 업무 페이지
		                            </span>
		                            <p class="description renewal-page-description">언제 다 완성시킬 수 있을까 현기증나네요</p>
		                            <div class="btn-group tag-list">
										<span class="badge badge-light projectTag">#업무페이지 <span class="deleteTag">x</span></span>&nbsp;
										<span class="badge badge-light projectTag">#디자인 <span class="deleteTag">x</span></span>&nbsp;
										<span class="badge badge-light projectTag">#업무 <span class="deleteTag">x</span></span>&nbsp;
										<span class="badge badge-light projectTag">#분석 <span class="deleteTag">x</span></span>
									</div>
		                        </div>
		                        <div class="form-group">
									<label for="hue-demo"> 업무 태그 등록 </label>
									<div class="input-group">								
										<input type="text" class="form-control">
										<div class="input-group-append">
											<button type="button" class="btn btn-primary">등록</button>
										</div>
									</div> 
								</div>
								<div class="form-group">
									<label for="hue-demo"> 업무명 색상 변경 </label> <input type="text"
										id="hue-demo" class="form-control demo" data-control="hue"
										value="#ff6161">
								</div>
								<div class="form-group">
									<label for="proAlarmtDate"> 업무 시작일 등록 </label> <input type="text"
										id="proAlarmtDate" class="form-control">
								</div>
								<div class="form-group">
									<label
										class="custom-control custom-checkbox custom-control-inline">
										<input type="checkbox" checked="checked"
										class="custom-control-input"><span
										class="custom-control-label">상단 알람 여부</span>
									</label> <label
										class="custom-control custom-checkbox custom-control-inline">
										<input type="checkbox" class="custom-control-input"><span
										class="custom-control-label">태그 검색 여부</span>
									</label>
								</div>
							<div class="aside-nav collapse">
		                            <ul class="nav">
		                                <li><a class="nav-link active" id="tab-outline-one" data-toggle="tab" href="#outline-one" role="tab" aria-controls="home" aria-selected="true"><span class="icon"><i class="fas fa-fw fa-inbox"></i></span>완료사항<span class="badge badge-primary float-right">5 개</span></a></li>
		                                <li><a class="nav-link" id="tab-outline-two" data-toggle="tab" href="#outline-two" role="tab" aria-controls="profile" aria-selected="false"><span class="icon"><i class="fas fa-fw  fa-envelope"></i></span>댓글 <span class="badge badge-primary float-right">8 개</span></a></li>
		                                <li><a class="nav-link" id="tab-outline-three" data-toggle="tab" href="#outline-three" role="tab" aria-controls="contact" aria-selected="false"><span class="icon"><i class="fas fa-cog"></i></span>업무 추가사항 (관리자, 업무 시작자만 설정할 수 있게)</a></li>
		                            </ul><span class="title">업무 대상자</span>
		                            <ul class="nav nav-pills nav-stacked">
		                                <li><a href="#"><i class="m-r-10 mdi mdi-label text-secondary"></i>전기찬</a></li>
		                                <li><a href="#"><i class="m-r-10 mdi mdi-label text-secondary"></i>박명훈</a></li>
		                                <li><a href="#"> <i class="m-r-10 mdi mdi-label text-secondary"></i>김보라</a></li>
		                            </ul>
		                        </div>
		                    </div>
		                </aside>
		                
		                
		                <!-- 업무 상세보기 관련 -->
		                <div class="main-content container-fluid p-0 tab-content" style="float:left; width:77%; margin-left: 0;">
		                	<!-- 업무 관련 -->
							<div class="tab-pane fade show active" id="outline-one" role="tabpanel" aria-labelledby="tab-outline-one">
								<div class="email-inbox-header" style="padding-bottom: 0;">
									<div class="row">
										<div class="col-lg-12">
											<div class="email-search">
												<div class="input-group input-search">
													<input class="form-control" id="searchProject" type="text"
														placeholder="완료 사항 검색"><span
														class="input-group-btn">
														<button class="btn btn-secondary" type="button">
															<i class="fas fa-search"></i>
														</button>
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="email-filters" style="border-top: none;">
									<div class="email-filters-left">
										<label class="custom-control custom-checkbox be-select-all">
											<input class="custom-control-input chk_all" type="checkbox"
											name="chk_all"><span class="custom-control-label"></span>
										</label>
										<div class="btn-group">
											<button class="btn btn-light" type="button">숨김 보이기</button>
											<button class="btn btn-light" type="button">파일 숨기기</button>
											<button class="btn btn-light" type="button">파일 삭제</button>
											<button class="btn btn-light active" type="button">
												중요 사항만 보기</button>
										</div>
										<div class="btn-group">
											<button class="btn btn-light dropdown-toggle"
												data-toggle="dropdown" type="button">
												정렬하기 <span class="caret"></span>
											</button>
											<div class="dropdown-menu dropdown-menu-right" role="menu">
												<a class="dropdown-item" href="#"> 등록일 올림</a> <a
													class="dropdown-item" href="#"> 등록일 내림</a> <a
													class="dropdown-item" href="#"> 파일 여부 올림 </a> <a
													class="dropdown-item" href="#"> 파일 여부 내림 </a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#"> 감추기 올림</a> <a
													class="dropdown-item" href="#"> 감추기 내림</a>
											</div>
										</div>
									</div>
									<div class="email-filters-right">
										<span class="email-pagination-indicator">1-50 of 253</span>
										<div class="btn-group email-pagination-nav">
											<button class="btn btn-light" type="button">
												<i class="fas fa-angle-left"></i>
											</button>
											<button class="btn btn-light" type="button">
												<i class="fas fa-angle-right"></i>
											</button>
										</div>
									</div>
								</div>
								<div class="email-list renewal-list-content">
									<div class="email-list-item email-list-item--unread">
										<div class="email-list-actions">
											<label class="custom-control custom-checkbox"> <input
												class="custom-control-input checkboxes" type="checkbox"
												value="1" id="one"><span class="custom-control-label"></span>
											</label><a class="favorite active" href="#"><span><i
													class="fas fa-star"></i></span></a>
										</div>
										<div class="email-list-detail">
											<span class="date float-right"><span class="icon"><i
													class="fas fa-paperclip"></i> </span>2019-02-27</span><span class="from">
												전기찬 </span>
											<p class="msg">네이버 엑셀 주문서를 읽어서 데이터베이스에 중복값 없이 등록하는 기능 완료
												첨부파일(주문서 테스트 파일)</p>
										</div>
									</div>
									<div class="email-list-item email-list-item--unread">
										<div class="email-list-actions">
											<label class="custom-control custom-checkbox">
												<input class="custom-control-input checkboxes" type="checkbox" value="2" id="two">
												<span class="custom-control-label"></span>
											</label>
											<a class="favorite active" href="#">
												<span>
													<i class="fas fa-star"></i>
												</span>
											</a>
										</div>
										<div class="email-list-detail">
											<span class="date float-right"></span>
												<span class="date float-right">
													<span class="icon">
														<i class="fas fa-paperclip"></i>
													</span> 2019-02-20
												</span>
											<span class="from">전기찬 </span>
											<p class="msg">상품 등록과 동시에 옵션의 등록 및 원가 매칭 완료 첨부파일(원가 가격표)</p>
										</div>
									</div>
									<div class="email-list-item email-list-item--unread">
										<div class="email-list-actions">
											<label class="custom-control custom-checkbox">
												<input class="custom-control-input checkboxes" type="checkbox" value="5" id="five">
												<span class="custom-control-label"></span>
											</label>
											<a class="favorite" href="#">
												<span>
													<i class="fas fa-star"></i>
												</span>
											</a>
										</div>
										<div class="email-list-detail"  data-toggle="collapse" data-target="#collapseSeven" aria-expanded="true" aria-controls="collapseSeven">
											<span class="date float-right"></span>
												<span class="date float-right">
													<span class="icon">
														<i class="fas fa-image"></i>
													</span> 2019-02-20
												</span>
											<span class="from">
												전기찬 </span>
											<p class="msg">데이터 베이스, 로그인, 회원 보안 작업 완료</p>
										</div>
										<br>
									</div>
									<div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion3" style="border: 1px solid #e6e6f2;">
										<img class=""
											src="${pageContext.request.contextPath}/resources/images/3bgogi_logo.png"
											alt="Card image cap" style="display: block; margin: 0px auto;">
										<div class="card-body">
											<p style="text-align: right">
												<a download
													href="${pageContext.request.contextPath}/resources/images/3bgogi_logo.png"><i
													class="fas fa-download "></i></a>
											</p>
										</div>
									</div>
								</div>
								<div class="email-list-item email-list-item-unread"
									style="border-bottom: none;">
									<form class="chat-form">
										<textarea class="form-control"
											placeholder="완료사항을 적은 뒤 #을 쓰고 상세 사항을 적어주세요" rows="1"></textarea>
										<div class="chat-form-buttons">
											<button type="button" class="btn btn-link">
												<i class="far fa-smile"></i>
											</button>
											<div class="custom-file custom-file-naked">
												<input type="file" class="custom-file-input" id="customFile">
												<label class="custom-file-label" for="customFile"> <i
													class="fas fa-paperclip"></i>
												</label>
											</div>
										</div>
									</form>
								</div>
							</div>
							<!-- 업무 관련 끝 -->
							<!-- 댓글 관련 시작-->
		                    <div class="tab-pane fade" id="outline-two" role="tabpanel" aria-labelledby="tab-outline-two">
			                    <div class="chat-module renewal-page-chat-module">
									<div class="chat-module-top">
										<div class="chat-module-body renewal-chat-module-body">
											<div class="media chat-item  border-top">
												<div class="media-body" >
													<div class="chat-item-title">
														<span class="chat-item-author"> 전기찬 </span> <span>2019-03-27</span>
													</div>
													<div class="chat-item-body">
														<p>솔직히 업무쪽 디자인 맘에 안드는데 바꾸시는게 어떠신지요</p>
													</div>
												</div>
											</div>
											<div class="media chat-item border-top">
												<div class="media-body">
													<div class="chat-item-title">
														<span class="chat-item-author"> 캡틴 갓 기찬</span> <span>2019-03-28</span>
													</div>
													<div class="chat-item-body">
														<p>님 의견에 따라서 바꿔드렸습니다 꺼져주세용</p>
													</div>
												</div>
											</div>
											<div class="media chat-item border-top">
												<div class="media-body">
													<div class="chat-item-title">
														<span class="chat-item-author"> 전기찬 </span> <span>2019-03-28</span>
													</div>
													<div class="chat-item-body">
														<p>앗ㅎㅎㅎ... 그냥 의견 한번 던져본건데 ㅎ 감사요ㅎㅎ;</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="email-list-item email-list-item-unread">
									<div class="chat-module-bottom"
										style="border-top: none; background: none;">
										<form class="chat-form">
											<textarea class="form-control" placeholder="댓글 달기"
												rows="1"></textarea>
											<div class="chat-form-buttons">
												<button type="button" class="btn btn-link">
													<i class="fas fa-check"></i>
												</button>
											</div>
										</form>
									</div>
									</div>
								</div>
		                    </div>
		                    <!-- 댓글 관련 끝 -->
		                    <!-- 업무 수정 관련 시작 -->
		                    <div class="tab-pane fade" id="outline-three" role="tabpanel" aria-labelledby="tab-outline-three">
		                    	<div class="email-list renewal-list-content" style="height: 750px;">
			                    	<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
			                    		<div class="card">
			                    			<h3 class="card-header"> 업무 추가사항 설정하기 </h3>
			                    		</div>
			                    	</div>
			                    	<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
			                            <div class="card">
			                                <h5 class="card-header">업무 대상자 추가 및 삭제</h5>
			                                <div class="card-body">
			                                    <select id='optgroup' multiple='multiple'>
			                                        <optgroup label='시스템운영개발'>
			                                            <option value='1' selected="selected">박명훈</option>
			                                            <option value='2' selected="selected">전기찬</option>
			                                        </optgroup>
			                                        <optgroup label='물류 운영 관리'>
			                                            <option value='3'>권은영</option>
			                                            <option value='4'>이애화</option>
			                                            <option value='5'>김민정</option>
			                                        </optgroup>
			                                        <optgroup label='디지털 마케팅'>
			                                            <option value='6' selected="selected">김보라</option>
			                                        </optgroup>
			                                    </select>
			                                </div>
			                            </div>
			                        </div>
			                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
			                            <div class="card">
			                                <h5 class="card-header">상단 알람 반복 타입</h5>
			                                <div class="card-body">
			                                    <div class="form-group">
													<label for="proAlarmType"> 반복 타입 설정 </label><select class="selectpicker" id="proAlarmType" data-width="100%">
														<option data-content="<span class='badge badge-dark'>없음</span>">없음</option>
														<option data-content="<span class='badge badge-danger'>매일 반복</span>">매일 반복</option>
														<option data-content="<span class='badge badge-primary'>일자로 반복</span>">일자로 반복</option>
														<option data-content="<span class='badge badge-success'>요일로 반복</span>">요일로 반복</option>
													</select>
												</div>
			                                </div>
			                                <!-- 요일 선택 -->
			                                <div class="card-body">
			                                    <div class="form-group">
													<label for="proRepeatWeek"> 요일 설정 </label> <select class="selectpicker" id="proRepeatWeek" data-width="100%">
														<option value="0">월요일</option>
														<option value="1">화요일</option>
														<option value="2">수요일</option>
														<option value="3">목요일</option>
														<option value="4">금요일</option>
														<option value="5">토요일</option>
														<option value="6">일요일</option>
													</select>
												</div>
			                                </div>
			                                <div class="card-body">
			                                    <div class="form-group">
													<label for="proRepeatDay"> 일자 설정 </label> <select class="selectpicker" id="proRepeatDay" data-width="100%">
														<c:forEach var="i" begin="1" end="31" step="1">
															<option value="${i }"> ${i } 일</option>
														</c:forEach>
													</select>
												</div>
			                                </div>
			                            </div>
			                        </div>
			                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">	                        	
				                        <button type="button" id="finishProject" class="form-control btn btn-danger"> 업무 완료하기 </button>
			                        </div>
		                    	</div>
		                    </div>						
		                </div>
					</div>
				</div>
				<div class="modal-footer renewal-page-modal-footer">		
					<a href="#" class="btn btn-secondary" data-dismiss="modal">닫기</a>
				</div>				
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap-select/js/bootstrap-select.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/datepicker/jquery.datetimepicker.full.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/multi-select/js/jquery.multi-select.js"></script>
    <script src="${pageContext.request.contextPath}/resources/libs/js/renewal_project.js"></script>
	<script type="text/javascript">
		$(function() {

			$.datetimepicker.setLocale('kr');
			
			$('#optgroup').multiSelect({ selectableOptgroup: true });
			
			$("#finishProject").click(function(){
				if(confirm('업무 완료를 할 경우 완료사항을 더 이상 등록할 수 없습니다. 최종 완료 처리를 하시겠습니까?')){
					
				}
			});
			
		});
		
		window.paceOptions = {
				target : "#progress-bar",
				startOnPageLoad : false,
				ajax : false
		};
			/* $(document).ajaxStart(function() {
				Pace.start();
			}).ajaxStop(function() {
				Pace.stop();
			}); */
	</script>
</body>

</html>