<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/common/include/main_header.jsp" %>

<!-- BEGIN BODY -->
<body class="condense-menu">
    <!-- 상단메뉴 -->
    <%@ include file="/WEB-INF/views/common/include/home_top_menu.jsp" %>
    <!-- END HEADER -->
<!-- BEGIN CONTAINER -->
<div class="page-container row-fluid">
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar" id="main-menu">
    <!-- BEGIN MINI-PROFILE -->
    <div class="page-sidebar-wrapper" id="main-menu-wrapper">
        <div class="user-info-wrapper">
            <div class="profile-wrapper"> <img src="/resources/assets/img/profiles/avatar.jpg"  alt="" data-src="/resources/assets/img/profiles/avatar.jpg" data-src-retina="/resources/assets/img/profiles/avatar2x.jpg" width="69" height="69" /> </div>
            <div class="user-info">
                <div class="greeting">Welcome</div>
                <div class="username">John <span class="semi-bold">Smith</span></div>
                <div class="status">Status<a href="#">
                    <div class="status-icon green"></div>
                    Online</a></div>
            </div>
        </div>
        <!-- END MINI-PROFILE -->
        <!-- BEGIN SIDEBAR MENU -->
        <p class="menu-title">BROWSE <span class="pull-right"><a href="javascript:;"><i class="fa fa-refresh"></i></a></span></p>
        <ul>
            <li class="start"> <a href="index.html"> <i class="fa fa-th"></i> <span class="title">데이터 베이스</span> <span class="selected"></span> <span class="arrow open"></span> </a>
                <ul class="sub-menu">
                    <li > <a href="/style/"> 스타일 (BJCP STYLE)</a> </li>
                    <li class="active"> <a href="/hop/">홉 (HOP) <span class=" label label-info pull-right m-r-30">HOT</span></a></li>
                    <li > <a href="/fermentable/"> 발효 (Fermentable)</a> </li>
                    <li > <a href="/yeast/"> 효모 (Yeas) </a> </li>
                    <li > <a href="/misc/"> 첨가물 (Misc) </a> </li>
                </ul>
            </li>
            <li class="start"> <a href="index.html"> <i class="fa fa-th"></i> <span class="title">게시판</span> <span class="selected"></span> <span class="arrow open"></span> </a>
                <ul class="sub-menu">
                    <li class="active"> <a href="/board/freeBoard">자유게시판(Free Board)</a> </li>
                    <li > <a href="/board/notice">공지사항(Notice)<span class=" label label-info pull-right m-r-30"></span></a></li>
                    <li > <a href="/board/questionBoard">질문게시판(Q&A)</a> </li>
                    <li > <a href="/board/addBoard">게시판 생성</a> </li>
                </ul>
            </li>
            <!--
            <li class="hidden-lg hidden-md hidden-xs" id="more-widgets" > <a href="javascript:;"> <i class="fa fa-plus"></i></a>
                <ul class="sub-menu">
                    <li class="side-bar-widgets">
                        <p class="menu-title">FOLDER <span class="pull-right"><a href="#" class="create-folder"><i class="icon-plus"></i></a></span></p>
                        <ul class="folders" >
                            <li><a href="#">
                                <div class="status-icon green"></div>
                                인디아 페일에일 </a> </li>
                            <li><a href="#">
                                <div class="status-icon red"></div>
                                오트밀 스타우트 </a> </li>
                            <li class="folder-input" style="display:none">
                                <input type="text" placeholder="Name of folder" class="no-boarder folder-name" name="" id="folder-name">
                            </li>
                        </ul>
                        <p class="menu-title">스케줄 </p>
                        <div class="status-widget">
                            <div class="status-widget-wrapper">
                                <div class="title">오트밀 스타우트<a href="#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
                                <p>병입 2일 남았습니다.</p>
                            </div>
                        </div>
                        <div class="status-widget">
                            <div class="status-widget-wrapper">
                                <div class="title">인디아 페일에일<a href="#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
                                <p>숙성된지 4일이 지났습니다.</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </li>
            -->
        </ul>
        <div class="side-bar-widgets">
            <!--
            <p class="menu-title">양조 스케줄 <span class="pull-right"><a href="#" class="create-folder"> <i class="fa fa-plus"></i></a></span></p>
            <ul class="folders" >
                <li><a href="#">
                    <div class="status-icon green"></div>
                    인디아 페일에일 </a> </li>
                <li><a href="#">
                    <div class="status-icon red"></div>
                    오트밀 스타우트 </a> </li>
                <li class="folder-input" style="display:none">
                    <input type="text" placeholder="Name of folder" class="no-boarder folder-name" name="" >
                </li>
            </ul>
            <p class="menu-title">스케줄 </p>
            <div class="status-widget">
                <div class="status-widget-wrapper">
                    <div class="title">오트밀 스타우트<a href="#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
                    <p>병입 2일 남았습니다.</p>
                </div>
            </div>
            <div class="status-widget">
                <div class="status-widget-wrapper">
                    <div class="title">인디아 페일에일<a href="#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
                    <p>숙성된지 4일이 지났습니다.</p>
                </div>
            </div>
            -->
        </div>
        <div class="clearfix"></div>
        <!-- END SIDEBAR MENU -->
    </div>
