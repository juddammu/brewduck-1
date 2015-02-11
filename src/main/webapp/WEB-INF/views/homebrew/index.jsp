<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>홈브루 포트폴리오
                <small>Homebrew Portfolio</small>
            </h1>
        </div>
        <!-- END PAGE TITLE -->
    </div>
</div>


<!-- BEGIN PAGE CONTENT -->
<div class="page-content">
<div class="container-fluid">


<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

<!-- END PAGE BREADCRUMB -->
<!-- BEGIN PAGE CONTENT INNER -->
<div class="row margin-top-10">
<div class="col-md-12">
<!-- BEGIN PROFILE SIDEBAR -->
<div class="profile-sidebar" style="width: 250px;">
    <!-- PORTLET MAIN -->
    <div class="portlet light profile-sidebar-portlet">
        <!-- SIDEBAR USERPIC -->
        <div class="profile-userpic">
            <img src="/resources/assets/admin/pages/media/profile/profile_user.jpg" class="img-responsive" alt="">
        </div>
        <!-- END SIDEBAR USERPIC -->
        <!-- SIDEBAR USER TITLE -->
        <div class="profile-usertitle">
            <div class="profile-usertitle-name">
                홍 길동
            </div>
            <div class="profile-usertitle-job">
                계급 : 오리알
            </div>
        </div>
        <!-- END SIDEBAR USER TITLE -->
        <!-- SIDEBAR BUTTONS -->
        <div class="profile-userbuttons">
            <button type="button" class="btn btn-circle green-haze btn-sm">팔로우</button>
            <button type="button" class="btn btn-circle btn-danger btn-sm">메시지</button>
        </div>
        <!-- END SIDEBAR BUTTONS -->
        <!-- SIDEBAR MENU -->
        <div class="profile-usermenu">
            <ul class="nav">
                <li class="active">
                    <a href="/homebrew/">
                        <i class="icon-home"></i>
                        대시보드 </a>
                </li>
                <li>
                    <a href="/homebrew/account-update">
                        <i class="icon-settings"></i>
                        계정설정 </a>
                </li>
                <li>
                    <a href="/homebrew/myrecipes">
                        <i class="icon-check"></i>
                        레시피 </a>
                </li>
            </ul>
        </div>
        <!-- END MENU -->
    </div>
    <!-- END PORTLET MAIN -->
    <!-- PORTLET MAIN -->
    <div class="portlet light">
        <!-- STAT -->
        <div class="row list-separated profile-stat">
            <div class="col-md-4 col-sm-4 col-xs-6">
                <div class="uppercase profile-stat-title">
                    37
                </div>
                <div class="uppercase profile-stat-text">
                    레시피
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-6">
                <div class="uppercase profile-stat-title">
                    51
                </div>
                <div class="uppercase profile-stat-text">
                    작업
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-6">
                <div class="uppercase profile-stat-title">
                    61
                </div>
                <div class="uppercase profile-stat-text">
                    포인트
                </div>
            </div>
        </div>
        <!-- END STAT -->
        <div>
            <h4 class="profile-desc-title">홍 길동</h4>
            <span class="profile-desc-text"> 대한민국 홈브루어 </span>
            <div class="margin-top-20 profile-desc-link">
                <i class="fa fa-facebook"></i>
                <a href="http://www.facebook.com/hukoru/">페이스북</a>
            </div>
        </div>
    </div>
    <!-- END PORTLET MAIN -->
