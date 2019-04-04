<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#"> 메뉴 열람 </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                               	 선택 메뉴
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fa fa-fw fa-user-circle"></i>개인 <span class="badge badge-success">6</span></a>
                                <div id="submenu-1" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                    	<li class="nav-item">
                                            <a class="nav-link" href="<c:url value='/admin/attendance/admin_attendance_status.do'/>"> 출결 관리 </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1-2" aria-controls="submenu-1-2">업무 일지</a>
                                            <div id="submenu-1-2" class="collapse submenu" style="">
                                                <ul class="nav flex-column">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="javascript:void(0);"> 오늘의 업무 </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="<c:url value='/project/insert_project.do'/>">새로운 업무 등록</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="javascript:void(0);">업무 진행도 </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="javascript:void(0);"> 업무 파일 </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1-1" aria-controls="submenu-1-1"> 로그 </a>
                                            <div id="submenu-1-1" class="collapse submenu" style="">
                                                <ul class="nav flex-column">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="javascript void:(0)"> 업무 </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="javascript void:(0)"> 메모 </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#team" aria-controls="team"><i class="fas fa-fw fa-sitemap"></i> 팀  </a>
                                <div id="team" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="javascript:void(0);"> 팀 프로젝트 </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="javascript:void(0);"> 팀원 정보  </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-divider">
                               	 관리자
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-6" aria-controls="submenu-6"><i class="fas fa-fw fa-file"></i> 주문서 </a>
                                <div id="submenu-6" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                    	<li class="nav-item">
                                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#excel_order" aria-controls="excel_order"> 주문 입력 </a>
                                            <div id="excel_order" class="collapse submenu" style="">
                                                <ul class="nav flex-column">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="<c:url value='/orders/order_page.do'/>"> 주문 등록 </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="javascript:void(0);"> 주문 매칭 </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="javascript:void(0);"> 수기 주문서 입력  </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="javascript:void(0);"> 입력 내역 </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-7" aria-controls="submenu-7"><i class="fas fa-fw fa-inbox"></i> 데이터 관리 <span class="badge badge-secondary">New</span></a>
                                <div id="submenu-7" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-11" aria-controls="submenu-11"> 데이터 입력 </a>
                                            <div id="submenu-11" class="collapse submenu" style="">
                                                <ul class="nav flex-column">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="<c:url value='/products/insert/cost_detail.do'/>"> 원가 상세사항 입력 </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="<c:url value='/products/insert/cost_option.do'/>"> 다중 원가 입력 </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="<c:url value='/products/insert/product.do'/>"> 상품 등록 </a>
                                                    </li>
                                                    
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="javascript:void(0);"> 매칭 설정 </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="javascript:void(0);"> 매칭 재설정 </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#dataList" aria-controls="dataList"> 데이터 목록 </a>
                                            <div id="dataList" class="collapse submenu" style="">
                                                <ul class="nav flex-column">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="<c:url value='/products/list/product_list.do'/>"> 상품 목록 </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="<c:url value='/products/insert/cost_detail.do'/>"> 카테고리 목록 </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-8" aria-controls="submenu-8"><i class="fas fa-fw fa-columns"></i> 팀원 </a>
                                <div id="submenu-8" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="<c:url value='/admin/team/team_auth.do'/>"> 팀원 권한 </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->