</div>
<div class="footer-widget">
    <div class="progress transparent progress-small no-radius no-margin">
        <div data-percentage="79%" class="progress-bar progress-bar-success animate-progress-bar" ></div>
    </div>
    <div class="pull-right">
        <div class="details-status"> <span data-animation-duration="560" data-value="86" class="animate-number"></span>% </div>
        <a href="#"><i class="fa fa-power-off"></i></a></div>
</div>
<!-- END SIDEBAR -->
<!-- BEGIN PAGE CONTAINER-->
<div class="page-content">
<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<div id="portlet-config" class="modal hide">
    <div class="modal-header">
        <button data-dismiss="modal" class="close" type="button"></button>
        <h3>Widget Settings</h3>
    </div>
    <div class="modal-body"> Widget settings form goes here </div>
</div>
<div class="clearfix"></div>
<div class="content">
<div class="page-title">
</div>


<div class="row" >
<!-- BEGIN BLOG POST BIG IMAGE WIDGET -->
<div class="row">
<div class="col-md-4 col-sm-6">
    <div class="row ">
        <!-- 홉 설명 소개 -->
        <div class="col-md-12 m-b-20">
            <div class="widget-item narrow-margin">
                <div class="controller overlay right"> <a href="javascript:;" class="reload"></a> <a href="javascript:;" class="remove"></a> </div>
                <div class="tiles green " style="max-height:345px">
                    <div class="tiles-body">
                        <h3 class="text-white m-t-50 m-b-30 m-r-20"  onclick="goDetail('${hop.seq}', '${hop.titleInUrl}');"><span class="semi-bold">${hop.koreanName}</span></h3>
                        <div class="overlayer bottom-right fullwidth">
                            <div class="overlayer-wrapper">
                                <div class=" p-l-20 p-r-20 p-b-20 p-t-20">
                                    <div class="pull-right">
                                        <c:forEach items="${hopAromaList}" var="list" varStatus="i">
                                        <a href="#" class="hashtags transparent"> ${list.aromaName}</a>
                                        </c:forEach>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
                <div class="tiles white ">
                    <div class="tiles-body">
                        <div class="row">
                            <div class="user-comment-wrapper pull-left">
                                <div class="profile-wrapper"> <img src="/resources/assets/img/brew/hop.jpg" alt="" data-src="/resources/assets/img/brew/hop.jpg" data-src-retina="/resources/assets/img/profiles/avatar_small2x.jpg" width="35" height="35"> </div>
                                <div class="comment">
                                    <div class="user-name text-black bold"> <span class="semi-bold"> ${hop.typeKorean}  </span> </div>
                                    <div class="preview-wrapper">@ ${hop.originKorean} </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="pull-right m-r-20"> <span class="bold text-black small-text">${hop.alpha} %</span> </div>
                            <div class="clearfix"></div>
                            <div class="p-l-15 p-t-10 p-r-20">
                                <p>${hop.koreanNotes}</p>
                                <div class="post p-t-10 p-b-10">
                                    <div class="profile-img-wrapper pull-left"> <img src="/resources/assets/img/profiles/avatar_small.jpg" alt="" data-src="/resources/assets/img/profiles/avatar_small.jpg" data-src-retina="/resources/assets/img/profiles/avatar_small2x.jpg" width="35" height="35"> </div>
                                    <div class="inline pull-right" style="width:86%">
                                        <div class="input-group transparent ">
                                            <input type="text" class="form-control" placeholder="댓글을 입력하세요...">
                                            <span class="input-group-addon"> <i class="fa fa-camera"></i> </span> </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END BLOG POST SIMPLE-->
    </div>

    <div class="row">
        <!-- BEGIN BLOG POST WITH CAROUSEL IMAGE -->
        <div class="col-md-12 m-b-20">
            <div class="widget-item narrow-margin">
                <div class="controller overlay right"> <a href="javascript:;" class="reload"></a> <a href="javascript:;" class="remove"></a> </div>
                <div class="tiles white p-t-15">
                    <div class="row">
                        <div class="col-md-2">
                            <div class="profile-img-wrapper pull-left m-l-10">
                                <div class=" p-r-10">
                                    <img src="/resources/assets/img/profiles/c.jpg" alt="" data-src="/resources/assets/img/profiles/c.jpg" data-src-retina="/resources/assets/img/profiles/c2x.jpg" width="35" height="35"> </div>
                            </div>
                        </div>
                        <div class="col-md-10">
                            <div class="user-name text-black bold large-text"> John <span class="semi-bold">Smith</span> </div>
                            <div class="preview-wrapper">shared a picture with <span class="bold">Jane Smith</span>.</div>
                        </div>
                    </div>
                    <div id="image-demo-carl" class="m-t-15 owl-carousel owl-theme">
                        <div class="item"><img src="/resources/assets/img/others/1.jpg" alt=""></div>
                        <div class="item"><img src="/resources/assets/img/others/2.jpg" alt=""></div>
                    </div>
                    <div class="post p-b-15 p-t-15 p-l-15 b-b b-grey">
                        <ul class="action-bar no-margin ">
                            <li><a href="#" class="muted"><i class="fa fa-comment m-r-5"></i> 24</a> </li>
                            <li><a href="#" class="text-error bold"> <i class="fa fa-heart-o  m-r-5"></i> 5</a> </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <p class="p-t-10 p-b-10 p-l-15 p-r-15"><span class="bold">Jane Smith, John Smith, David Jester, pepper</span> post and 214 others like this.</p>
                    <div class="clearfix"></div>
                    <div class="p-b-10 p-l-10 p-r-10">
                        <div class="profile-img-wrapper pull-left"> <img src="/resources/assets/img/profiles/avatar_small.jpg" alt="" data-src="/resources/assets/img/profiles/avatar_small.jpg" data-src-retina="/resources/assets/img/profiles/avatar_small2x.jpg" width="35" height="35"> </div>
                        <div class="inline pull-right" style="width:86%">
                            <div class="input-group transparent ">
                                <input type="text" class="form-control" placeholder="Write a comment">
                                <span class="input-group-addon"> <i class="fa fa-camera"></i> </span> </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END BLOG POST WITH CAROUSEL IMAGE -->
    </div>
