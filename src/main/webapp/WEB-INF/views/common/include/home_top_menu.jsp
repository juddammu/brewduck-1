<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <div class="iconset top-reload"></div>
                    </a> </li>
                    <li class="quicklinks"> <span class="h-seperate"></span></li>
                    <li class="quicklinks"> <a href="#" class="" >
                        <div class="iconset top-tiles"></div>
                    </a> </li>
                    <li class="m-r-10 input-prepend inside search-form no-boarder"> <span class="add-on"> <span class="iconset top-search"></span></span>
                        <input name="" type="text"  class="no-boarder " placeholder="Search Dashboard" style="width:250px;">
                    </li>
                </ul>
            </div>
            <!-- END TOP NAVIGATION MENU -->
            <!-- BEGIN CHAT TOGGLER -->
            <div class="pull-right">
                <div class="chat-toggler">
                    <div id="notification-list" style="display:none">
                        <div style="width:300px">
                            <div class="notification-messages info">
                                <div class="user-profile"> <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35"> </div>
                                <div class="message-wrapper">
                                    <div class="heading"> David Nester - Commented on your wall </div>
                                    <div class="description"> Meeting postponed to tomorrow </div>
                                    <div class="date pull-left"> A min ago </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="notification-messages danger">
                                <div class="iconholder"> <i class="icon-warning-sign"></i> </div>
                                <div class="message-wrapper">
                                    <div class="heading"> Server load limited </div>
                                    <div class="description"> Database server has reached its daily capicity </div>
                                    <div class="date pull-left"> 2 mins ago </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="notification-messages success">
                                <div class="user-profile"> <img src="/resources/assets/img/profiles/h.jpg"  alt="" data-src="/resources/assets/img/profiles/h.jpg" data-src-retina="/resources/assets/img/profiles/h2x.jpg" width="35" height="35"> </div>
                                <div class="message-wrapper">
                                    <div class="heading"> You haveve got 150 messages </div>
                                    <div class="description"> 150 newly unread messages in your inbox </div>
                                    <div class="date pull-left"> An hour ago </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <!--div class="profile-pic"> <img src="/resources/assets/img/profiles/avatar_small.jpg"  alt="" data-src="/resources/assets/img/profiles/avatar_small.jpg" data-src-retina="/resources/assets/img/profiles/avatar_small2x.jpg" width="35" height="35" /> </div-->
                </div>
                <ul class="nav quick-section pull-right">
                    <li class="quicklinks">
<%
                            if (AuthenticationUtils.isAuthenticated() == false) {
%>


                        <%
                        } else {
%>
                        <a data-toggle="dropdown" class="dropdown-toggle  pull-right " href="#" id="user-options">
                            <div class="iconset top-settings-dark "></div>
                        </a>
<%
                        }
%>
                        <ul class="dropdown-menu  pull-right" role="menu" aria-labelledby="user-options">
                            <li><a href="user-profile.html"> My Account </a> </li>
                            <li><a href="calender.html">My Calendar</a> </li>
                            <li><a href="email.html"> My Inbox&nbsp;&nbsp;<span class="badge badge-important animated bounceIn">2</span></a> </li>
                            <li class="divider"></li>
                            <li><a href="login.html"><i class="fa fa-power-off"></i>&nbsp;&nbsp;Log Out</a></li>
                        </ul>
                    </li>
                    <!--li class="quicklinks"> <a id="chat-menu-toggle" href="#sidr" class="chat-menu-toggle" >
                        <div class="iconset top-chat-dark "><span class="badge badge-important hide" id="chat-message-count">1</span></div>
                    </a-->
                        <div class="simple-chat-popup chat-menu-toggle hide" >
                            <div class="simple-chat-popup-arrow"></div>
                            <div class="simple-chat-popup-inner">
                                <div style="width:100px">
                                    <div class="semi-bold">David Nester</div>
                                    <div class="message">Hey you there </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- END CHAT TOGGLER -->
        </div>
        <!-- END TOP NAVIGATION MENU -->
    </div>
    <!-- END TOP NAVIGATION BAR -->
</div>