</div>
<!-- END BEGIN PROFILE SIDEBAR -->
<!-- BEGIN PROFILE CONTENT -->
<div class="profile-content">
<div class="row">
<div class="col-md-6">
    <!-- BEGIN PORTLET -->
    <div class="portlet light ">
        <div class="portlet-title">
            <div class="caption caption-md">
                <i class="icon-bar-chart theme-font hide"></i>
                <span class="caption-subject font-blue-madison bold uppercase">활동 점수</span>
            </div>
        </div>
        <div class="portlet-body">
            <div class="row number-stats margin-bottom-30">
                <div class="col-md-6 col-sm-6 col-xs-6">
                    <div class="stat-left">
                        <div class="stat-chart">
                            <!-- do not line break "sparkline_bar" div. sparkline chart has an issue when the container div has line break -->
                            <div id="sparkline_bar"></div>
                        </div>
                        <div class="stat-number">
                            <div class="title">
                                레시피
                            </div>
                            <div class="number">
                                7 개
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-6">
                    <div class="stat-right">
                        <div class="stat-chart">
                            <!-- do not line break "sparkline_bar" div. sparkline chart has an issue when the container div has line break -->
                            <div id="sparkline_bar2"></div>
                        </div>
                        <div class="stat-number">
                            <div class="title">
                                지식 점수
                            </div>
                            <div class="number">
                                24 점
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="table-scrollable table-scrollable-borderless">
                <table class="table table-hover table-light">
                    <thead>
                    <tr class="uppercase">
                        <th>
                            #
                        </th>
                        <th>
                            이름
                        </th>
                        <th>
                            스타일
                        </th>
                        <th>
                            SRM
                        </th>
                        <th>
                            수율
                        </th>
                    </tr>
                    </thead>
                    <c:forEach items="${recipeList}" var="recipeList">
                    <tr>
                        <td class="fit">
                            ${recipeList.id}
                        </td>
                        <td>
                            <a href="/homebrew/${recipeList.id}/${recipeList.titleInUrl}" class="primary-link">${recipeList.name}</a>
                        </td>
                        <td>
                            ${recipeList.styleName}
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${recipeList.typeCode=='1'}">
                                    완전곡물
                                </c:when>
                                <c:when test="${recipeList.typeCode=='2'}">
                                    부분곡물
                                </c:when>
                                <c:when test="${recipeList.typeCode=='3'}">
                                    원액 캔
                                </c:when>
                            </c:choose>
                        </td>
                        <td>
                            ${recipeList.efficiency} %
                        </td>
                    </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
    <!-- END PORTLET -->
</div>
<div class="col-md-6">
<!-- BEGIN PORTLET -->
<div class="portlet light">
<div class="portlet-title tabbable-line">
    <div class="caption caption-md">
        <i class="icon-globe theme-font hide"></i>
        <span class="caption-subject font-blue-madison bold uppercase">작업 내역</span>
    </div>
    <ul class="nav nav-tabs">
        <li class="active">
            <a href="#tab_1_1" data-toggle="tab">
                시스템 </a>
        </li>
        <li>
            <a href="#tab_1_2" data-toggle="tab">
                커뮤니티 </a>
        </li>
    </ul>
</div>
<div class="portlet-body">
<!--BEGIN TABS-->
<div class="tab-content">
<div class="tab-pane active" id="tab_1_1">
<div class="scroller" style="height: 320px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
<ul class="feeds">
<li>
    <div class="col1">
        <div class="cont">
            <div class="cont-col1">
                <div class="label label-sm label-success">
                    <i class="fa fa-bell-o"></i>
                </div>
            </div>
            <div class="cont-col2">
                <div class="desc">
                    케스케이드 홉핑 5분전입니다.
                    <span class="label label-sm label-info">
                        Take action <i class="fa fa-share"></i>
					</span>
                </div>
            </div>
        </div>
    </div>
    <div class="col2">
        <div class="date">
            지금 막
        </div>
    </div>
</li>
<li>
    <a href="#">
        <div class="col1">
            <div class="cont">
                <div class="cont-col1">
                    <div class="label label-sm label-success">
                        <i class="fa fa-bell-o"></i>
                    </div>
                </div>
                <div class="cont-col2">
                    <div class="desc">
                        보일링 종료 15분전입니다.
                    </div>
                </div>
            </div>
        </div>
        <div class="col2">
            <div class="date">
                20 분전
            </div>
        </div>
    </a>
</li>
<li>
    <div class="col1">
        <div class="cont">
            <div class="cont-col1">
                <div class="label label-sm label-danger">
                    <i class="fa fa-bolt"></i>
                </div>
            </div>
            <div class="cont-col2">
                <div class="desc">
                    #007 양조가 시작되었습니다.
                </div>
            </div>
        </div>
    </div>
    <div class="col2">
        <div class="date">
            24 mins
        </div>
    </div>