</div>

<div class="col-md-4 col-sm-6 hidden-sm">
    <div class="row">
        <!-- BEGIN BLOG POST WITH IMAGE -->
        <div class="col-md-12 m-b-20">
            <div class="widget-item narrow-margin">
                <div class="controller overlay right"> <a href="javascript:;" class="reload"></a> <a href="javascript:;" class="remove"></a> </div>
                <div class="tiles green  overflow-hidden full-height" style="max-height:214px">
                    <div class="overlayer bottom-right fullwidth">
                        <div class="overlayer-wrapper">
                            <div class="tiles gradient-black p-l-20 p-r-20 p-b-20 p-t-20">
                                <div class="pull-right"> <a href="#" class="hashtags transparent"> #라이트 미국식 라거 </a> </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <a href="/recipe/1/보스턴_라거_클론"><img src="/resources/assets/img/others/1.jpg" alt="" class="lazy hover-effect-img"> </a></div>
                <div class="tiles white ">
                    <div class="tiles-body">
                        <div class="row">
                            <div class="user-profile-pic text-left">
                                <img width="69" height="69" data-src-retina="/resources/assets/img/profiles/avatar2x.jpg" data-src="/resources/assets/img/profiles/avatar.jpg" src="/resources/assets/img/profiles/avatar.jpg" alt="">
                                <div class="pull-right m-r-20 m-t-35"> <span class="bold text-black small-text">4.9% ABV</span> </div>
                            </div>
                            <div class="col-md-5 no-padding">
                                <div class="user-comment-wrapper">
                                    <div class="comment">
                                        <div class="user-name text-black bold"> 보스턴 라거 클론 <span class="semi-bold"></span> </div>
                                        <div class="preview-wrapper">@ 제스퍼 </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="col-md-7 no-padding">

                                <div class="clearfix"></div>
                                <div class="p-l-15 p-t-10 p-r-20">
                                    <p>사무엘 아담스 라거는 세션비어로 누구나 쉽게 먹을수 있게 디자인되어있다.</p>
                                    <div class="post p-t-10 p-b-10">
                                        <ul class="action-bar no-margin p-b-20 ">
                                            <li><a href="#" class="muted bold"><i class="fa fa-comment  m-r-10"></i>15</a> </li>
                                            <li><a href="#" class="text-error bold"><i class="fa fa-heart  m-r-10"></i>47</a> </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END BLOG POST WITH IMAGE -->
    </div>
    <div class="row">
        <!-- BEGIN BLOG POST SIMPLE -->
        <div class="col-md-12 m-b-20">
            <div class="widget-item narrow-margin">
                <div class="controller overlay right"> <a href="javascript:;" class="reload"></a> <a href="javascript:;" class="remove"></a> </div>
                <div class="tiles purple " style="max-height:345px">
                    <div class="tiles-body">

                        <h3 class="text-white m-t-50 m-b-30 m-r-20"> Webarch <span class="semi-bold">UI Bundle
                        highly customizable UI
                        elements</span> </h3>
                        <div class="overlayer bottom-right fullwidth">
                            <div class="overlayer-wrapper">
                                <div class=" p-l-20 p-r-20 p-b-20 p-t-20">
                                    <div class="pull-right"> <a href="#" class="hashtags transparent"> #Art Design </a> </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
                <div class="tiles white ">
                    <div class="tiles-body">
                        <div class="row">
                            <div class="user-comment-wrapper pull-left">
                                <div class="profile-wrapper">
                                    <img src="/resources/assets/img/profiles/d.jpg" alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35">
                                </div>
                                <div class="comment">
                                    <div class="user-name text-black bold"> Jane <span class="semi-bold">Smith</span> </div>
                                    <div class="preview-wrapper">@ webarch </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="pull-right m-r-20"> <span class="bold text-black small-text">24m</span> </div>
                            <div class="clearfix"></div>
                            <div class="p-l-15 p-t-10 p-r-20">
                                <p>The attention to detail and the end product is stellar!  I enjoyed the process </p>
                                <div class="post p-t-10 p-b-10">
                                    <ul class="action-bar no-margin p-b-20 ">
                                        <li><a href="#" class="muted bold"><i class="fa fa-comment  m-r-10"></i>1584</a> </li>
                                        <li><a href="#" class="text-error bold"><i class="fa fa-heart  m-r-10"></i>47k</a> </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END BLOG POST SIMPLE -->
    </div>
