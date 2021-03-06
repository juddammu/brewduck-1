<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html >
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if IE 9]> <html class="no-js ie9 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en-US"> <!--<![endif]-->
<head>
    <!-- start:global -->
    <meta charset="utf-8">
    <!-- end:global -->

    <!-- start:page title -->
    <title>BREWDUCK - 세상에는 당신이 맛보지 않은 맥주들이 너무나 많습니다.</title>
    <!-- end:page title -->

    <!-- start:meta info -->
    <meta name="description" content="BRWEDUCK - 세상에는 당신이 맛보지 않은 맥주들이 너무나 많습니다."/>
    <meta name="keywords"
          content="ale, beer, brewduck, Home Brewing, lager, SOMA, 곡주, 공방, 과실주, 라거, 맥주, 문화, 바이젠, 발효, 숙성, 양조, 에일, 옥수동, 옥토버페스트, 와인, 맥만동, 임세환, 제조, 주조, 증류주, 포도주, 프로젝트, 홈 브루잉, 효모"/>
    <meta name="Author" content="brewduck, http://www.brewduck.com, 맥주 대동여지도"/>
    <!-- end:meta info -->

    <!-- start:responsive web design -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- end:responsive web design -->

    <!-- start:web fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,500italic,400italic,700,700italic%7CRoboto+Condensed:400,700%7CRoboto+Slab'
          rel='stylesheet' type='text/css'>
    <!-- end:web fonts -->

    <!-- start:stylesheets -->
    <link rel="stylesheet" href="/resources/front/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/front/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/front/assets/css/weather-icons.min.css">
    <link rel="stylesheet" href="/resources/front/assets/css/jquery.sidr.dark.css">
    <link rel="stylesheet" href="/resources/front/assets/css/photobox.css">
    <link rel="stylesheet" href="/resources/front/assets/css/datepicker.css">
    <link rel="stylesheet" href="/resources/front/assets/css/style.css">
    <link rel="stylesheet" href="/resources/front/assets/css/colors.css">

    <!-- end:stylesheets -->

    <!--[if lte IE 8]>
    <script src="/resources/front/assets/js/respond.js"></script>
    <![endif]-->
    <!--[if lt IE 9]>
    <link rel="stylesheet" href="/resources/front/assets/css/photobox.ie.css">
    <script src="/resources/front/assets/js/html5shiv.js"></script>
    <![endif]-->
</head>
<body>

<!-- start:page outer wrap -->
<div id="page-outer-wrap">
<!-- start:page inner wrap -->
<div id="page-inner-wrap">

<!-- start:page header mobile -->
<header id="page-header-mobile" class="visible-xs">

    <!-- start:sidr -->
    <div id="sidr">
        <form id="search-form-mobile">
            <input type="text" name="qsearch" placeholder="검색어를 입력해보세요."/>
        </form>
        <ul>
            <li class="cat-news">
                <a class="more" href="#"><i class="fa fa-angle-down"></i></a>
                <a href="#">신규 레시피</a>
                <!--ul class="subnav-menu">
                    <li><a href="#">Nation</a></li>
                    <li><a href="#">World</a></li>
                    <li><a href="#">Elections</a></li>
                    <li><a href="#">Opinions</a></li>
                    <li><a href="#">Lorem ipsum</a></li>
                    <li><a href="#">Dolor sit amet</a></li>
                    <li><a href="#">Photo galleries</a></li>
                </ul-->
            </li>
            <li class="cat-sports">
                <a class="more" href="#"><i class="fa fa-angle-down"></i></a>
                <a href="category-1.html">Sports</a>
                <ul>
                    <li><a href="#">Football</a></li>
                    <li><a href="#">Pro Basketball</a></li>
                    <li><a href="#">College Basketball</a></li>
                    <li><a href="#">Hockey</a></li>
                    <li><a href="#">Baseball</a></li>
                    <li><a href="#">Soccer</a></li>
                    <li><a href="#">Photo galleries</a></li>
                </ul>
            </li>
            <li class="cat-lifestyle">
                <a class="more" href="#"><i class="fa fa-angle-down"></i></a>
                <a href="#">Lifestyle</a>
                <ul>
                    <li><a href="#">Fashion</a></li>
                    <li><a href="#">Beauty</a></li>
                    <li><a href="#">Health</a></li>
                    <li><a href="#">Parenting</a></li>
                    <li><a href="#">Home & garden</a></li>
                </ul>
            </li>
            <li class="cat-showtime">
                <a class="more" href="#"><i class="fa fa-angle-down"></i></a>
                <a href="category-2.html">Showtime</a>
                <ul>
                    <li><a href="#">Movies</a></li>
                    <li><a href="#">Music</a></li>
                    <li><a href="#">Television</a></li>
                    <li><a href="#">Gaming</a></li>
                    <li><a href="#">Lorem ipsum</a></li>
                    <li><a href="#">Dolor sit amet</a></li>
                    <li><a href="#">Photo galleries</a></li>
                </ul>
            </li>
            <li class="cat-tech">
                <a class="more" href="#"><i class="fa fa-angle-down"></i></a>
                <a href="#">Tech</a>
                <ul>
                    <li><a href="#">Gadgets</a></li>
                    <li><a href="#">Mobile</a></li>
                    <li><a href="#">Internet</a></li>
                    <li><a href="#">Security</a></li>
                    <li><a href="#">Technocast</a></li>
                </ul>
            </li>
            <li class="cat-business">
                <a class="more" href="#"><i class="fa fa-angle-down"></i></a>
                <a href="#">Business</a>
                <ul>
                    <li><a href="#">Investments</a></li>
                    <li><a href="#">Loans & guarantees</a></li>
                    <li><a href="#">Human resources</a></li>
                    <li><a href="#">Culture & media</a></li>
                    <li><a href="#">Market rules</a></li>
                </ul>
            </li>
            <li class="cat-extra">
                <a class="more" href="#"><i class="fa fa-angle-down"></i></a>
                <a href="#">Extra +</a>
                <ul>
                    <li><a href="archive.html">Archive page</a></li>
                    <li><a href="author.html">Author page</a></li>
                    <li><a href="contact.html">Contact page</a></li>
                    <li>
                        <a href="#">Blog styles</a>
                        <ul>
                            <li><a href="category-1.html">Style one</a></li>
                            <li><a href="category-2.html">Style two</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Single post styles</a>
                        <ul>
                            <li><a href="article-1.html">Single post default</a></li>
                            <li><a href="article-2.html">Single post with photos</a></li>
                            <li><a href="article-3.html">Single post with review</a></li>
                            <li><a href="article-4.html">Single post with audio</a></li>
                            <li><a href="article-full-1.html">Full width style one</a></li>
                            <li><a href="article-full-2.html">Full width style two</a></li>
                            <li><a href="article-cover-1.html">Single post with cover photo</a></li>
                            <li><a href="article-cover-2.html">Single post with cover video</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Video & photo</a>
                        <ul>
                            <li><a href="video.html">Video page</a></li>
                            <li><a href="video-full.html">Video page - full width</a></li>
                            <li><a href="gallery.html">Gallery page</a></li>
                            <li><a href="gallery-full.html">Gallery page - full width</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>

    </div>
    <!-- end:sidr -->

    <!-- start:row -->
    <div class="row">

        <!-- start:col -->
        <div class="col-xs-6">
            <!-- start:logo -->
            <h1><a href="#"><img src="/resources/front/images/logo-white-mobile.png"
                                 alt="Weekly News"/></a></h1>
            <!-- end:logo -->
        </div>
        <!-- end:col -->

        <!-- start:col -->
        <div class="col-xs-6 text-right">
            <a id="nav-expander" href=""><span class="glyphicon glyphicon-th"></span></a>
        </div>
        <!-- end:col -->

    </div>
    <!-- end:row -->