</li>
<li>
    <div class="col1">
        <div class="cont">
            <div class="cont-col1">
                <div class="label label-sm label-info">
                    <i class="fa fa-bullhorn"></i>
                </div>
            </div>
            <div class="cont-col2">
                <div class="desc">
                    치눅홉의 저장기간이 1개월 남았습니다.
                </div>
            </div>
        </div>
    </div>
    <div class="col2">
        <div class="date">
            30 mins
        </div>
    </div>
</li>
<li>
    <div class="col1">
        <div class="cont">
            <div class="cont-col1">
                <div class="label label-sm label-success">
                    <i class="fa fa-bullhorn"></i>
                </div>
            </div>
            <div class="cont-col2">
                <div class="desc">
                    1차 발효가 1일 남았습니다.
                </div>
            </div>
        </div>
    </div>
    <div class="col2">
        <div class="date">
            40 mins
        </div>
    </div>
</li>
<li>
    <div class="col1">
        <div class="cont">
            <div class="cont-col1">
                <div class="label label-sm label-warning">
                    <i class="fa fa-plus"></i>
                </div>
            </div>
            <div class="cont-col2">
                <div class="desc">
                    크래프트브루어에서 10% 행사중입니다.
                </div>
            </div>
        </div>
    </div>
    <div class="col2">
        <div class="date">
            1.5 hours
        </div>
    </div>
</li>
</ul>
</div>
</div>
<div class="tab-pane" id="tab_1_2">
<div class="scroller" style="height: 337px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
<ul class="feeds">
<li>
    <a href="#">
        <div class="col1">
            <div class="cont">
                <div class="cont-col1">
                    <div class="label label-sm label-success">
                        <i class="fa fa-bell-o"></i>
                    </div>
                </div>
                <div class="cont-col2">
                    <div class="desc">
                        New user registered
                    </div>
                </div>
            </div>
        </div>
        <div class="col2">
            <div class="date">
                Just now
            </div>
        </div>
    </a>
</li>
<li>
    <a href="#">
        <div class="col1">
            <div class="cont">
                <div class="cont-col1">
                    <div class="label label-sm label-success">
                        <i class="fa fa-bell-o"></i>
                    </div>
                </div>
                <div class="cont-col2">
                    <div class="desc">
                        New order received
                    </div>
                </div>
            </div>
        </div>
        <div class="col2">
            <div class="date">
                10 mins
            </div>
        </div>
    </a>
</li>
<li>
    <div class="col1">
        <div class="cont">
            <div class="cont-col1">
                <div class="label label-sm label-danger">
                    <i class="fa fa-bolt"></i>
                </div>
            </div>
            <div class="cont-col2">
                <div class="desc">
                    Order #24DOP4 has been rejected. <span class="label label-sm label-danger ">
																			Take action <i class="fa fa-share"></i>
																			</span>
                </div>
            </div>
        </div>
    </div>
    <div class="col2">
        <div class="date">
            24 mins
        </div>
    </div>
</li>
<li>
    <a href="#">
        <div class="col1">
            <div class="cont">
                <div class="cont-col1">
                    <div class="label label-sm label-success">
                        <i class="fa fa-bell-o"></i>
                    </div>
                </div>
                <div class="cont-col2">
                    <div class="desc">
                        New user registered
                    </div>
                </div>
            </div>
        </div>
        <div class="col2">
            <div class="date">
                Just now
            </div>
        </div>
    </a>
</li>
<li>
    <a href="#">
        <div class="col1">
            <div class="cont">
                <div class="cont-col1">
                    <div class="label label-sm label-success">
                        <i class="fa fa-bell-o"></i>
                    </div>
                </div>
                <div class="cont-col2">
                    <div class="desc">
                        New user registered
                    </div>
                </div>
            </div>
        </div>
        <div class="col2">
            <div class="date">
                Just now
            </div>
        </div>
    </a>
</li>
<li>
    <a href="#">
        <div class="col1">
            <div class="cont">
                <div class="cont-col1">
                    <div class="label label-sm label-success">
                        <i class="fa fa-bell-o"></i>
                    </div>
                </div>
                <div class="cont-col2">
                    <div class="desc">
                        New user registered
                    </div>
                </div>
            </div>
        </div>
        <div class="col2">
            <div class="date">
                Just now
            </div>
        </div>
    </a>
