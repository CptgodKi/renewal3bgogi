<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/resources/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/libs/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/fonts/flag-icon-css/flag-icon.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/multi-select/css/multi-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap-colorpicker/%40claviska/jquery-minicolors/jquery.minicolors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap-select/css/bootstrap-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/datepicker/jquery.datetimepicker.css" />
    <!-- Optional JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery-3.3.1.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Stylish" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/renewal_page.css">
    
    <script src="${pageContext.request.contextPath}/resources/vendor/pace-master/pace.min.js"></script>
    <title> 3Bgogi Renewal Home Page</title>
    <style type="text/css">
    	*{
    		font-family: 'Stylish', sans-serif;
    	}
    </style>
</head>
<script type="text/javascript">
	function returnWeek(date){
		var week = ['일', '월', '화', '수', '목', '금', '토'];
		
		var dayOfWeek = week[new Date(date).getDay()];
		
		return dayOfWeek;
	}

	function formatDate(date) {
	    var d = new Date(date),
	        month = '' + (d.getMonth() + 1),
	        day = '' + d.getDate(),
	        year = d.getFullYear();
	
	    if (month.length < 2) month = '0' + month;
	    if (day.length < 2) day = '0' + day;
	
	    return [year, month, day].join('-');
	}
	
	function formatDate_HH_MM(date) {
	    var d = new Date(date);
	    var hours = '' + d.getHours();
	    var minutes = '' + d.getMinutes();
	    
	    if(hours < 10) hours="0"+hours;
	    if(minutes < 10) minutes="0"+minutes;
	    
	    return hours+":"+minutes+"";
	}
	
	function comma(num){
		
	    var len, point, str; 
	    
	    if(num==null){
	    	str = 'No Data';
	    	return str;
	    }
	    num = num + ""; 
	    point = num.length % 3 ;
	    len = num.length; 
	   
	    str = num.substring(0, point); 
	    while (point < len) { 
	        if (str != "") str += ","; 
	        str += num.substring(point, point + 3); 
	        point += 3; 
	    } 
	     
	    return str;
	 
	}
</script>
<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="<c:url value='/main/home.do'/>" style="color:#FFA2A2;">삼형제고기</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <li class="nav-item">
                            <div id="custom-search" class="top-search-bar">
                                <input class="form-control" type="text" placeholder="Search..">
                            </div>
                        </li>
                        <li class="nav-item dropdown notification">
                            <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a>
                            <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                                <li>
                                    <div class="notification-title"> 업무 알람 </div>
                                    <div class="notification-list">
                                        <div class="list-group">
                                            <a href="#" class="list-group-item list-group-item-action active"   data-toggle="modal" data-target="#projectModal">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="${pageContext.request.contextPath}/resources/images/avatar-2.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name"> 전기찬 - 시스템운영개발</span>리뉴얼 웹페이지 언젠가 제작 다 하겠지?
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="${pageContext.request.contextPath}/resources/images/avatar-3.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">John Abraham </span>is now following you
                                                        <div class="notification-date">2 days ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="${pageContext.request.contextPath}/resources/images/avatar-4.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Monaan Pechi</span> is watching your main repository
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="${pageContext.request.contextPath}/resources/images/avatar-5.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Jessica Caruso</span>accepted your invitation to join the team.
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="list-footer"><a href="<c:url value='/project/insert_project.do'/>"> 모든 알람 보기 </a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown connection">
                            <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-fw fa-th"></i> </a>
                            <ul class="dropdown-menu dropdown-menu-right connection-dropdown">
                                <li class="connection-list">
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="${pageContext.request.contextPath}/resources/images/github.png" alt=""> <span> 업무용 모달 테스트 </span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="${pageContext.request.contextPath}/resources/images/dribbble.png" alt="" > <span>Dribbble</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="${pageContext.request.contextPath}/resources/images/dropbox.png" alt="" > <span>Dropbox</span></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="${pageContext.request.contextPath}/resources/images/bitbucket.png" alt=""> <span>Bitbucket</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="${pageContext.request.contextPath}/resources/images/mail_chimp.png" alt="" ><span>Mail chimp</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="${pageContext.request.contextPath}/resources/images/slack.png" alt="" > <span>Slack</span></a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="conntection-footer"><a href="#">More</a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="${pageContext.request.contextPath}/resources/images/3bgogi_icon.png" alt="" class="user-avatar-md rounded-circle"></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name"> 전기찬 </h5>
                                    <span class="status"></span><span class="ml-2">- 개발팀 </span>
                                </div>
                                <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i> 계정 </a>
                                <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i> 환경설정 </a>
                                <a class="dropdown-item" href="<c:url value='/logout.do'/>"><i class="fas fa-power-off mr-2"></i> 로그아웃 </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->