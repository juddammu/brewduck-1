<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ page import="com.brewduck.web.domain.Account" %>


<div class="top-fixed-box">
    <div class="container">
        <div class="contact-box pull-left">
            <div class="email pull-left">
                <i class="fa fa-envelope"></i>
                Email: frank.lim@brewduck.com
            </div>
        </div>

        <div class="pull-right">
            <div class="social">
                <a class="sbtnf sbtnf-rounded color color-hover icon-facebook" href="#"></a>
                <a class="sbtnf sbtnf-rounded color color-hover icon-twitter" href="#"></a>
                <a class="sbtnf sbtnf-rounded color color-hover icon-gplus" href="#"></a>
                <a class="sbtnf sbtnf-rounded color color-hover icon-linkedin" href="#"></a>
            </div>
            <a href="#" class="btn btn-primary">레시피 만들기</a>
        </div>

        <div class="clearfix"></div>
    </div>
</div>

<!-- 헤더 메뉴 시작 -->
<header class="header header-two">
<div class="container">
<div class="row">
<div class="col-xs-6 col-md-2 col-lg-3 logo-box">
    <div class="logo">
        <a href="index.html">
            <img src="/resources/asset/img/logo.png" class="logo-img" alt="">
        </a>
    </div>
</div><!-- .logo-box -->

<div class="col-xs-6 col-md-10 col-lg-9 right-box">
<div class="right-box-wrapper">
<div class="header-icons">
    <div class="search-header hidden-600">

        <a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                                              <path d="M12.001,10l-0.5,0.5l-0.79-0.79c0.806-1.021,1.29-2.308,1.29-3.71c0-3.313-2.687-6-6-6C2.687,0,0,2.687,0,6
                                              s2.687,6,6,6c1.402,0,2.688-0.484,3.71-1.29l0.79,0.79l-0.5,0.5l4,4l2-2L12.001,10z M6,10c-2.206,0-4-1.794-4-4s1.794-4,4-4
                                              s4,1.794,4,4S8.206,10,6,10z"></path>
                <image src="http://template.progressive.itembridge.com/2.1.8/img/png-icons/search-icon.png" alt="" width="16" height="16" style="vertical-align: top;">
                                            </svg>
        </a>
    </div><!-- .search-header -->

    <div class="btn-group">
        <a href="/account/signup" class="btn btn-info">회원 가입</a>
    </div><!-- .cart-header -->
    <div class="btn-group">
        <a href="/account/login" class="btn btn-success">로그인</a>
    </div><!-- .cart-header -->
</div><!-- .header-icons -->