</li>
<li>
    <a href="#">
        <div class="col1">
            <div class="cont">
                <div class="cont-col1">
                    <div class="label label-sm label-success">
                        <i class="fa fa-bell-o"></i>
                    </div>
                </div>
                <div class="cont-col2">
                    <div class="desc">
                        New user registered
                    </div>
                </div>
            </div>
        </div>
        <div class="col2">
            <div class="date">
                Just now
            </div>
        </div>
    </a>
</li>
<li>
    <a href="#">
        <div class="col1">
            <div class="cont">
                <div class="cont-col1">
                    <div class="label label-sm label-success">
                        <i class="fa fa-bell-o"></i>
                    </div>
                </div>
                <div class="cont-col2">
                    <div class="desc">
                        New user registered
                    </div>
                </div>
            </div>
        </div>
        <div class="col2">
            <div class="date">
                Just now
            </div>
        </div>
    </a>
</li>
<li>
    <a href="#">
        <div class="col1">
            <div class="cont">
                <div class="cont-col1">
                    <div class="label label-sm label-success">
                        <i class="fa fa-bell-o"></i>
                    </div>
                </div>
                <div class="cont-col2">
                    <div class="desc">
                        New user registered
                    </div>
                </div>
            </div>
        </div>
        <div class="col2">
            <div class="date">
                Just now
            </div>
        </div>
    </a>
</li>
<li>
    <a href="#">
        <div class="col1">
            <div class="cont">
                <div class="cont-col1">
                    <div class="label label-sm label-success">
                        <i class="fa fa-bell-o"></i>
                    </div>
                </div>
                <div class="cont-col2">
                    <div class="desc">
                        New user registered
                    </div>
                </div>
            </div>
        </div>
        <div class="col2">
            <div class="date">
                Just now
            </div>
        </div>
    </a>
</li>
</ul>
</div>
</div>
</div>
<!--END TABS-->
</div>
</div>
<!-- END PORTLET -->
</div>
</div>
<div class="row">
<div class="col-md-6">
    <!-- BEGIN PORTLET -->
    <div class="portlet light">
        <div class="portlet-title">
            <div class="caption caption-md">
                <i class="icon-bar-chart theme-font hide"></i>
                <span class="caption-subject font-blue-madison bold uppercase">질문 답변 게시판</span>
                <span class="caption-helper">45 대기중</span>
            </div>
            <div class="inputs">
                <div class="portlet-input input-inline input-small ">
                    <div class="input-icon right">
                        <i class="icon-magnifier"></i>
                        <input type="text" class="form-control form-control-solid" placeholder="search...">
                    </div>
                </div>
            </div>
        </div>
        <div class="portlet-body">
            <div class="scroller" style="height: 305px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
                <div class="general-item-list">
                    <div class="item">
                        <div class="item-head">
                            <div class="item-details">
                                <img class="item-pic" src="/resources/assets/admin/layout3/img/avatar4.jpg">
                                <a href="" class="item-name primary-link">Nick Larson</a>
                                <span class="item-label">3 시간 전</span>
                            </div>
                            <span class="item-status"><span class="badge badge-empty badge-success"></span> 요청</span>
                        </div>
                        <div class="item-body">
                            케스케이드 대체 홉 자료 찾습니다!
                        </div>
                    </div>
                    <div class="item">
                        <div class="item-head">
                            <div class="item-details">
                                <img class="item-pic" src="/resources/assets/admin/layout3/img/avatar3.jpg">
                                <a href="" class="item-name primary-link">Mark</a>
                                <span class="item-label">5 시간 전</span>
                            </div>
                            <span class="item-status"><span class="badge badge-empty badge-warning"></span> 답변중</span>
                        </div>
                        <div class="item-body">
                            HERMS와 RMIS의 차이점은 뭔가요?
                        </div>
                    </div>
                    <div class="item">
                        <div class="item-head">
                            <div class="item-details">
                                <img class="item-pic" src="/resources/assets/admin/layout3/img/avatar6.jpg">
                                <a href="" class="item-name primary-link">Nick Larson</a>
                                <span class="item-label">8 시간 전</span>
                            </div>
                            <span class="item-status"><span class="badge badge-empty badge-primary"></span> 공지</span>
                        </div>
                        <div class="item-body">
                            토요일 서경정모가 오후 2시로 변경되었습니다.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END PORTLET -->
