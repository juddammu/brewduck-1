<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<nav class="navbar horizontal-menu navbar-fixed-top"><!-- set fixed position by adding class "navbar-fixed-top" -->

    <div class="navbar-inner">

        <!-- Navbar Brand -->
        <div class="navbar-brand">
            <a href="dashboard-1.html" class="logo">
                <img src="/resources/commons/images/logo-white-bg@2x.png" width="80" alt="" class="hidden-xs" />
                <img src="/resources/commons/images/logo@2x.png" width="80" alt="" class="visible-xs" />
            </a>
            <a href="#" data-toggle="settings-pane" data-animate="true">
                <i class="linecons-cog"></i>
            </a>
        </div>

        <!-- Mobile Toggles Links -->
        <div class="nav navbar-mobile">

            <!-- This will toggle the mobile menu and will be visible only on mobile devices -->
            <div class="mobile-menu-toggle">
                <!-- This will open the popup with user profile settings, you can use for any purpose, just be creative -->
                <a href="#" data-toggle="settings-pane" data-animate="true">
                    <i class="linecons-cog"></i>
                </a>

                <a href="#" data-toggle="user-info-menu-horizontal">
                    <i class="fa-bell-o"></i>
                    <span class="badge badge-success">7</span>
                </a>

                <!-- data-toggle="mobile-menu-horizontal" will show horizontal menu links only -->
                <!-- data-toggle="mobile-menu" will show sidebar menu links only -->
                <!-- data-toggle="mobile-menu-both" will show sidebar and horizontal menu links -->
                <a href="#" data-toggle="mobile-menu-horizontal">
                    <i class="fa-bars"></i>
                </a>
            </div>

        </div>

        <div class="navbar-mobile-clear"></div>



        <!-- main menu -->

        <ul class="navbar-nav">
            <li>
                <a href="/recipe/">
                    <i class="fa-search"></i>
                    <span class="title">찾기</span>
                </a>
            </li>
            <li>
                <a href="/recipe/create">
                    <i class="fa-edit"></i>
                    <span class="title">만들기</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa-book"></i>
                    <span class="title">재료</span>
                </a>
                <ul>
                    <li>
                        <a href="/style/">
                            <i class="linecons-star"></i>
                            <span class="title"><spring:message code="menu.style"/></span>
                        </a>
                    </li>
                    <li>
                        <a href="/fermentable/">
                            <i class="linecons-star"></i>
                            <span class="title"><spring:message code="menu.fermentable"/></span>
                        </a>
                    </li>
                    <li>
                        <a href="/hop/">
                            <i class="linecons-star"></i>
                            <span class="title"><spring:message code="menu.hop"/></span>
                        </a>
                    </li>
                    <li>
                        <a href="/yeast/">
                            <i class="linecons-star"></i>
                            <span class="title"><spring:message code="menu.yeast"/></span>
                        </a>
                    </li>
                    <li>
                        <a href="/misc/">
                            <i class="linecons-star"></i>
                            <span class="title"><spring:message code="menu.extra"/></span>
                        </a>
                    </li>
                </ul>
            </li>
            <!-- Added in v1.2 -->
            <li class="dropdown hover-line language-switcher">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="/resources/commons/images/flags/flag-ko.png" alt="flag-ko" />
                    한국어
                </a>

                <ul class="dropdown-menu languages">
                    <li>
                        <a href="?lang=en">
                            <img src="/resources/commons/images/flags/flag-es.png" alt="flag-uk" />
                            English
                        </a>
                    </li>
                    <li class="active">
                        <a href="?lang=ko">
                            <img src="assets/images/flags/flag-ko.png" alt="flag-ko" />
                            한국어
                        </a>
                    </li>
                </ul>
            </li>

        </ul>


        <!-- notifications and other links -->
        <ul class="nav nav-userinfo navbar-right">

            <li class="search-form"><!-- You can add "always-visible" to show make the search input visible -->

                <form method="get" action="extra-search.html">
                    <input type="text" name="s" class="form-control search-field" placeholder="검색어를 입력하세요." />

                    <button type="submit" class="btn btn-link">
                        <i class="linecons-search"></i>
                    </button>
                </form>

            </li>



            <li class="dropdown user-profile">
                <a href="#" data-toggle="dropdown">
                    <img src="/resources/commons/images/user-1.png" alt="user-image" class="img-circle img-inline userpic-32" width="28" />
						<span>
							Arlind Nushi
							<i class="fa-angle-down"></i>
						</span>
                </a>

                <ul class="dropdown-menu user-profile-menu list-unstyled">
                    <li>
                        <a href="#edit-profile">
                            <i class="fa-edit"></i>
                            레시피 만들기
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="fa-user"></span>&nbsp;&nbsp;프로필 설정</a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="fa-cogs"></span>&nbsp;&nbsp;계정 설정</a>
                    </li>
                    <li class="last">
                        <a href="/account/logout">
                            <i class="fa-lock"></i>
                            로그 아웃
                        </a>
                    </li>
                </ul>
            </li>


        </ul>

    </div>

</nav>