</div>

<div class="col-md-4 col-sm-6">
    <div class="row">
        <!-- BEGIN BLOG POST WITH MAP -->
        <div class="col-md-12 m-b-20">
            <div class="widget-item narrow-margin">
                <div class="controller overlay right"> <a href="javascript:;" class="reload"></a> <a href="javascript:;" class="remove"></a> </div>
                <div class="tiles white p-t-15  m-b-20">
                    <div class="row">
                        <div class="col-md-2">
                            <div class="profile-img-wrapper pull-left m-l-10">
                                <div class=" p-r-10">
                                    <img src="/resources/assets/img/profiles/h.jpg" alt="" data-src="/resources/assets/img/profiles/h.jpg" data-src-retina="/resources/assets/img/profiles/h2x.jpg" width="35" height="35">

                                </div>
                            </div>
                        </div>
                        <div class="col-md-10">
                            <div class="user-name text-black bold large-text"> David <span class="semi-bold">Jester</span> </div>
                            <div class="preview-wrapper">was with <span class="bold">Jane Smith</span> and 4 others at <span class="bold">The Shore By O</span>.</div>
                        </div>
                    </div>
                    <div id="location-map" class="m-t-15 " style="height: 200px"> </div>
                    <div class="post p-b-15 p-t-15 p-l-15 b-b b-grey">
                        <ul class="action-bar no-margin ">
                            <li><a href="#" class="muted"><i class="fa fa-comment m-r-5"></i> 24</a> </li>
                            <li><a href="#" class="text-error bold"> <i class="fa fa-heart-o  m-r-5"></i> 5</a> </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <p class="p-t-10 p-b-10 p-l-15 p-r-15"><span class="bold">Jane Smith, John Smith, David Jester, pepper</span> post and 214 others like this.</p>
                    <div class="clearfix"></div>
                    <div class="p-b-10 p-l-10 p-r-10">
                        <div class="profile-img-wrapper pull-left">
                            <img width="35" height="35" alt="" src="/resources/assets/img/profiles/e.jpg" data-src="/resources/assets/img/profiles/e.jpg" data-src-retina="/resources/assets/img/profiles/e2x.jpg"> </div>
                        <div class="inline pull-right" style="width:86%">
                            <div class="input-group transparent ">
                                <input type="text" class="form-control" placeholder="Write a comment">
                                <span class="input-group-addon"> <i class="fa fa-camera"></i> </span> </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END BLOG POST WITH MAP -->
    </div>
    <div class="row">
        <!-- BEGIN BLOG POST WITH IMAGE -->
        <div class="col-md-12 m-b-20">
            <div class="widget-item narrow-margin">
                <div class="controller overlay right"> <a href="javascript:;" class="reload"></a> <a href="javascript:;" class="remove"></a> </div>
                <div class="tiles green  overflow-hidden full-height" style="max-height:214px">
                    <div class="overlayer bottom-right fullwidth">
                        <div class="overlayer-wrapper">
                            <div class="tiles gradient-black p-l-20 p-r-20 p-b-20 p-t-20">
                                <div class="pull-right"> <a href="#" class="hashtags transparent"> #Art Design </a> </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <img src="/resources/assets/img/others/10.png" alt="" class="lazy hover-effect-img"> </div>
                <div class="tiles white ">
                    <div class="tiles-body">
                        <div class="row">
                            <div class="user-profile-pic text-left">
                                <img width="69" height="69" data-src-retina="/resources/assets/img/profiles/avatar2x.jpg" data-src="/resources/assets/img/profiles/avatar.jpg" src="/resources/assets/img/profiles/avatar.jpg" alt="">
                                <div class="pull-right m-r-20 m-t-35"> <span class="bold text-black small-text">24m</span> </div>
                            </div>
                            <div class="col-md-5 no-padding">
                                <div class="user-comment-wrapper">
                                    <div class="comment">
                                        <div class="user-name text-black bold"> David <span class="semi-bold">Jester</span> </div>
                                        <div class="preview-wrapper">@ revox </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="col-md-7 no-padding">

                                <div class="clearfix"></div>
                                <div class="m-r-20 m-t-20 m-b-10  m-l-10">
                                    <p class="p-b-10">The attention to detail and the end product is stellar!  I enjoyed the process </p>
                                    <a href="#" class="hashtags m-b-5"> #new york city </a> <a href="#" class="hashtags m-b-5"> #amazing </a> <a href="#" class="hashtags m-b-5"> #citymax </a> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- BEGIN BLOG POST WITH IMAGE -->
    </div>