</header>
<!-- end:page header mobile -->

<!-- start:page header -->
<header id="page-header" class="hidden-xs">

    <!-- start:header-branding -->
    <div id="header-branding">

        <!-- start:container -->
        <div class="container">

            <!-- start:row -->
            <div class="row">

                <!-- start:col -->
                <div class="col-sm-6 col-md-4">
                    <!-- start:logo -->
                    <h1><a href="/"><img src="/resources/front/images/logo-white.png" alt="브루덕 로고"/></a>
                    </h1>
                    <!-- end:logo -->
                </div>
                <!-- end:col -->

                <!-- start:col -->
                <div class="col-sm-6 col-md-4 text-center">

                    <form id="search-form">
                        <input type="text" name="qsearch" placeholder="검색어를 입력해보세요."/>
                        <button><span class="glyphicon glyphicon-search"></span></button>
                    </form>

                </div>
                <!-- end:col -->

                <!-- start:col -->
                <div class="visible-md visible-lg col-md-4 text-right">

                    <!--div class="weather">
                        <i class="icon wi-day-cloudy"></i>
                        <h3><span class="glyphicon glyphicon-map-marker"></span> LA, California <span class="temp">+12&deg; C</span></h3>
                    <span class="date">Thursday, 20.4.2014.</span>
                </div-->

                </div>
                <!-- end:col -->

            </div>
            <!-- end:row -->

        </div>
        <!-- end:container -->

    </div>
    <!-- end:header-branding -->

    <!-- start:header-navigation -->
    <div id="header-navigation">

        <!-- start:container -->
        <div class="container">

            <!-- start:menu -->
            <nav id="menu">
                <ul class="nav clearfix">
                    <li class="home"><a href="/"><span class="glyphicon glyphicon-home"></span></a>
                    </li>

                    <li class="cat-news">
                        <a href="#">뉴스</a>
                        <!-- start:submenu-tech -->
                        <!--div class="dropnav-container">
                            <ul class="dropnav-menu">
                                <li><a href="#">Gadgets</a></li>
                                <li><a href="#">Mobile</a></li>
                                <li><a href="#">Internet</a></li>
                                <li><a href="#">Security</a></li>
                                <li><a href="#">Technocast</a></li>
                            </ul>
                        </div-->
                        <!-- end:submenu-tech -->
                    </li>
                    <li class="cat-tech">
                        <a href="#">레시피</a>
                        <!-- start:submenu-news -->
                        <div class="subnav-container">
                            <ul class="subnav-menu">
                                <li class="current">
                                    <a href="#">라거</a>

                                    <div class="subnav-posts">
                                        <c:forEach items="${lagerMenuList}" var="lagerMenuList"
                                                   varStatus="status">
                                            <!-- start:article -->
                                            <article>
                                                <a href="#"><img
                                                        src="/resources/upload/${lagerMenuList.atchCoverFileName}"
                                                        width="190" height="140" alt=""/></a>

                                                <h3><a href="#">${lagerMenuList.name}</a></h3>
                                            </article>
                                        </c:forEach>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">IPA/스트롱</a>

                                    <div class="subnav-posts">
                                        <c:forEach items="${ipaMenuList}" var="ipaMenuList"
                                                   varStatus="status">
                                            <!-- start:article -->
                                            <article>
                                                <a href="#"><img
                                                        src="/resources/upload/${ipaMenuList.atchCoverFileName}"
                                                        width="190" height="140" alt=""/></a>

                                                <h3><a href="#">${ipaMenuList.name}</a></h3>
                                            </article>
                                        </c:forEach>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">에일</a>

                                    <div class="subnav-posts">
                                        <c:forEach items="${paleMenuList}" var="paleMenuList"
                                                   varStatus="status">
                                            <!-- start:article -->
                                            <article>
                                                <a href="#"><img
                                                        src="/resources/upload/${paleMenuList.atchCoverFileName}"
                                                        width="190" height="140" alt=""/></a>

                                                <h3><a href="#">${paleMenuList.name}</a></h3>
                                            </article>
                                        </c:forEach>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">밀맥주</a>

                                    <div class="subnav-posts">
                                        <!-- start:article -->
                                        <c:forEach items="${wheatMenuList}" var="wheatMenuList"
                                                   varStatus="status">
                                            <!-- start:article -->
                                            <article>
                                                <a href="#"><img
                                                        src="/resources/upload/${wheatMenuList.atchCoverFileName}"
                                                        width="190" height="140" alt=""/></a>

                                                <h3><a href="#">${wheatMenuList.name}</a></h3>
                                            </article>
                                        </c:forEach>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">포터/스타우트</a>

                                    <div class="subnav-posts">
                                        <c:forEach items="${porterMenuList}" var="porterMenuList"
                                                   varStatus="status">
                                            <!-- start:article -->
                                            <article>
                                                <a href="#"><img
                                                        src="/resources/upload/${porterMenuList.atchCoverFileName}"
                                                        width="190" height="140" alt=""/></a>

                                                <h3><a href="#">${porterMenuList.name}</a></h3>
                                            </article>
                                        </c:forEach>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">사우어</a>

                                    <div class="subnav-posts">
                                        <c:forEach items="${sourMenuList}" var="sourMenuList"
                                                   varStatus="status">
                                            <!-- start:article -->
                                            <article>
                                                <a href="#"><img
                                                        src="/resources/upload/${sourMenuList.atchCoverFileName}"
                                                        width="190" height="140" alt=""/></a>

                                                <h3><a href="#">${sourMenuList.name}</a></h3>
                                            </article>
                                        </c:forEach>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- end:submenu-news -->
                    </li>
                    <li class="cat-sports">
                        <a href="/recipe/create">만들기</a>
                        <!-- start:submenu-sports -->
                        <!-- end:submenu-sports -->
                    </li>
                    <li class="cat-lifestyle">
                        <a href="#">자료실</a>
                        <!-- start:submenu-lifestyle -->
                        <div class="dropnav-container">
                            <ul class="dropnav-menu">
                                <li><a href="/style/">스타일 (BJCP)</a></li>
                                <li><a href="/fermentable/">발효재료 (Fermentable)</a></li>
                                <li><a href="/hop/">홉 (Hop)</a></li>
                                <li><a href="/yeast/">효모 (Yeast)</a></li>
                                <li><a href="/misc/">기타재료</a></li>
                            </ul>
                        </div>
                        <!-- end:submenu-lifestyle -->
                    </li>
                    <li class="cat-showtime">
                        <a href="#">버그제보</a>
                        <!-- start:submenu-showtime -->
                        <!-- end:submenu-showtime -->
                    </li>
                    <li class="options"><a href="/account/login"><span
                            class="glyphicon glyphicon-asterisk"></span> 로그인</a> | <a
                            href="/account/signup"><span class="glyphicon glyphicon-pencil"></span>
                        멤버 등록</a></li>
                </ul>
            </nav>
            <!-- end:menu -->

        </div>
        <!-- end:container -->

    </div>
    <!-- end:header-navigation -->

