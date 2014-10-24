<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ page import="com.brewduck.web.domain.Account" %>
<div id="tm-header-top">
    <div class="tm-wrap tm-table">
        <div class="tm-logo">
            <a href="/" class="tm-logo-simple">
                <img alt="Logo" src="/resources/front/img/logo.jpg">
            </a>
            <a href="/" class="tm-logo-retina">
                <img alt="Logo" width="142" height="60" src="/resources/front/img/logo@2x.jpg">
            </a>
        </div>
        <!--
        <nav class="tm-top-nav">
            <ul>
                <li>
                    <a href="#">Check out</a>
                </li>
                <li>
                    <a href="#">View cart</a>
                </li>
                <li>
                    <a href="#">View order</a>
                </li>
            </ul>
        </nav>
        -->
        <div class="tm-search">
            <form:form class="form-horizontal form-banded form-bordered" id="searchForm"  action="/search/" name="searchForm" modelAttribute="recipe"  method="post">
                <input type="text" autocomplete="on" placeholder="검색어를 입력해보세요." name="name" class="tm-input">
                <button role="button" type="submit" class="tm-button">검색</button>
            </form:form>
        </div>
    </div>
    <!--tm-wrap-->
</div>
<!--tm-header-top-->
<div id="tm-header-nav" class="tm-menu-style2 tm-sticky-menu">
    <div class="tm-wrap tm-table">
        <nav class="tm-nav">
            <ul class="tm-menu tm-menu-simple">
                <li class="parent  current-menu-item">
                    <a href="/">HOME</a>
                </li>
                <li class="parent">
                    <a href="/recipe/create">레시피 만들기</a>
                </li>
            </ul>
        </nav>
        <!--tm-nav-->
        <div class="tm-social-icons">
            <%
                if (AuthenticationUtils.isAuthenticated() == false) {
            %>
            <a href="/account/login" class="tm-btn small blue">로그인</a>
            <a href="/account/signup" class="tm-btn small blue">가입</a>
            <%
            } else {
            %>

            <a href="/account/logout" class="tm-btn small blue">로그아웃</a>
            <%
                }
            %>
        </div>
        <!--tm-social-icons-->
    </div>
</div>
<!--tm-header-nav-->