</div>

</div>


</div>
</div>

</div>

<!-- END CONTAINER -->
<!-- BEGIN CHAT -->
<div id="sidr" class="chat-window-wrapper">
    <div id="main-chat-wrapper" >
        <div class="chat-window-wrapper fadeIn" id="chat-users" >
            <div class="chat-header">
                <div class="pull-left">
                    <input type="text" placeholder="search">
                </div>
                <div class="pull-right"> <a href="#" class="" >
                    <div class="iconset top-settings-dark "></div>
                </a> </div>
            </div>
            <div class="side-widget">
                <div class="side-widget-title">group chats</div>
                <div class="side-widget-content">
                    <div id="groups-list">
                        <ul class="groups" >
                            <li><a href="#">
                                <div class="status-icon green"></div>
                                Office work</a></li>
                            <li><a href="#">
                                <div class="status-icon green"></div>
                                Personal vibes</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="side-widget fadeIn">
                <div class="side-widget-title">favourites</div>
                <div id="favourites-list">
                    <div class="side-widget-content" >
                        <div class="user-details-wrapper active" data-chat-status="online" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="Jane Smith">
                            <div class="user-profile"> <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35"> </div>
                            <div class="user-details">
                                <div class="user-name"> Jane Smith </div>
                                <div class="user-more"> Hello you there? </div>
                            </div>
                            <div class="user-details-status-wrapper"> <span class="badge badge-important">3</span> </div>
                            <div class="user-details-count-wrapper">
                                <div class="status-icon green"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="user-details-wrapper" data-chat-status="busy" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="David Nester">
                            <div class="user-profile"> <img src="/resources/assets/img/profiles/c.jpg"  alt="" data-src="/resources/assets/img/profiles/c.jpg" data-src-retina="/resources/assets/img/profiles/c2x.jpg" width="35" height="35"> </div>
                            <div class="user-details">
                                <div class="user-name"> David Nester </div>
                                <div class="user-more"> Busy, Do not disturb </div>
                            </div>
                            <div class="user-details-status-wrapper">
                                <div class="clearfix"></div>
                            </div>
                            <div class="user-details-count-wrapper">
                                <div class="status-icon red"></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="side-widget">
                <div class="side-widget-title">more friends</div>
                <div class="side-widget-content" id="friends-list">
                    <div class="user-details-wrapper" data-chat-status="online" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="Jane Smith">
                        <div class="user-profile"> <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35"> </div>
                        <div class="user-details">
                            <div class="user-name"> Jane Smith </div>
                            <div class="user-more"> Hello you there? </div>
                        </div>
                        <div class="user-details-status-wrapper"> </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon green"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="user-details-wrapper" data-chat-status="busy" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="David Nester">
                        <div class="user-profile"> <img src="/resources/assets/img/profiles/h.jpg"  alt="" data-src="/resources/assets/img/profiles/h.jpg" data-src-retina="/resources/assets/img/profiles/h2x.jpg" width="35" height="35"> </div>
                        <div class="user-details">
                            <div class="user-name"> David Nester </div>
                            <div class="user-more"> Busy, Do not disturb </div>
                        </div>
                        <div class="user-details-status-wrapper">
                            <div class="clearfix"></div>
                        </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon red"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="user-details-wrapper" data-chat-status="online" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="Jane Smith">
                        <div class="user-profile"> <img src="/resources/assets/img/profiles/c.jpg"  alt="" data-src="/resources/assets/img/profiles/c.jpg" data-src-retina="/resources/assets/img/profiles/c2x.jpg" width="35" height="35"> </div>
                        <div class="user-details">
                            <div class="user-name"> Jane Smith </div>
                            <div class="user-more"> Hello you there? </div>
                        </div>
                        <div class="user-details-status-wrapper"> </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon green"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="user-details-wrapper" data-chat-status="busy" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="David Nester">
                        <div class="user-profile"> <img src="/resources/assets/img/profiles/h.jpg"  alt="" data-src="/resources/assets/img/profiles/h.jpg" data-src-retina="/resources/assets/img/profiles/h2x.jpg" width="35" height="35"> </div>
                        <div class="user-details">
                            <div class="user-name"> David Nester </div>
                            <div class="user-more"> Busy, Do not disturb </div>
                        </div>
                        <div class="user-details-status-wrapper">
                            <div class="clearfix"></div>
                        </div>
                        <div class="user-details-count-wrapper">
                            <div class="status-icon red"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="chat-window-wrapper fadeIn" id="messages-wrapper" style="display:none">
            <div class="chat-header">
                <div class="pull-left">
                    <input type="text" placeholder="search">
                </div>
                <div class="pull-right"> <a href="#" class="" >
                    <div class="iconset top-settings-dark "></div>
                </a> </div>
            </div>
            <div class="clearfix"></div>
            <div class="chat-messages-header">
                <div class="status online"></div>
                <span class="semi-bold">Jane Smith(Typing..)</span> <a href="#" class="chat-back"><i class="icon-custom-cross"></i></a> </div>
            <div class="chat-messages">
                <div class="sent_time">Yesterday 11:25pm</div>
                <div class="user-details-wrapper " >
                    <div class="user-profile"> <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35"> </div>
                    <div class="user-details">
                        <div class="bubble"> Hello, You there? </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="sent_time off">Yesterday 11:25pm</div>
                </div>
                <div class="user-details-wrapper ">
                    <div class="user-profile"> <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35"> </div>
                    <div class="user-details">
                        <div class="bubble"> How was the meeting? </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="sent_time off">Yesterday 11:25pm</div>
                </div>
                <div class="user-details-wrapper ">
                    <div class="user-profile"> <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35"> </div>
                    <div class="user-details">
                        <div class="bubble"> Let me know when you free </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="sent_time off">Yesterday 11:25pm</div>
                </div>
                <div class="sent_time ">Today 11:25pm</div>
                <div class="user-details-wrapper pull-right">
                    <div class="user-details">
                        <div class="bubble sender"> Let me know when you free </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="sent_time off">Sent On Tue, 2:45pm</div>
                </div>
            </div>
        </div>
        <div class="chat-input-wrapper" style="display:none">
            <textarea id="chat-message-input" rows="1" placeholder="Type your message"></textarea>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- END CHAT -->