</header>
<!-- end:page header -->

<!-- start:page slider -->
<div id="page-slider" class="clearfix">

<!-- start:container -->
<div class="container">

<!-- start:carousel -->
<div id="slider-carousel">

<div class="row">

    <!-- start:col -->
    <div class="col-sm-8">

        <article class="linkbox large cat-news">
            <a href="#">
                <img src="/resources/recipe/ballast-point-drink-it.jpg" width="819" height="452"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h2>Ballast Point Clone 레시피 특집 </h2>

                    <p> 집에서 만들어볼까요?</p>
                </div>
            </a>
            <a href="#" class="theme">
                특집
            </a>
        </article>

    </div>
    <!-- end:col -->
    <!-- start:col -->
    <div class="col-sm-4">

        <c:forEach items="${newRecipeList}" var="newRecipeList" varStatus="status">
            <article class="linkbox cat-news">
                <a href="#">
                    <img src="/resources/upload/${newRecipeList.atchCoverFileName}" width="560"
                         height="390" alt="Responsive image" class="img-responsive"/>

                    <div class="overlay">
                        <h3>${newRecipeList.name}</h3>
                    </div>
                </a>
                <a href="#" class="theme">
                    신규 레시피
                </a>
            </article>
        </c:forEach>

    </div>
    <!-- end:col -->

</div>
<!-- start:row -->
<div class="row">
    <div class="col-sm-8">
        <article class="linkbox large cat-sports">
            <a href="#">
                <img src="/resources/recipe/ballast-point-drink-it.jpg" width="819" height="452"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h2>Ballast Point Clone 레시피 특집 </h2>

                    <p> 집에서 만들어볼까요?</p>
                </div>
            </a>
            <a href="#" class="theme">
                특집
            </a>
        </article>
    </div>

    <!-- start:col -->
    <div class="col-sm-4">
        <c:forEach items="${new_post}" var="new_post" varStatus="status">
            <article class="linkbox cat-sports">
                <a href="#">
                    <img src="/resources/upload/${new_post.atchCoverFileName}" width="560"
                         height="390" alt="Responsive image" class="img-responsive"/>

                    <div class="overlay">
                        <h3>${new_post.nttSj}</h3>
                    </div>
                </a>
                <a href="#" class="theme">
                    뉘우스
                </a>
            </article>
        </c:forEach>
    </div>
    <!-- end:col -->

</div>
<!-- end:row -->

<!-- start:row -->
<div class="row">

    <!-- start:col -->
    <div class="col-sm-8">

        <article class="linkbox large cat-news">
            <a href="#">
                <img src="/resources/front/images/dummy/819x452.jpg" width="819" height="452"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h2>Jimenez signing keeps O's in contention</h2>

                    <p>The concern within the Baltimore Orioles’ organization, as the negotiations
                        with Ubaldo Jimenez began percolating over the last 48 hours, was that the
                        Boston Red Sox or Toronto Blue Jays would snag...</p>
                </div>
            </a>
            <a href="#" class="theme">
                News
            </a>
        </article>

    </div>
    <!-- end:col -->
    <!-- start:col -->
    <div class="col-sm-4">

        <article class="linkbox cat-news">
            <a href="#">
                <img src="/resources/front/images/dummy/350x150.jpg" width="560" height="390"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h3>Levy wins first European Tour title in China</h3>
                </div>
            </a>
            <a href="#" class="theme">
                News
            </a>
        </article>

        <article class="linkbox cat-news">
            <a href="#">
                <img src="/resources/front/images/dummy/350x150.jpg" width="560" height="390"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h3>Barkley and Shaq speak on on Donald Sterling</h3>
                </div>
            </a>
            <a href="#" class="theme">
                News
            </a>
        </article>

        <article class="linkbox cat-news">
            <a href="#">
                <img src="/resources/front/images/dummy/350x150.jpg" width="560" height="390"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h3>Ranking the top 100 prospects in the NFL draft</h3>
                </div>
            </a>
            <a href="#" class="theme">
                News
            </a>
        </article>

    </div>
    <!-- end:col -->

</div>
<!-- end:row -->

<!-- start:row -->
<div class="row">

    <!-- start:col -->
    <div class="col-sm-8">

        <article class="linkbox large cat-showtime">
            <a href="#">
                <img src="/resources/front/images/dummy/819x452.jpg" width="819" height="452"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h2>Jimenez signing keeps O's in contention</h2>

                    <p>The concern within the Baltimore Orioles’ organization, as the negotiations
                        with Ubaldo Jimenez began percolating over the last 48 hours, was that the
                        Boston Red Sox or Toronto Blue Jays would snag...</p>
                </div>
            </a>
            <a href="#" class="theme">
                Showtime
            </a>
        </article>

    </div>
    <!-- end:col -->

    <!-- start:col -->
    <div class="col-sm-4">

        <article class="linkbox cat-showtime">
            <a href="#">
                <img src="/resources/front/images/dummy/350x150.jpg" width="560" height="390"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h3>Levy wins first European Tour title in China</h3>
                </div>
            </a>
            <a href="#" class="theme">
                Showtime
            </a>
        </article>

        <article class="linkbox cat-showtime">
            <a href="#">
                <img src="/resources/front/images/dummy/350x150.jpg" width="560" height="390"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h3>Barkley and Shaq speak on on Donald Sterling</h3>
                </div>
            </a>
            <a href="#" class="theme">
                Showtime
            </a>
        </article>

        <article class="linkbox cat-showtime">
            <a href="#">
                <img src="/resources/front/images/dummy/350x150.jpg" width="560" height="390"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h3>Ranking the top 100 prospects in the NFL draft</h3>
                </div>
            </a>
            <a href="#" class="theme">
                Showtime
            </a>
        </article>

    </div>
    <!-- end:col -->

