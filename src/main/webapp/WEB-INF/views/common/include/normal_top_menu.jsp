<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="page-header">
<!-- BEGIN HEADER TOP -->
<div class="page-header-top">
<div class="container-fluid">
<!-- BEGIN LOGO -->
<div class="page-logo">
    <a href="/"><img src="/resources/assets/admin/layout3/img/logo-default.png" alt="logo"
                     class="logo-default"></a>
</div>
<!-- END LOGO -->
<!-- BEGIN RESPONSIVE MENU TOGGLER -->
<a href="javascript:;" class="menu-toggler"></a>
<!-- END RESPONSIVE MENU TOGGLER -->
<!-- BEGIN TOP NAVIGATION MENU -->
<div class="top-menu">
<ul class="nav navbar-nav pull-right">
<!-- BEGIN NOTIFICATION DROPDOWN -->
<!--li class="dropdown dropdown-extended dropdown-dark dropdown-notification" id="header_notification_bar">
    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <i class="icon-bell"></i>
        <span class="badge badge-default">7</span>
    </a>
    <ul class="dropdown-menu">
        <li class="external">
            <h3>You have <strong>12 pending</strong> tasks</h3>
            <a href="javascript:;">view all</a>
        </li>
        <li>
            <ul class="dropdown-menu-list scroller" style="height: 250px;" data-handle-color="#637283">
                <li>
                    <a href="javascript:;">
                        <span class="time">just now</span>
										<span class="details">
										<span class="label label-sm label-icon label-success">
										<i class="fa fa-plus"></i>
										</span>
										New user registered. </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <span class="time">3 mins</span>
										<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span>
										Server #12 overloaded. </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <span class="time">10 mins</span>
										<span class="details">
										<span class="label label-sm label-icon label-warning">
										<i class="fa fa-bell-o"></i>
										</span>
										Server #2 not responding. </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <span class="time">14 hrs</span>
										<span class="details">
										<span class="label label-sm label-icon label-info">
										<i class="fa fa-bullhorn"></i>
										</span>
										Application error. </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <span class="time">2 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span>
										Database overloaded 68%. </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <span class="time">3 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span>
										A user IP blocked. </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <span class="time">4 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-warning">
										<i class="fa fa-bell-o"></i>
										</span>
										Storage Server #4 not responding dfdfdfd. </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <span class="time">5 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-info">
										<i class="fa fa-bullhorn"></i>
										</span>
										System Error. </span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <span class="time">9 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span>
										Storage server failed. </span>
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</li-->
<!-- END NOTIFICATION DROPDOWN -->
<!-- BEGIN TODO DROPDOWN -->
<!--li class="dropdown dropdown-extended dropdown-dark dropdown-tasks" id="header_task_bar">
    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <i class="icon-calendar"></i>
        <span class="badge badge-default">3</span>
    </a>
    <ul class="dropdown-menu extended tasks">
        <li class="external">
            <h3>You have <strong>12 pending</strong> tasks</h3>
            <a href="javascript:;">view all</a>
        </li>
        <li>
            <ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
                <li>
                    <a href="javascript:;">
										<span class="task">
										<span class="desc">New release v1.2 </span>
										<span class="percent">30%</span>
										</span>
										<span class="progress">
										<span style="width: 40%;" class="progress-bar progress-bar-success" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">40% Complete</span></span>
										</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
										<span class="task">
										<span class="desc">Application deployment</span>
										<span class="percent">65%</span>
										</span>
										<span class="progress">
										<span style="width: 65%;" class="progress-bar progress-bar-danger" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">65% Complete</span></span>
										</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
										<span class="task">
										<span class="desc">Mobile app release</span>
										<span class="percent">98%</span>
										</span>
										<span class="progress">
										<span style="width: 98%;" class="progress-bar progress-bar-success" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">98% Complete</span></span>
										</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
										<span class="task">
										<span class="desc">Database migration</span>
										<span class="percent">10%</span>
										</span>
										<span class="progress">
										<span style="width: 10%;" class="progress-bar progress-bar-warning" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">10% Complete</span></span>
										</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
										<span class="task">
										<span class="desc">Web server upgrade</span>
										<span class="percent">58%</span>
										</span>
										<span class="progress">
										<span style="width: 58%;" class="progress-bar progress-bar-info" aria-valuenow="58" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">58% Complete</span></span>
										</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
										<span class="task">
										<span class="desc">Mobile development</span>
										<span class="percent">85%</span>
										</span>
										<span class="progress">
										<span style="width: 85%;" class="progress-bar progress-bar-success" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">85% Complete</span></span>
										</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
										<span class="task">
										<span class="desc">New UI release</span>
										<span class="percent">38%</span>
										</span>
										<span class="progress progress-striped">
										<span style="width: 38%;" class="progress-bar progress-bar-important" aria-valuenow="18" aria-valuemin="0" aria-valuemax="100"><span class="sr-only">38% Complete</span></span>
										</span>
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</li-->
<!-- END TODO DROPDOWN -->
<li class="droddown dropdown-separator">
    <span class="separator"></span>
</li>