<!-- END CONTAINER -->
<!-- BEGIN CORE JS FRAMEWORK-->
<script src="/resources/assets/plugins/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/breakpoints.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-block-ui/jqueryblockui.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-lazyload/jquery.lazyload.min.js" type="text/javascript"></script>
<!-- END CORE JS FRAMEWORK -->
<!-- BEGIN PAGE LEVEL JS -->
<script src="/resources/assets/plugins/jquery-slider/jquery.sidr.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-numberAnimate/jquery.animateNumbers.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-ricksaw-chart/js/raphael-min.js"></script>
<script src="/resources/assets/plugins/jquery-ricksaw-chart/js/d3.v2.js"></script>
<script src="/resources/assets/plugins/jquery-ricksaw-chart/js/rickshaw.min.js"></script>
<script src="/resources/assets/plugins/jquery-sparkline/jquery-sparkline.js"></script>
<script src="/resources/assets/plugins/skycons/skycons.js"></script>
<script src="/resources/assets/plugins/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-polymaps/polymaps.min.js" type="text/javascript"></script>


<script src="/resources/assets/plugins/jquery-flot/jquery.flot.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-flot/jquery.flot.resize.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-metrojs/MetroJs.min.js" type="text/javascript" ></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN CORE TEMPLATE JS -->
<script src="/resources/assets/js/core.js" type="text/javascript"></script>
<script src="/resources/assets/js/chat.js" type="text/javascript"></script>
<script src="/resources/assets/js/demo.js" type="text/javascript"></script>
<script src="/resources/assets/js/dashboard_v2.js" type="text/javascript"></script>
<script type="text/javascript">
    function goDetail(seq, titleInUrl){
        location.href = "/hop/"+seq+"/"+titleInUrl;
    }
    $(document).ready(function () {
        $(".live-tile,.flip-list").liveTile();
    });
</script>

<!-- END CORE TEMPLATE JS -->
</body>
</html>