</div>
<!-- end:row -->


</div>
<!-- end:slider-carousel -->

<!-- start:slider-nav -->
<div class="slider-nav">
    <a id="slider-prev" class="prev" href="#"><i class="fa fa-chevron-left"></i></a>
    <a id="slider-next" class="next" href="#"><i class="fa fa-chevron-right"></i></a>
</div>
<!-- end:slider-nav -->
</div>
<!-- end:container -->

</div>
<!-- end:page slider -->
<!-- start:container -->
<div class="container">

<!-- start:page content -->
<div id="page-content" class="clearfix">

<!-- start:main -->
<div id="main">

<!-- start:row -->
<div class="row">

<!-- start:col -->
<div class="col-md-9 separator-right">

<article class="linkbox large cat-news">
    <a href="#">
        <img src="/resources/front/images/dummy/560x390.jpg" width="560" height="390"
             alt="Responsive image" class="img-responsive"/>

        <div class="overlay">
            <h2>Budget drops lower benefits, adds $56 billion in spending</h2>
        </div>
    </a>
    <a href="#" class="theme">
        News
    </a>
</article>

<!-- start:row -->
<div class="row bottom-margin">
    <!-- start:article.thumb -->
    <article class="thumb cat-sports">
        <!-- start:col -->
        <div class="col-sm-6">
            <div class="thumb-wrap relative">
                <a href="#"><img src="/resources/front/images/dummy/265x160.jpg" width="265"
                                 height="160" alt="Responsive image" class="img-responsive"/></a>
                <a href="#" class="theme">
                    Sport
                </a>
            </div>
        </div>
        <!-- end:col -->
        <!-- start:col -->
        <div class="col-sm-6">
            <h3><a href="#">But who has any right to find fault with a man who chooses</a></h3>
            <span class="published">February 18, 2014 | 23 <a href="#">comments</a></span>
            <span class="text">Nam leo ipsum, accumsan non rhoncus ut, tincidunt id metus. Quisque libero purus, euismod a nisi eu, mollis fringilla lorem. Donec pellentesque mi a tellus porta...</span>
        </div>
        <!-- end:col -->
    </article>
    <!-- end:article.thumb -->

</div>
<!-- end:row -->

<!-- start:row -->
<div class="row">

    <!-- start:col -->
    <div class="col-sm-6">
        <!-- start:article.linkbox -->
        <article class="linkbox cat-sports">
            <a href="#">
                <img src="/resources/front/images/dummy/265x160.jpg" width="265" height="160"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h3>Lorem ipsum dolor sit amet</h3>
                </div>
            </a>
            <a href="#" class="theme">
                Sport
            </a>
        </article>
        <!-- end:article.linkbox -->
    </div>
    <!-- end:col -->
    <!-- start:col -->
    <div class="col-sm-6">
        <!-- start:article.linkbox -->
        <article class="linkbox cat-sports">
            <a href="#">
                <img src="/resources/front/images/dummy/265x160.jpg" width="265" height="160"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h3>Lorem ipsum dolor sit amet</h3>
                </div>
            </a>
            <a href="#" class="theme">
                Sport
            </a>
        </article>
        <!-- end:article.linkbox -->
    </div>
    <!-- end:col -->
</div>
<!-- end:row -->

<!-- start:row -->
<div class="row">
    <!-- start:col -->
    <div class="col-sm-6">
        <!-- start:article.linkbox -->
        <article class="linkbox cat-sports">
            <a href="#">
                <img src="/resources/front/images/dummy/265x160.jpg" width="265" height="160"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h3>Lorem ipsum dolor sit amet</h3>
                </div>
            </a>
            <a href="#" class="theme">
                Sport
            </a>
        </article>
        <!-- end:article.linkbox -->
    </div>
    <!-- end:col -->
    <!-- start:col -->
    <div class="col-sm-6">
        <!-- start:article.linkbox -->
        <article class="linkbox cat-sports">
            <a href="#">
                <img src="/resources/front/images/dummy/265x160.jpg" width="265" height="160"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h3>Lorem ipsum dolor sit amet</h3>
                </div>
            </a>
            <a href="#" class="theme">
                Sport
            </a>
        </article>
        <!-- end:article.linkbox -->
    </div>
    <!-- end:col -->
</div>
<!-- end:row -->

<!-- start:row -->
<div class="row">
    <!-- start:col -->
    <div class="col-sm-6">
        <!-- start:article.linkbox -->
        <article class="linkbox cat-sports">
            <a href="#">
                <img src="/resources/front/images/dummy/265x160.jpg" width="265" height="160"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h3>Lorem ipsum dolor sit amet</h3>
                </div>
            </a>
            <a href="#" class="theme">
                Sport
            </a>
        </article>
        <!-- end:article.linkbox -->
    </div>
    <!-- end:col -->
    <!-- start:col -->
    <div class="col-sm-6">
        <!-- start:article.linkbox -->
        <article class="linkbox cat-sports">
            <a href="#">
                <img src="/resources/front/images/dummy/265x160.jpg" width="265" height="160"
                     alt="Responsive image" class="img-responsive"/>

                <div class="overlay">
                    <h3>Lorem ipsum dolor sit amet</h3>
                </div>
            </a>
            <a href="#" class="theme">
                Sport
            </a>
        </article>
        <!-- end:article.linkbox -->
    </div>
    <!-- end:col -->
</div>
<!-- end:row -->


<!-- start:business-news -->
<section class="section-full cat-business-light news-layout news-lay-1 relative">

    <a href="#" class="theme cat-business">
        Business
    </a>

    <!-- start:row -->
    <div class="row">

        <!-- start:col -->
        <div class="col-xs-4">
            <!-- start:article.linkbox -->
            <article>
                <h3><a href="#">홉</a></h3>
                <span class="published">March 18, 2014</span>
                <span class="text">Aliquam sollicitudin, enim sit amet hendrerit consequat, velit orci posuere elit, eu facilisis lacus odio ac nunc.</span>
            </article>
            <!-- end:article.linkbox -->

            <!-- start:article -->
            <article>
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat lectus</a></h3>
            </article>
            <!-- end:article -->

            <!-- start:article -->
            <article>
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat lectus</a></h3>
            </article>
            <!-- end:article -->
        </div>
        <!-- end:col -->

        <!-- start:col -->
        <div class="col-xs-4">
            <!-- start:article.linkbox -->
            <article>
                <h3><a href="#">A wonderful serenity has taken possession of my entire soul</a></h3>
                <span class="published">February 18, 2014</span>
                <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
            </article>
            <!-- end:article.linkbox -->

            <!-- start:article -->
            <article>
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat lectus</a></h3>
            </article>
            <!-- end:article -->

            <!-- start:article -->
            <article>
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat lectus</a></h3>
            </article>
            <!-- end:article -->
        </div>
        <!-- end:col -->

        <!-- start:col -->
        <div class="col-xs-4">
            <!-- start:article.linkbox -->
            <article>
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat lectus</a></h3>
                <span class="published">March 18, 2014</span>
                <span class="text">Aliquam sollicitudin, enim sit amet hendrerit consequat, velit orci posuere elit, eu facilisis lacus odio ac nunc.</span>
            </article>
            <!-- end:article.linkbox -->

            <!-- start:article -->
            <article>
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat lectus</a></h3>
            </article>
            <!-- end:article -->

            <!-- start:article -->
            <article>
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat lectus</a></h3>
            </article>
            <!-- end:article -->
        </div>
        <!-- end:col -->


    </div>
    <!-- end:row -->