</div>
<div class="col-md-6">
<!-- BEGIN PORTLET -->
<div class="portlet light tasks-widget">
<div class="portlet-title">
    <div class="caption caption-md">
        <i class="icon-bar-chart theme-font hide"></i>
        <span class="caption-subject font-blue-madison bold uppercase">Tasks</span>
        <span class="caption-helper">16 pending</span>
    </div>
    <div class="inputs">
        <div class="portlet-input input-small input-inline">
            <div class="input-icon right">
                <i class="icon-magnifier"></i>
                <input type="text" class="form-control form-control-solid" placeholder="search...">
            </div>
        </div>
    </div>
</div>
<div class="portlet-body">
<div class="task-content">
<div class="scroller" style="height: 282px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#D7DCE2">
<!-- START TASK LIST -->
<ul class="task-list">
<li>
    <div class="task-checkbox">
        <input type="hidden" value="1" name="test"/>
        <input type="checkbox" class="liChild" value="2" name="test"/>
    </div>
    <div class="task-title">
															<span class="task-title-sp">
															Present 2013 Year IPO Statistics at Board Meeting </span>
        <span class="label label-sm label-success">Company</span>
															<span class="task-bell">
															<i class="fa fa-bell-o"></i>
															</span>
    </div>
    <div class="task-config">
        <div class="task-config-btn btn-group">
            <a class="btn btn-xs default" href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu pull-right">
                <li>
                    <a href="#">
                        <i class="fa fa-check"></i> Complete </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-pencil"></i> Edit </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-trash-o"></i> Cancel </a>
                </li>
            </ul>
        </div>
    </div>
</li>
<li>
    <div class="task-checkbox">
        <input type="checkbox" class="liChild" value=""/>
    </div>
    <div class="task-title">
															<span class="task-title-sp">
															Hold An Interview for Marketing Manager Position </span>
        <span class="label label-sm label-danger">Marketing</span>
    </div>
    <div class="task-config">
        <div class="task-config-btn btn-group">
            <a class="btn btn-xs default" href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu pull-right">
                <li>
                    <a href="#">
                        <i class="fa fa-check"></i> Complete </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-pencil"></i> Edit </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-trash-o"></i> Cancel </a>
                </li>
            </ul>
        </div>
    </div>
</li>
<li>
    <div class="task-checkbox">
        <input type="checkbox" class="liChild" value=""/>
    </div>
    <div class="task-title">
															<span class="task-title-sp">
															AirAsia Intranet System Project Internal Meeting </span>
        <span class="label label-sm label-success">AirAsia</span>
															<span class="task-bell">
															<i class="fa fa-bell-o"></i>
															</span>
    </div>
    <div class="task-config">
        <div class="task-config-btn btn-group">
            <a class="btn btn-xs default" href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu pull-right">
                <li>
                    <a href="#">
                        <i class="fa fa-check"></i> Complete </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-pencil"></i> Edit </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-trash-o"></i> Cancel </a>
                </li>
            </ul>
        </div>
    </div>
</li>
<li>
    <div class="task-checkbox">
        <input type="checkbox" class="liChild" value=""/>
    </div>
    <div class="task-title">
															<span class="task-title-sp">
															Technical Management Meeting </span>
        <span class="label label-sm label-warning">Company</span>
    </div>
    <div class="task-config">
        <div class="task-config-btn btn-group">
            <a class="btn btn-xs default" href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu pull-right">
                <li>
                    <a href="#">
                        <i class="fa fa-check"></i> Complete </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-pencil"></i> Edit </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-trash-o"></i> Cancel </a>
                </li>
            </ul>
        </div>
    </div>
