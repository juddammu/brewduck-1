<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ page import="com.brewduck.web.domain.Account" %>


<div class="header navbar navbar-inverse ">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="navbar-inner">
        <div class="header-seperation">
            <ul class="nav pull-left notifcation-center" id="main-menu-toggle-wrapper" style="display:none">
                <li class="dropdown"> <a id="main-menu-toggle" href="#main-menu"  class="" >
                    <div class="iconset top-menu-toggle-white"></div>
                </a> </li>
            </ul>
            <!-- BEGIN LOGO -->
            <a href="/"><img src="/resources/assets/img/logo.png" class="logo" alt=""  data-src="/resources/assets/img/logo.png" data-src-retina="/resources/assets/img/logo2x.png" width="106" height="21"/></a>
            <!-- END LOGO -->
            <ul class="nav pull-right notifcation-center">
                <li class="dropdown" id="header_task_bar"> <a href="#" class="dropdown-toggle active" data-toggle="">
                    <div class="iconset top-home"></div>
                </a> </li>
                <li class="dropdown" id="header_inbox_bar" > <a href="#" class="dropdown-toggle" >
                    <div class="iconset top-messages"></div>
                    <span class="badge" id="msgs-badge">3</span> </a></li>
                <li class="dropdown" id="portrait-chat-toggler" style="display:none"> <a href="#sidr" class="chat-menu-toggle">
                    <div class="iconset top-chat-white "></div>
                </a> </li>
            </ul>
        </div>
        <!-- END RESPONSIVE MENU TOGGLER -->
        <div class="header-quick-nav" >
            <!-- BEGIN TOP NAVIGATION MENU -->
            <div class="pull-left">
                <ul class="nav quick-section">
                    <li class="quicklinks"> <a href="#" class="" id="layout-condensed-toggle" >
                        <div class="iconset top-menu-toggle-dark"></div>
                    </a> </li>
                </ul>
                <ul class="nav quick-section">
                    <li class="quicklinks"> <a href="#" class="" >
                        <div class="iconset top-tiles"></div>
                    </a> </li>
                    <li class="input-prepend inside search-form no-boarder"> <span class="add-on"> <span class="iconset top-search"></span></span>
                        <input name="" type="text"  class="no-boarder " placeholder="검색어를 입력하세요" style="width:180px;">
                    </li>
                </ul>
            </div>
            <!-- END TOP NAVIGATION MENU -->
            <!-- BEGIN CHAT TOGGLER -->

            <div class="nav quick-section pull-right">
                <!-- start -->
                <ul class="login">
                <%
                    if (AuthenticationUtils.isAuthenticated() == false) {
                %>
                    <form:form id="authentication" class="animated fadeIn" method="POST" action="/account/authentication" modelAttribute="account">
                    <li>
                        <input type="text" id="email" name="email" class="form-control input-sm" style="width:120px;" placeholder="이메일" />      &nbsp;    &nbsp;
                    </li>
                    <li>
                        <input type="password" id="password" name="password" class="form-control input-sm" style="width:120px;" placeholder="패스워드" />
                    </li>
                    <li>
                        <button type="submit" class="btn btn-small btn-primary btn-cons-md"> 로그인</button>
                    </li>
                    </form:form>
                    <%
                    } else {
                    %>
                    <li>
                        <a href="/recipe/create"><button type="submit" class="btn btn-small btn-primary btn-cons-md"> 새로운 레시피 만들기</button></a>
                    </li>
                    <li class="quicklinks">
                        <a data-toggle="dropdown" class="dropdown-toggle  pull-right " href="#" id="user-options">
                            <div class="iconset top-settings-dark "></div>
                        </a>
                        <%
                            }
                        %>
                        <ul class="dropdown-menu  pull-right" role="menu" aria-labelledby="user-options">
                            <li><a href="user-profile.html"> My Account </a> </li>
                            <!--li><a href="calender.html">My Calendar</a> </li>
                            <li><a href="email.html"> My Inbox&nbsp;&nbsp;<span class="badge badge-important animated bounceIn">2</span></a> </li-->
                            <li class="divider"></li>
                            <li><a href="/account/logout"><i class="fa fa-power-off"></i>&nbsp;&nbsp;Log Out</a></li>
                        </ul>
                    </li>
                </ul>
                <!-- end -->

            </div>
            <!-- END CHAT TOGGLER -->
        </div>
        <!-- END TOP NAVIGATION MENU -->
    </div>
    <!-- END TOP NAVIGATION BAR -->
</div>