</section>
<!-- end:business-news -->
<!-- start:videos -->
<section class="section-full cat-videos no-padding">

    <!-- start:row -->
    <div class="row">

        <!-- start:col -->
        <div class="col-sm-8">

            <article class="linkbox cat-showtime">
                <a href="#">
                    <img src="/resources/front/images/dummy/334x301.jpg" width="334" height="301"
                         alt="Responsive image" class="img-responsive"/>

                    <div class="overlay">
                        <h2>A wonderful serenity has taken possession </h2>
                    </div>
                </a>
                <a href="#" class="theme">
                    Showtime
                </a>
            </article>

        </div>
        <!-- end:col -->

        <!-- start:col -->
        <div class="col-sm-4">

            <article class="linkbox cat-showtime">
                <a href="#">
                    <img src="/resources/front/images/dummy/270x165.jpg" width="274" height="150"
                         alt="Responsive image" class="img-responsive"/>

                    <div class="overlay">
                        <h3>Budget drops lower benefits, adds $56 billion in spending</h3>
                    </div>
                </a>
                <a href="#" class="theme">
                    Showtime
                </a>
            </article>

            <article class="linkbox cat-showtime">
                <a href="#">
                    <img src="/resources/front/images/dummy/270x165.jpg" width="274" height="150"
                         alt="Responsive image" class="img-responsive"/>

                    <div class="overlay">
                        <h3>Budget drops lower benefits, adds $56 billion in spending</h3>
                    </div>
                </a>
                <a href="#" class="theme">
                    Showtime
                </a>
            </article>

        </div>
        <!-- end:col -->

    </div>
    <!-- end:row -->

</section>
<!-- end:videos -->
<!-- start:reviews -->
<section class="section-full top-padding cat-reviews news-layout news-lay-2">

    <header>
        <h2>레시피 리뷰</h2>
        <span class="borderline"></span>
    </header>

    <!-- start:row -->
    <div class="row">

        <!-- start:col -->
        <div class="col-xs-6 col-sm-3">
            <!-- start:article.linkbox -->
            <article class="review">
                <a href="#">
                    <img src="/resources/front/images/dummy/120x105.jpg" width="120" height="105"
                         alt="Responsive image" class="img-responsive"/>

                    <h3>Aliquam sollicitudin enim sit hendrerit</h3>
                </a>

                <div class="review-rating">
                    <ul class="rating">
                        <li class="li-rated"></li>
                        <li class="li-rated"></li>
                        <li class="li-rated"></li>
                        <li class="li-rated"></li>
                        <li></li>
                    </ul>
                </div>
            </article>
            <!-- end:article.linkbox -->
        </div>
        <!-- end:col -->

        <!-- start:col -->
        <div class="col-xs-6 col-sm-3">
            <!-- start:article.linkbox -->
            <article class="review">
                <a href="#">
                    <img src="/resources/front/images/dummy/120x105.jpg" width="120" height="105"
                         alt="Responsive image" class="img-responsive"/>

                    <h3>Maecenas in egestas ligula</h3>
                </a>

                <div class="review-rating">
                    <ul class="rating">
                        <li class="li-rated"></li>
                        <li class="li-rated"></li>
                        <li class="li-rated"></li>
                        <li class="li-rated"></li>
                        <li class="li-rated"></li>
                    </ul>
                </div>
            </article>
            <!-- end:article.linkbox -->
        </div>
        <!-- end:col -->

        <!-- start:col -->
        <div class="col-xs-6 col-sm-3">
            <!-- start:article.linkbox -->
            <article class="review">
                <a href="#">
                    <img src="/resources/front/images/dummy/120x105.jpg" width="120" height="105"
                         alt="Responsive image" class="img-responsive"/>

                    <h3>Ligula eu feugiat lectus</h3>
                </a>

                <div class="review-rating">
                    <ul class="rating">
                        <li class="li-rated"></li>
                        <li class="li-rated"></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
            </article>
            <!-- end:article.linkbox -->
        </div>
        <!-- end:col -->

        <!-- start:col -->
        <div class="col-xs-6 col-sm-3">
            <!-- start:article.linkbox -->
            <article class="review">
                <a href="#">
                    <img src="/resources/front/images/dummy/120x105.jpg" width="120" height="105"
                         alt="Responsive image" class="img-responsive"/>

                    <h3>Odio non volutpat pulvinar</h3>
                </a>

                <div class="review-rating">
                    <ul class="rating">
                        <li class="li-rated"></li>
                        <li class="li-rated"></li>
                        <li class="li-rated"></li>
                        <li class="li-rated"></li>
                        <li></li>
                    </ul>
                </div>
            </article>
            <!-- end:article.linkbox -->
        </div>
        <!-- end:col -->


    </div>
    <!-- end:row -->
