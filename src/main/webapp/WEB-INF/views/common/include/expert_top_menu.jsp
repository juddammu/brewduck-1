<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- BEGIN HEADER-->
<header id="header">

    <!-- BEGIN NAVBAR -->
    <nav class="navbar navbar-default" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="btn btn-transparent btn-equal btn-menu" href="javascript:void(0);"><i class="fa fa-bars fa-lg"></i></a>
            <div class="navbar-brand">
                <a class="main-brand" href="#">
                    <h3 class="text-light text-white"><span>맥덕<strong>모드</strong> </span><i class="fa fa-rocket fa-fw"></i></h3>
                </a>
            </div><!--end .navbar-brand -->
            <a class="btn btn-transparent btn-equal navbar-toggle" data-toggle="collapse" data-target="#header-navbar-collapse"><i class="fa fa-wrench fa-lg"></i></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="header-navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="#"><i class="fa fa-home fa-lg"></i></a></li>
            </ul><!--end .nav -->
            <ul class="nav navbar-nav navbar-right">
                <li><span class="navbar-devider"></span></li>
                <li class="dropdown">
                    <%
                        if (AuthenticationUtils.isAuthenticated() == false) {
                    %>
                    <a href="/account/signup" class="navbar-profile text-bold">회원 가입</a>
                    <%
                    } else {
                    %>
                    <a href="javascript:void(0);" class="navbar-profile dropdown-toggle text-bold" data-toggle="dropdown">
                        <%=AuthenticationUtils.getUser().getName()%>
                        <i class="fa fa-fw fa-angle-down"></i> <img class="img-circle" src="/resources/expert/img/avatar1.jpg?1401297311" alt="" /></a>
                    <ul class="dropdown-menu animation-slide">
                        <li><a href="#">프로필 설정(준비중)</a></li>
                        <li class="divider"></li>
                        <li><a href="/account/logout"><i class="fa fa-fw fa-power-off text-danger"></i> 로그아웃</a></li>
                    </ul><!--end .dropdown-menu -->
                    <%
                        }
                    %>


                </li><!--end .dropdown -->
            </ul><!--end .nav -->
        </div><!--end #header-navbar-collapse -->
    </nav>
    <!-- END NAVBAR -->

</header>
<!-- END HEADER-->