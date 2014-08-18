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
            <form>
                <input type="text" autocomplete="on" placeholder="검색어를 입력해보세요." name="s" class="tm-input">
                <button role="button" type="submit" class="tm-button">검색</button>
            </form>
        </div>
    </div>
    <!--tm-wrap-->
</div>
<!--tm-header-top-->
<div id="tm-header-nav" class="tm-menu-style1 tm-sticky-menu">
    <div class="tm-wrap tm-table">
        <nav class="tm-nav">
            <ul class="tm-menu tm-menu-simple">
                <li class="parent">
                    <a href="/">HOME</a>
                </li>
                <li class="parent">
                    <a href="/recipe/create">레시피 만들기</a>
                </li>
                <li class="parent">
                    <a href="/account/login">로그인</a>
                </li>
            </ul>
        </nav>
        <!--tm-nav-->
        <div class="tm-social-icons">
            <a href="#" class="tm-icon-facebook">
                <i class="fa fa-facebook"></i>
            </a>
        </div>
        <!--tm-social-icons-->
    </div>
</div>
<!--tm-header-nav-->