</section>
<!-- end:reviews -->
<!-- start:row -->
<div class="row top-margin">
    <!-- start:col -->
    <div class="col-sm-6">

        <!-- start:showtime -->
        <section class="section-lifestyle news-layout">

            <header>
                <h2><a href="#">Lifestyle</a></h2>
                <span class="borderline"></span>
            </header>

            <!-- start:article -->
            <article class="clearfix">
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat</a></h3>
                <a href="#"><img src="/resources/front/images/dummy/100x80.jpg" width="100"
                                 height="80" alt=""/></a>
                <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                <span class="published">February 18, 2014</span>
            </article>
            <!-- end:article -->

            <!-- start:article -->
            <article class="clearfix">
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat</a></h3>
                <a href="#"><img src="/resources/front/images/dummy/100x80.jpg" width="100"
                                 height="80" alt=""/></a>
                <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                <span class="published">February 18, 2014</span>
            </article>
            <!-- end:article -->

            <!-- start:article -->
            <article class="clearfix">
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat</a></h3>
                <a href="#"><img src="/resources/front/images/dummy/100x80.jpg" width="100"
                                 height="80" alt=""/></a>
                <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                <span class="published">February 18, 2014</span>
            </article>
            <!-- end:article -->

            <!-- start:article -->
            <article class="clearfix">
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat</a></h3>
                <a href="#"><img src="/resources/front/images/dummy/100x80.jpg" width="100"
                                 height="80" alt=""/></a>
                <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                <span class="published">February 18, 2014</span>
            </article>
            <!-- end:article -->

        </section>
        <!-- end:showtime -->

    </div>
    <!-- end:col -->
    <!-- start:col -->
    <div class="col-sm-6">

        <!-- start:showtime -->
        <section class="section-tech news-layout">

            <header>
                <h2><a href="#">Tech</a></h2>
                <span class="borderline"></span>
            </header>

            <!-- start:article -->
            <article class="clearfix">
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat</a></h3>
                <a href="#"><img src="/resources/front/images/dummy/100x80.jpg" width="100"
                                 height="80" alt=""/></a>
                <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                <span class="published">February 18, 2014</span>
            </article>
            <!-- end:article -->

            <!-- start:article -->
            <article class="clearfix">
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat</a></h3>
                <a href="#"><img src="/resources/front/images/dummy/100x80.jpg" width="100"
                                 height="80" alt=""/></a>
                <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                <span class="published">February 18, 2014</span>
            </article>
            <!-- end:article -->

            <!-- start:article -->
            <article class="clearfix">
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat</a></h3>
                <a href="#"><img src="/resources/front/images/dummy/100x80.jpg" width="100"
                                 height="80" alt=""/></a>
                <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                <span class="published">February 18, 2014</span>
            </article>
            <!-- end:article -->

            <!-- start:article -->
            <article class="clearfix">
                <h3><a href="#">Maecenas in egestas ligula, eu feugiat</a></h3>
                <a href="#"><img src="/resources/front/images/dummy/100x80.jpg" width="100"
                                 height="80" alt=""/></a>
                <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                <span class="published">February 18, 2014</span>
            </article>
            <!-- end:article -->

        </section>
        <!-- end:showtime -->

    </div>
    <!-- end:col -->
</div>
<!-- end:row -->


</div>
<!-- end:col -->

<!-- start:col -->
<div class="col-md-3">

    <!-- start:latest-news -->
    <section class="section-news news-layout">
        <!-- start:header -->
        <header>
            <h2><a href="#">최근 뉴스</a></h2>
            <span class="borderline"></span>
        </header>
        <!-- end:header -->

        <!-- start:row -->
        <div class="row">
            <!-- start:col -->
            <div class="col-xs-4 col-sm-12">
                <!-- start:article -->
                <article>
                    <h3><a href="#">A wonderful serenity has taken possession of my entire soul</a>
                    </h3>
                    <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                    <span class="published">February 18, 2014</span>
                </article>
                <!-- end:article -->
            </div>
            <!-- end:col -->

            <!-- start:col -->
            <div class="col-xs-4 col-sm-12">
                <!-- start:article -->
                <article>
                    <h3><a href="#">A wonderful serenity has taken possession of my entire soul</a>
                    </h3>
                    <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                    <span class="published">February 18, 2014</span>
                </article>
                <!-- end:article -->
            </div>
            <!-- end:col -->

            <!-- start:col -->
            <div class="col-xs-4 col-sm-12">
                <!-- start:article -->
                <article>
                    <h3><a href="#">A wonderful serenity has taken possession of my entire soul</a>
                    </h3>
                    <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                    <span class="published">February 18, 2014</span>
                </article>
                <!-- end:article -->
            </div>
            <!-- end:col -->

            <!-- start:col -->
            <div class="col-xs-4 col-sm-12">
                <!-- start:article -->
                <article>
                    <h3><a href="#">A wonderful serenity has taken possession of my entire soul</a>
                    </h3>
                    <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                    <span class="published">February 18, 2014</span>
                </article>
                <!-- end:article -->
            </div>
            <!-- end:col -->

            <!-- start:col -->
            <div class="col-xs-4 col-sm-12">
                <!-- start:article -->
                <article>
                    <h3><a href="#">A wonderful serenity has taken possession of my entire soul</a>
                    </h3>
                    <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                    <span class="published">February 18, 2014</span>
                </article>
                <!-- end:article -->
            </div>
            <!-- end:col -->

            <!-- start:col -->
            <div class="col-xs-4 col-sm-12">
                <!-- start:article -->
                <article>
                    <h3><a href="#">A wonderful serenity has taken possession of my entire soul</a>
                    </h3>
                    <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                    <span class="published">February 18, 2014</span>
                </article>
                <!-- end:article -->
            </div>
            <!-- end:col -->
        </div>
        <!-- end:row -->
    </section>
    <!-- end:latest-news -->
    <div class="ad">
        <a href=""><img src="/resources/front/images/dummy/banner_160x600.png" width="160"
                        height="600" alt=""/></a>
    </div>

    <!-- start:latest-news -->
    <section class="news-layout">
        <!-- start:header -->
        <header>
            <h2>Latest comments</h2>
            <span class="borderline"></span>
        </header>
        <!-- end:header -->

        <!-- start:row -->
        <div class="row">
            <!-- start:col -->
            <div class="col-xs-4 col-sm-12">
                <!-- start:article -->
                <article>
                    <h3><a href="#">A wonderful serenity has taken possession of my entire soul</a>
                    </h3>
                    <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                    <span class="published">February 18, 2014</span>
                </article>
                <!-- end:article -->
            </div>
            <!-- end:col -->

            <!-- start:col -->
            <div class="col-xs-4 col-sm-12">
                <!-- start:article -->
                <article>
                    <h3><a href="#">A wonderful serenity has taken possession of my entire soul</a>
                    </h3>
                    <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                    <span class="published">February 18, 2014</span>
                </article>
                <!-- end:article -->
            </div>
            <!-- end:col -->

            <!-- start:col -->
            <div class="col-xs-4 col-sm-12">
                <!-- start:article -->
                <article>
                    <h3><a href="#">A wonderful serenity has taken possession of my entire soul</a>
                    </h3>
                    <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                    <span class="published">February 18, 2014</span>
                </article>
                <!-- end:article -->
            </div>
            <!-- end:col -->

            <!-- start:col -->
            <div class="col-xs-4 col-sm-12">
                <!-- start:article -->
                <article>
                    <h3><a href="#">A wonderful serenity has taken possession of my entire soul</a>
                    </h3>
                    <span class="text">Sed tempor, odio non volutpat pulvinar, est libero congue lorem...</span>
                    <span class="published">February 18, 2014</span>
                </article>
                <!-- end:article -->
            </div>
            <!-- end:col -->


        </div>
        <!-- end:row -->
    </section>
    <!-- end:latest-news -->
    <!-- start:latest-news -->
    <section class="news-layout">
        <!-- start:header -->
        <header>
            <h2>Weekly gadget</h2>
            <span class="borderline"></span>
        </header>
        <!-- end:header -->

        <article class="review">
            <a href="#">
                <img src="/resources/front/images/dummy/170x150.jpg" width="170" height="150"
                     alt="Responsive image" class="img-responsive"/>

                <h3>Aliquam sollicitudin enim sit hendrerit</h3>
            </a>

            <div class="review-rating">
                <ul class="rating">
                    <li class="li-rated"></li>
                    <li class="li-rated"></li>
                    <li class="li-rated"></li>
                    <li class="li-rated"></li>
                    <li class="li-rated"></li>
                </ul>
            </div>
        </article>
        <!-- end:article -->

    </section>
    <!-- end:latest-news -->