</li>
<li>
    <div class="task-checkbox">
        <input type="checkbox" class="liChild" value=""/>
    </div>
    <div class="task-title">
															<span class="task-title-sp">
															Kick-off Company CRM Mobile App Development </span>
        <span class="label label-sm label-info">Internal Products</span>
    </div>
    <div class="task-config">
        <div class="task-config-btn btn-group">
            <a class="btn btn-xs default" href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu pull-right">
                <li>
                    <a href="#">
                        <i class="fa fa-check"></i> Complete </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-pencil"></i> Edit </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-trash-o"></i> Cancel </a>
                </li>
            </ul>
        </div>
    </div>
</li>
<li>
    <div class="task-checkbox">
        <input type="checkbox" class="liChild" value=""/>
    </div>
    <div class="task-title">
															<span class="task-title-sp">
															Prepare Commercial Offer For SmartVision Website Rewamp </span>
        <span class="label label-sm label-danger">SmartVision</span>
    </div>
    <div class="task-config">
        <div class="task-config-btn btn-group">
            <a class="btn btn-xs default" href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu pull-right">
                <li>
                    <a href="#">
                        <i class="fa fa-check"></i> Complete </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-pencil"></i> Edit </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-trash-o"></i> Cancel </a>
                </li>
            </ul>
        </div>
    </div>
</li>
<li>
    <div class="task-checkbox">
        <input type="checkbox" class="liChild" value=""/>
    </div>
    <div class="task-title">
															<span class="task-title-sp">
															Sign-Off The Comercial Agreement With AutoSmart </span>
        <span class="label label-sm label-default">AutoSmart</span>
															<span class="task-bell">
															<i class="fa fa-bell-o"></i>
															</span>
    </div>
    <div class="task-config">
        <div class="task-config-btn btn-group">
            <a class="btn btn-xs default" href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu pull-right">
                <li>
                    <a href="#">
                        <i class="fa fa-check"></i> Complete </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-pencil"></i> Edit </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-trash-o"></i> Cancel </a>
                </li>
            </ul>
        </div>
    </div>
</li>
<li>
    <div class="task-checkbox">
        <input type="checkbox" class="liChild" value=""/>
    </div>
    <div class="task-title">
															<span class="task-title-sp">
															Company Staff Meeting </span>
        <span class="label label-sm label-success">Cruise</span>
															<span class="task-bell">
															<i class="fa fa-bell-o"></i>
															</span>
    </div>
    <div class="task-config">
        <div class="task-config-btn btn-group">
            <a class="btn btn-xs default" href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu pull-right">
                <li>
                    <a href="#">
                        <i class="fa fa-check"></i> Complete </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-pencil"></i> Edit </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-trash-o"></i> Cancel </a>
                </li>
            </ul>
        </div>
    </div>
</li>
<li class="last-line">
    <div class="task-checkbox">
        <input type="checkbox" class="liChild" value=""/>
    </div>
    <div class="task-title">
															<span class="task-title-sp">
															KeenThemes Investment Discussion </span>
        <span class="label label-sm label-warning">KeenThemes </span>
    </div>
    <div class="task-config">
        <div class="task-config-btn btn-group">
            <a class="btn btn-xs default" href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu pull-right">
                <li>
                    <a href="#">
                        <i class="fa fa-check"></i> Complete </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-pencil"></i> Edit </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-trash-o"></i> Cancel </a>
                </li>
            </ul>
        </div>
    </div>
</li>
</ul>
<!-- END START TASK LIST -->
</div>
</div>
<div class="task-footer">
    <div class="btn-arrow-link pull-right">
        <a href="#">See All Tasks</a>
    </div>
</div>
</div>
</div>
<!-- END PORTLET -->
</div>
</div>
</div>
<!-- END PROFILE CONTENT -->
</div>
</div>
<!-- END PAGE CONTENT INNER -->
</div>
</div>
<!-- END PAGE CONTENT -->


<!-- #/paper bg -->
<content tag="local_script">
    <link href="/resources/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/admin/pages/css/profile.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/admin/pages/css/tasks.css" rel="stylesheet" type="text/css"/>

    <script src="/resources/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js" type="text/javascript"></script>
    <script src="/resources/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
    <script src="/resources/assets/admin/pages/scripts/profile.js" type="text/javascript"></script>
    <script>
        jQuery(document).ready(function() {
            // initiate layout and plugins
            Profile.init(); // init page demo
        });
    </script>
</content>