<!-- BEGIN USER LOGIN DROPDOWN -->
<li class="dropdown dropdown-user dropdown-dark">
    <%
        if (AuthenticationUtils.isAuthenticated() == false) {
    %>
    <a href="/account/login">
        <span class="username username-hide-mobile">맥덕인증</span>
    </a>
    <%
    } else {
    %>

    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
       data-close-others="true">
        <img alt="" class="img-circle" src="/resources/assets/admin/layout3/img/avatar9.jpg">
        <span class="username username-hide-mobile"><%=AuthenticationUtils.getUser().getName()%></span>
    </a>
    <ul class="dropdown-menu dropdown-menu-default">
        <li>
            <a href="/homebrew/">
                <i class="icon-user"></i> 포트폴리오 </a>
        </li>
        <!--li>
            <a href="page_calendar.html">
                <i class="icon-calendar"></i> My Calendar </a>
        </li-->
        <!--li>
            <a href="inbox.html">
                <i class="icon-envelope-open"></i> My Inbox <span class="badge badge-danger">
								3 </span>
            </a>
        </li-->
        <!--li>
            <a href="javascript:;">
                <i class="icon-rocket"></i> My Tasks <span class="badge badge-success">
								7 </span>
            </a>
        </li-->
        <li class="divider">
        </li>
        <li>
            <a href="/account/logout">
                <i class="icon-key"></i> 로그 아웃 </a>
        </li>
    </ul>
    <%
        }
    %>


</li>
<!-- END USER LOGIN DROPDOWN -->
</ul>
</div>
<!-- END TOP NAVIGATION MENU -->
</div>
</div>
<!-- END HEADER TOP -->
<!-- BEGIN HEADER MENU -->
<div class="page-header-menu">
    <div class="container-fluid">
        <!-- BEGIN HEADER SEARCH BOX -->
        <form class="search-form" action="/search/" method="POST">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="검색어를 입력하세요." name="name" id="name">
					<span class="input-group-btn">
					<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
					</span>
            </div>
        </form>
        <!-- END HEADER SEARCH BOX -->
        <!-- BEGIN MEGA MENU -->
        <!-- DOC: Apply "hor-menu-light" class after the "hor-menu" class below to have a horizontal menu with white background -->
        <!-- DOC: Remove data-hover="dropdown" and data-close-others="true" attributes below to disable the dropdown opening on mouse hover -->
        <div class="hor-menu ">
            <ul class="nav navbar-nav">
                <li>
                    <a href="/">홈</a>
                </li>
                <li>
                    <a href="#">레시피</a>
                </li>
                <!--li>
                    <a href="#">만들기</a>
                </li-->
                <li class="menu-dropdown classic-menu-dropdown ">
                    <a data-hover="megamenu-dropdown" data-close-others="true"
                       data-toggle="dropdown" href="javascript:;">
                        <spring:message code="menu.ingredient"/> <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu pull-left">
                        <li class="">
                            <a href="/style/">
                                <i class="fa fa-glass"></i>
                                <spring:message code="menu.style"/>
                            </a>
                        </li>
                        <li class="">
                            <a href="/fermentable/">
                                <i class="fa fa-recycle"></i>
                                <spring:message code="menu.fermentable"/>
                            </a>
                        </li>
                        <li class="">
                            <a href="/hop/">
                                <i class="fa fa-leaf"></i>
                                <spring:message code="menu.hop"/>
                            </a>
                        </li>
                        <li class="">
                            <a href="/yeast/">
                                <i class="fa fa-flask"></i>
                                <spring:message code="menu.yeast"/>
                            </a>
                        </li>
                        <li class="">
                            <a href="/misc/">
                                <i class="fa fa-asterisk"></i>
                                <spring:message code="menu.misc"/>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--li class="menu-dropdown classic-menu-dropdown ">
                    <a data-hover="megamenu-dropdown" data-close-others="true"
                       data-toggle="dropdown" href="javascript:;">
                        <spring:message code="menu.board"/> <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu pull-left">
                        <li class="">
                            <a href="/board/main/1">
                                <i class="fa fa-book"></i>
                                <spring:message code="menu.notice"/>
                            </a>
                        </li>
                        <li class="">
                            <a href="/board/main/2">
                                <i class="fa fa-book"></i>
                                <spring:message code="menu.free"/>
                            </a>
                        </li>
                        <li class="">
                            <a href="/board/main/3">
                                <i class="fa fa-glass"></i>
                                <spring:message code="menu.styleboard"/>
                            </a>
                        </li>
                        <li class="">
                            <a href="/board/main/4">
                                <i class="fa fa-recycle"></i>
                                <spring:message code="menu.fermentableboard"/>
                            </a>
                        </li>
                        <li class="">
                            <a href="/board/main/5">
                                <i class="fa fa-leaf"></i>
                                <spring:message code="menu.hopboard"/>
                            </a>
                        </li>
                        <li class="">
                            <a href="/board/main/6">
                                <i class="fa fa-flask"></i>
                                <spring:message code="menu.yeastboard"/>
                            </a>
                        </li>
                        <li class="">
                            <a href="/board/main/7">
                                <i class="fa fa-asterisk"></i>
                                <spring:message code="menu.miscboard"/>
                            </a>
                        </li>
                    </ul>
                </li-->

                <li class="menu-dropdown classic-menu-dropdown ">
                    <a data-hover="megamenu-dropdown" data-close-others="true"
                       data-toggle="dropdown" href="javascript:;">
                        <spring:message code="menu.calculators"/> <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu pull-left">
                        <li class="">
                            <a href="/calc/unit-converter">
                                <i class="fa fa-joomla"></i>
                                <spring:message code="menu.unit.calculators"/>
                            </a>
                        </li>
                        <li class="">
                            <a href="/calc/abv-calculator">
                                <i class="fa fa-glass"></i>
                                <spring:message code="menu.alcohol.calculators"/>
                            </a>
                        </li>
                        <li class="">
                            <a href="/calc/color-converter">
                                <i class="fa fa-recycle"></i>
                                <spring:message code="menu.color.converter"/>
                            </a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
        <!-- END MEGA MENU -->
    </div>
</div>
<!-- END HEADER MENU -->
</div>