</div>
<!-- end:col -->

</div>
<!-- end:row -->


</div>
<!-- end:main -->

<!-- start:sidebar -->
<div id="sidebar">

<!-- start:advertising -->
<div class="ad">
    <a href=""><img src="/resources/front/images/dummy/banner_300x250.png" width="300" height="250"
                    alt=""></a>
</div>
<!-- end:advertising -->

<!-- start:section-module-timeline -->
<section class="module-timeline">
    <!-- start:header -->
    <header>
        <h2>Newsweek timeline</h2>
        <span class="borderline"></span>
    </header>
    <!-- end:header -->

    <!-- start:articles -->
    <div class="articles">
        <article>
            <span class="published">Today</span>
            <span class="published-time">15:00</span>

            <div class="cnt">
                <i class="bullet bullet-sports"></i>
                <span class="category cat-sports"><a href="#">Sport</a></span>

                <h3><a href="#">A wonderful serenity has taken possession of my entire soul has
                    taken possession</a></h3>
            </div>
        </article>

        <article>
            <span class="published">Yesterday</span>
            <span class="published-time">15:00</span>

            <div class="cnt">
                <i class="bullet bullet-showtime"></i>
                <span class="category cat-showtime"><a href="#">Showtime</a></span>

                <h3><a href="#">A wonderful serenity has taken possession of my entire soul has
                    taken possession</a></h3>
            </div>
        </article>

        <article>
            <span class="published">Feb 18th</span>
            <span class="published-time">15:00</span>

            <div class="cnt">
                <i class="bullet bullet-lifestyle"></i>
                <span class="category cat-lifestyle"><a href="#">Lifestyle</a></span>

                <h3><a href="#">A wonderful serenity has taken possession of my entire soul has
                    taken possession</a></h3>
            </div>
        </article>

        <article>
            <span class="published">Feb 15th</span>
            <span class="published-time">15:00</span>

            <div class="cnt">
                <i class="bullet bullet-business"></i>
                <span class="category cat-business"><a href="#">Business</a></span>

                <h3><a href="#">A wonderful serenity has taken possession of my entire soul has
                    taken possession</a></h3>
            </div>
        </article>

        <article>
            <span class="published">Feb 10th</span>
            <span class="published-time">15:00</span>

            <div class="cnt">
                <i class="bullet bullet-tech"></i>
                <span class="category cat-tech"><a href="#">Tech</a></span>

                <h3><a href="#">A wonderful serenity has taken possession of my entire soul has
                    taken possession</a></h3>
            </div>
        </article>
    </div>
    <!-- end:articles -->

</section>
<!-- end:section-module-timeline -->

<!-- start:section-module-quote -->
<section class="module-quote">
    <!-- start:header -->
    <header>
        <h2>${hop.koreanName} - ${hop.alpha}% / ${hop.typeKorean}</h2>
        <span class="borderline"></span>
    </header>
    <!-- end:header -->

    <!-- start:blockquote-quote -->
    <blockquote>
        <p>${hop.shortKoreanNotes}</p>
        <footer>
            <cite title="Source Title">${hop.originKorean}</cite>
        </footer>
    </blockquote>
    <!-- end:blockquote-quote -->
</section>
<!-- end:section-module-quote -->

<!-- start:section-module-singles -->
<section class="module-singles">
    <!-- start:header -->
    <header>
        <h2>Top Brewer</h2>
        <span class="borderline"></span>
    </header>
    <!-- end:header -->

    <!-- start:singles-container -->
    <ul class="singles-container">
        <li>
            <span class="glyphicon glyphicon-play-circle"></span>
            <a href="">Meet Me Halfway</a>
            <span class="author">Black Eyed Peas</span>
        </li>
        <li>
            <span class="glyphicon glyphicon-play-circle"></span>
            <a href="">Empire State Of Mind (Live)</a>
            <span class="author">Jay Z</span>
        </li>
        <li>
            <span class="glyphicon glyphicon-play-circle"></span>
            <a href="">Need You Know</a>
            <span class="author">Lady Antebellum</span>
        </li>
        <li>
            <span class="glyphicon glyphicon-play-circle"></span>
            <a href="">Already Gone</a>
            <span class="author">Kelly Clarkson</span>
        </li>
        <li>
            <span class="glyphicon glyphicon-play-circle"></span>
            <a href="">Party In The U.S.A.</a>
            <span class="author">Miley Cyrus</span>
        </li>
    </ul>
    <!-- end:singles-container -->
</section>
<!-- end:section-module-singles -->

<!-- start:section-module-news -->
<section class="module-news top-margin">
    <!-- start:header -->
    <header>
        <h2>Don't miss this stories</h2>
        <span class="borderline"></span>
    </header>
    <!-- end:header -->

    <!-- start:article-container -->
    <div class="article-container">
        <!-- start:article -->
        <article class="clearfix">
            <a href="#"><img src="/resources/front/images/dummy/100x80_2.jpg" width="100"
                             height="80" alt=""/></a>
            <span class="published">Feb 18, 2014 <span class="category cat-sports"><a href="#">Sports</a></span></span>

            <h3><a href="#">A wonderful serenity has taken possession of my entire soul has taken
                possession</a></h3>
        </article>
        <!-- end:article -->
        <!-- start:article -->
        <article class="clearfix">
            <a href="#"><img src="/resources/front/images/dummy/100x80_2.jpg" width="100"
                             height="80" alt=""/></a>
            <span class="published">Feb 18, 2014 <span class="category cat-news"><a
                    href="#">News</a></span></span>

            <h3><a href="#">A wonderful serenity has taken possession of my entire soul has taken
                possession</a></h3>
        </article>
        <!-- end:article -->
        <!-- start:article -->
        <article class="clearfix">
            <a href="#"><img src="/resources/front/images/dummy/100x80_2.jpg" width="100"
                             height="80" alt=""/></a>
            <span class="published">Feb 18, 2014 <span class="category cat-lifestyle"><a href="#">Lifestyle</a></span></span>

            <h3><a href="#">A wonderful serenity has taken possession of my entire soul has taken
                possession</a></h3>
        </article>
        <!-- end:article -->
        <!-- start:article -->
        <article class="clearfix">
            <a href="#"><img src="/resources/front/images/dummy/100x80_2.jpg" width="100"
                             height="80" alt=""/></a>
            <span class="published">Feb 18, 2014 <span class="category cat-showtime"><a href="#">Showtime</a></span></span>

            <h3><a href="#">A wonderful serenity has taken possession of my entire soul has taken
                possession</a></h3>
        </article>
        <!-- end:article -->
    </div>
    <!-- end:article-container -->