<div class="primary">
    <div class="navbar navbar-default" role="navigation">
        <button type="button" class="navbar-toggle btn-navbar collapsed" data-toggle="collapse" data-target=".primary .navbar-collapse">
            <span class="text">Menu</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        <nav class="collapse collapsing navbar-collapse">
            <ul class="nav navbar-nav navbar-center">
                <li class="parent"> <a>기초재료</a>
                    <ul class="sub">
                        <li><a href="/style/">스타일 (BJCP STYLE)</a></li>
                        <li><a href="/fermentable/">발효재료 (Fermentable) </a></li>
                        <li><a href="/hop/">홉 (Hop) <span class="item-new">Hot</span></a></li>
                        <li><a href="/yeast/">효모 (Yeast)</a></li>
                        <li><a href="/misc/">기타재료</a></li>
                    </ul>
                </li>
                <li class="parent megamenu promo">
                    <a href="#">레시피 찾기</a>
                    <ul class="sub">
                        <li class="sub-wrapper">
                            <div class="sub-list">
                                <div class="box closed">
                                    <h6 class="title">라거</h6>
                                    <ul>
                                        <li><a href="#">LIGHT LAGER</a></li>
                                        <li><a href="#">BOCK</a></li>
                                        <li><a href="#">필스너 <span class="item-new bg-warning">Wow</span></a></li>
                                    </ul>
                                </div><!-- .box -->

                                <div class="box closed">
                                    <h6 class="title">에일</h6>
                                    <ul>
                                        <li><a href="#">미국식 에일</a></li>
                                        <li><a href="#">영국식 브라운 에일</a></li>
                                        <li><a href="#">세종</a></li>
                                    </ul>
                                </div><!-- .box -->

                                <div class="box closed">
                                    <h6 class="title">IPA/스트롱</h6>
                                    <ul>
                                        <li><a href="#">INDIA PALE ALE (IPA) <span class="item-new">HOT</span></a></li>
                                        <li><a href="#">BELGIAN STRONG ALE</a></li>
                                        <li><a href="#">STRONG ALE</a></li>
                                    </ul>
                                </div><!-- .box -->

                                <div class="box closed">
                                    <h6 class="title">밀맥주</h6>
                                    <ul>
                                        <li><a href="#">로겐비어 (독일식 호밀 맥주)</a></li>
                                        <li><a href="#">윗비어</a></li>
                                        <li><a href="#">바이젠복</a></li>
                                    </ul>
                                </div><!-- .box -->

                                <div class="box closed">
                                    <h6 class="title">포터/스타우트</h6>
                                    <ul>
                                        <li><a href="#">발틱 포터</a></li>
                                        <li><a href="#">오트밀 스타우트</a></li>
                                        <li><a href="#">러시안 임페리얼 스타우트</a></li>
                                    </ul>
                                </div><!-- .box -->

                                <div class="box closed">
                                    <h6 class="title">사우어 및 기타</h6>
                                    <ul>
                                        <li><a href="#">베를리너 바이세</a></li>
                                        <li><a href="#">과일맥주</a></li>
                                        <li><a href="#">과일 람빅</a></li>
                                    </ul>
                                </div><!-- .box -->
                            </div><!-- .sub-list -->

                            <div class="promo-block">
                                <a href="#">
                                    <img src="http://template.progressive.itembridge.com/2.1.8/img/content/megamenu-big.png" width="253" height="457" alt="">
                                </a>
                            </div><!-- .promo-block -->
                        </li>
                    </ul><!-- .sub -->
                </li>
                <li>
                    <a href="/recipe/create">레시피 만들기</a>
                </li>
                <li class="parent">
                    <a href="shop.html">가이드</a>
                    <ul class="sub">
                        <li><a href="#">Catalog (Grid)</a></li>
                    </ul>
                </li>
                <li class="parent megamenu promo">
                    <a href="#">커뮤니티</a>
                    <ul class="sub">
                        <li class="sub-wrapper">
                            <div class="sub-list">
                                <div class="box closed">
                                    <h6 class="title">Savant Apple Integration</h6>
                                    <ul>
                                        <li><a href="#">iPad, iPod touch, iPhone &amp; Mac Control</a></li>
                                        <li><a href="#">iPod touch Remote Control</a></li>
                                        <li><a href="#">Savant Host (Mac Mini) <span class="item-new bg-warning">Wow</span></a></li>
                                    </ul>
                                </div><!-- .box -->

                                <div class="box closed">
                                    <h6 class="title">Savant Audio/Video Control</h6>
                                    <ul>
                                        <li><a href="#">Distributed Audio &amp; Video</a></li>
                                        <li><a href="#">Matrix Switchers</a></li>
                                        <li><a href="#">Audio/Video Processing</a></li>
                                    </ul>
                                </div><!-- .box -->

                                <div class="box closed">
                                    <h6 class="title">Savant Display Solutions</h6>
                                    <ul>
                                        <li><a href="#">Video Tiling <span class="item-new">New</span></a></li>
                                        <li><a href="#">On-Screen Display</a></li>
                                        <li><a href="#">Digital Messaging</a></li>
                                    </ul>
                                </div><!-- .box -->

                                <div class="box closed">
                                    <h6 class="title">Savant Sound</h6>
                                    <ul>
                                        <li><a href="#">Distributed Audio Controller</a></li>
                                        <li><a href="#">Multi-channel Amplifiers <span class="item-new">New</span></a></li>
                                        <li><a href="#">Architectural Speakers</a></li>
                                    </ul>
                                </div><!-- .box -->

                                <div class="box closed">
                                    <h6 class="title">Savant Display Solutions</h6>
                                    <ul>
                                        <li><a href="#">Video Tiling <span class="item-new bg-success">Coming Soon</span></a></li>
                                        <li><a href="#">On-Screen Display</a></li>
                                        <li><a href="#">Digital Messaging</a></li>
                                    </ul>
                                </div><!-- .box -->

                                <div class="box closed">
                                    <h6 class="title">Savant Sound</h6>
                                    <ul>
                                        <li><a href="#">Distributed Audio Controller</a></li>
                                        <li><a href="#">Multi-channel Amplifiers</a></li>
                                        <li><a href="#">Architectural Speakers <span class="item-new">New</span></a></li>
                                    </ul>
                                </div><!-- .box -->
                            </div><!-- .sub-list -->

                            <div class="promo-block">
                                <a href="#">
                                    <img src="http://template.progressive.itembridge.com/2.1.8/img/content/megamenu-big.png" width="253" height="457" alt="">
                                </a>
                            </div><!-- .promo-block -->
                        </li>
                    </ul><!-- .sub -->
                </li>
            </ul>
        </nav>
    </div>
</div><!-- .primary -->
</div>
</div>
<div class="phone-active col-sm-9 col-md-9">
    <a href="#" class="close"><span>close</span>×</a>
    <span class="title">Call Us</span> <strong>+1 (777) 123 45 67</strong>
</div>
<div class="search-active col-sm-9 col-md-9">
    <a href="#" class="close"><span>close</span>×</a>
    <form name="search-form">
        <input class="search-string form-control" type="search" placeholder="검색어를 입력하세요." name="search-string">
        <button class="search-submit">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
          <path fill="#231F20" d="M12.001,10l-0.5,0.5l-0.79-0.79c0.806-1.021,1.29-2.308,1.29-3.71c0-3.313-2.687-6-6-6C2.687,0,0,2.687,0,6
          s2.687,6,6,6c1.402,0,2.688-0.484,3.71-1.29l0.79,0.79l-0.5,0.5l4,4l2-2L12.001,10z M6,10c-2.206,0-4-1.794-4-4s1.794-4,4-4
          s4,1.794,4,4S8.206,10,6,10z"></path>
                <image src="http://template.progressive.itembridge.com/2.1.8/img/png-icons/search-icon.png" alt="" width="16" height="16" style="vertical-align: top;">
        </svg>
        </button>
    </form>
</div>
</div><!--.row -->
</div>
</header><!-- .header -->
                <%
                    if (AuthenticationUtils.isAuthenticated() == false) {
                %>
                    <!--form:form id="authentication" class="animated fadeIn" method="POST" action="/account/authentication" modelAttribute="account">
                    <li>
                        <input type="text" id="email" name="email" class="form-control input-sm" style="width:120px;" placeholder="이메일" />      &nbsp;    &nbsp;
                    </li>
                    <li>
                        <input type="password" id="password" name="password" class="form-control input-sm" style="width:120px;" placeholder="패스워드" />
                    </li>
                    <li>
                        <button type="submit" class="btn btn-small btn-primary btn-cons-md"> 로그인</button>
                    </li>
                    <!--/form:form-->
                    <%
                    } else {
                    %>
                        <%
                            }
                        %>