</section>
<!-- end:section-module-news -->

<!-- start:advertising -->
<div class="ad ad-separator">
    <a href=""><img src="/resources/front/images/dummy/banner_300x250.png" width="300" height="250"
                    alt=""></a>
</div>
<!-- end:advertising -->

<!-- start:section-module-photos -->
<section class="module-photos">
    <!-- start:header -->
    <header>
        <h2>랜덤 홉</h2>
        <span class="borderline"></span>
    </header>
    <!-- end:header -->
    <!-- start:article-container -->
    <div id="weekly-gallery" class="article-container">
        <!-- start:row -->
        <div class="row">
            <!-- start:article -->
            <article class="clearfix">
                <p>Aliquam sollicitudin, enim sit amet hendrerit consequat, velit orci posuere elit,
                    eu facilisis lacus odio ac nunc. </p>
                <a href="/resources/front/images/dummy/photo-big.jpg">
                    <img src="/resources/front/images/dummy/300x200.jpg" width="300" height="200"
                         alt="Responsive image" class="img-responsive"/>
                </a>
            </article>
            <!-- end:article -->
        </div>
        <!-- end:row -->

        <!-- start:row -->
        <div class="row">
            <!-- start:col -->
            <div class="col-xs-4">
                <!-- start:article -->
                <article class="clearfix">
                    <a href="/resources/front/images/dummy/photo-big.jpg"><img
                            src="/resources/front/images/dummy/100x80_2.jpg" width="100" height="80"
                            alt="Responsive image" class="img-responsive"/></a>
                </article>
                <!-- end:article -->
            </div>
            <!-- end:col -->
            <!-- start:col -->
            <div class="col-xs-4">
                <!-- start:article -->
                <article class="clearfix">
                    <a href="/resources/front/images/dummy/photo-big.jpg"><img
                            src="/resources/front/images/dummy/100x80_2.jpg" width="100" height="80"
                            alt="Responsive image" class="img-responsive"/></a>
                </article>
                <!-- end:article -->
            </div>
            <!-- end:col -->
            <!-- start:col -->
            <div class="col-xs-4">
                <!-- start:article -->
                <article class="clearfix">
                    <a href="/resources/front/images/dummy/photo-big.jpg"><img
                            src="/resources/front/images/dummy/100x80_2.jpg" width="100" height="80"
                            alt="Responsive image" class="img-responsive"/></a>
                </article>
                <!-- end:article -->
            </div>
            <!-- end:col -->
        </div>
        <!-- end:row -->
    </div>
    <!-- end:article-container -->
</section>
<!-- end:section-module-photos -->


</div>
<!-- end:sidebar -->
</div>
<!-- end:page content -->

</div>
<!-- end:container -->


<!-- footer:page footer -->
<footer id="page-footer">

    <!-- start:container -->
    <div class="container">

        <nav id="foot-menu" class="hidden-xs">
            <ul class="clearfix">
                <li class="home current"><a href="#"><span class="glyphicon glyphicon-home"></span></a>
                </li>
                <li class="cat-news"><a href="#">News</a></li>
                <li class="cat-sports"><a href="#">Sports</a></li>
                <li class="cat-lifestyle"><a href="#">Lifestyle</a></li>
                <li class="cat-showtime"><a href="#">Showtime</a></li>
                <li class="cat-tech"><a href="#">Tech</a></li>
                <li class="cat-business"><a href="#">Business</a></li>
                <li class="cat-extra"><a href="#">Extra +</a></li>
                <li class="options"><a href="#" class="scrollToTop">Back to top <span
                        class="glyphicon glyphicon-chevron-up"></span></a></li>
            </ul>
        </nav>

        <!-- start:row -->
        <div class="about row">

            <!-- start:col -->
            <div class="col-sm-12 col-md-3">
                <h3><a href="#"><img src="/resources/front/images/logo-black.png"
                                     alt="Weekly News"/></a></h3>
            </div>
            <!-- end:col -->

            <!-- start:col -->
            <div class="col-sm-6 col-md-5">
                <h4>브루덕 프로젝트</h4>

                <p>단순히 맥주를 좋아하다가 시작한 브루덕 프로젝트. </br>
                    맥주에 관련된 소박한 일상을 담고 싶습니다.
                </p>
                <a href="https://www.facebook.com/brewduck"><i
                        class="fa fa-facebook-square fa-lg"></i></a>
                <!--a href="#"><i class="fa fa-linkedin-square fa-lg"></i></a>
                <a href="#"><i class="fa fa-google-plus-square fa-lg"></i></a>
                <a href="#"><i class="fa fa-vimeo-square fa-lg"></i></a>
                <a href="#"><i class="fa fa-youtube fa-lg"></i></a-->
            </div>
            <!-- end:col -->

            <!-- start:col -->
            <div class="col-sm-6 col-md-4">
                <h4>Additional information</h4>
                <ul>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Legal agreement</a></li>
                    <li><a href="#">Our staff</a></li>
                    <li><a href="#">Privacy policy</a></li>
                    <li><a href="#">Contact us</a></li>
                    <li><a href="#">Terms of Service</a></li>
                    <li><a href="#">Become a member</a></li>
                    <li><a href="#">Press Releases</a></li>
                </ul>
            </div>
            <!-- end:col -->

        </div>
        <!-- end:row -->

        <!-- start:row -->
        <div class="copyright row">

            <!-- start:col -->
            <div class="col-sm-6">
                &copy; <a href="#">BREWDUCK</a> 2014. All rights reserved.
            </div>
            <!-- end:col -->

            <!-- start:col -->
            <div class="col-sm-6 text-right">
                대표메일 <a href="#">frank.lim@brewduck.com</a>.
            </div>
            <!-- end:col -->

        </div>
        <!-- end:row -->

    </div>
    <!-- end:container -->

</footer>
<!-- end:page footer -->

</div>
<!-- end:page inner wrap -->
</div>
<!-- end:page outer wrap -->


<!-- start:scripts -->
<script src="/resources/front/assets/js/jquery.min.js"></script>
<script src="/resources/front/assets/js/bootstrap.min.js"></script>
<script src="/resources/front/assets/js/bootstrap-datepicker.js"></script>
<script src="/resources/front/assets/js/jquery.sidr.min.js"></script>
<script src="/resources/front/assets/js/jquery.carouFredSel-6.2.1-packed.js"></script>
<script src="/resources/front/assets/js/jquery.touchSwipe.min.js"></script>
<script src="/resources/front/assets/js/jquery.photobox.js"></script>
<script src="/resources/front/assets/js/functions.js"></script>
<!-- end:scripts -->

</body>
</html>
