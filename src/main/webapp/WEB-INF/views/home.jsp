<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!doctype html>
<html>
<head>
    <%@ include file="/WEB-INF/views/common/include/home_header.jsp" %>
</head>


<body>

<div class="page-box">
<div class="page-box-content">

    <!-- 히든 탑 메뉴 시작 -->
    <%@ include file="/WEB-INF/views/common/include/home_top_menu.jsp" %>
    <!-- 히든 탑 메뉴 끝 -->


<div id="cm-video-bg" class="full-width-box bottom-padding">
    <div class="fwb-bg fwb-video band-16">
        <video autoplay="" muted="" loop="">
            <source src="http://template.progressive.itembridge.com/2.1.8/video/video.mp4" type="video/mp4">
            <source src="video/video.webm" type="video/webm">
        </video>
        <div class="overlay"></div>
    </div>

    <div class="container">
        <div class="row">
            <div class="white text-center col-sm-12 col-md-12">
                <div class="title-box text-center title-white">
                    <h1 class="title">세상에는 당신이 맛보지 않은 맥주들이 너무나 많습니다.</h1>
                </div>
                <p>알콜이 60도가 넘는 맥주부터, 오트통에서 숙성하는 사우어 에일, 훈연향이 가득한 맥주까지. </br>
                    세상에는 맛보지 않은 맥주들이 너무나 많습니다.</br></br>
                    광활한 맥주의 세계로 함께 떠나요!!</p>
                <!--a href="#" class="btn btn-default">..더 보기</a-->
            </div>
        </div>
    </div>
</div><!-- .full-width-box -->

<div class="container">
<div class="carousel-box bottom-padding bottom-padding-mini load overflow">
<div class="title-box no-margin">
    <a class="next" href="#">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="9px" height="16px" viewBox="0 0 9 16" enable-background="new 0 0 9 16" xml:space="preserve">
          <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#fcfcfc" points="1,0.001 0,1.001 7,8 0,14.999 1,15.999 9,8 "></polygon>
        </svg>
    </a>
    <a class="prev" href="#">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="9px" height="16px" viewBox="0 0 9 16" enable-background="new 0 0 9 16" xml:space="preserve">
          <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#fcfcfc" points="8,15.999 9,14.999 2,8 9,1.001 8,0.001 0,8 "></polygon>
        </svg>
    </a>
    <h2 class="title">인기 레시피</h2>
</div>

<div class="clearfix"></div>

<div class="row">
<div class="carousel products">
<div class="col-sm-3 col-md-3 product rotation">
    <div class="default">
        <a href="/recipe/1/보스턴_라거_클론" class="product-image">
            <img src="/resources/recipe/1/recipe_1.jpg" alt="" title="" width="270" height="270">
        </a>
        <div class="product-description">
            <div class="vertical">
                <h3 class="product-name">
                    <a href="product-view.html">보스턴 라거</a>
                </h3>
                <div class="price">American Lager | 4.9% ABV</div>
            </div>
        </div>
    </div>
    <div class="product-hover">
        <h3 class="product-name">
            <a href="/recipe/1/보스턴_라거_클론">보스턴 라거</a>
        </h3>
        <div class="price">American Lager | 4.9% ABV</div>
        <a href="/recipe/1/보스턴_라거_클론" class="product-image">
            <img src="/resources/recipe/1/recipe_small_1.jpg" alt="" title="" width="70" height="70">
        </a>
        <ul>
            <li>2SRM : 밝은 노랑</li>
            <li>초기비중 : 1.070</li>
            <li>최종비중 : 1.018</li>
            <li>20IBU</li>
        </ul>
        <div class="actions">
            <a href="/recipe/1/보스턴_라거_클론" class="add-cart">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <g>
                      <path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
                      H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
                      c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
                      M13.001,14H3V6h10V14z"></path>
                      <path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
                      <path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
                      <path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
                  </g>
                </svg>
            </a>
            <a href="#" class="add-wishlist">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                <path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
                  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
                  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
                </svg>
            </a>
            <a href="#" class="add-compare">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
                    <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
                    <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
                </svg>
            </a>
        </div><!-- .actions -->
    </div><!-- .product-hover -->
</div><!-- .product -->
<div class="col-sm-3 col-md-3 product rotation">
    <div class="default">
        <a href="product-view.html" class="product-image">
            <img src="/resources/recipe/2/recipe_2.jpg" alt="" title="" width="270" height="270">
        </a>
        <div class="product-description">
            <div class="vertical">
                <h3 class="product-name">
                    <a href="product-view.html">스컬핀 IPA</a>
                </h3>
                <div class="price">American IPA | 7.00% ABV</div>
            </div>
        </div>
    </div>
    <div class="product-hover">
        <h3 class="product-name">
            <a href="product-view.html">Sony 3D TV KD3-46H853</a>
        </h3>
        <div class="price">$1, 449.00</div>
        <a href="product-view.html" class="product-image">
            <img src="http://template.progressive.itembridge.com/2.1.8/img/content/product-12.png" alt="" title="" width="70" height="70">
        </a>
        <ul>
            <li>117 cm / 46"LCD TV</li>
            <li>Full HD 3D &amp; 2D</li>
            <li>Sony Internet TV</li>
            <li>Dynamic Edge LED</li>
            <li>1X-Reality PRO</li>
        </ul>
        <div class="actions">
            <a href="product-view.html" class="add-cart">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <g>
                      <path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
                      H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
                      c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
                      M13.001,14H3V6h10V14z"></path>
                      <path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
                      <path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
                      <path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
                  </g>
                </svg>
            </a>
            <a href="#" class="add-wishlist">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                <path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
                  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
                  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
                </svg>
            </a>
            <a href="#" class="add-compare">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
                    <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
                    <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
                </svg>
            </a>
        </div><!-- .actions -->
    </div><!-- .product-hover -->
</div><!-- .product -->
<div class="col-sm-3 col-md-3 product rotation">
    <div class="default">
        <a href="product-view.html" class="product-image">
            <img src="/resources/recipe/3/recipe_3.jpg" alt="" title="" width="270" height="270">
        </a>
        <div class="product-description">
            <div class="vertical">
                <h3 class="product-name">
                    <a href="product-view.html">Dark Sea</a>
                </h3>
                <div class="price">Russian Imperial Stout |  9.80% ABV </div>
            </div>
        </div>
    </div>
    <div class="product-hover">
        <h3 class="product-name">
            <a href="product-view.html">Projector VPL-VW95ES</a>
        </h3>
        <div class="price">$1, 449.00</div>
        <a href="product-view.html" class="product-image">
            <img src="http://template.progressive.itembridge.com/2.1.8/img/content/product-13.png" alt="" title="" width="70" height="70">
        </a>
        <ul>
            <li>117 cm / 46"LCD TV</li>
            <li>Full HD 3D &amp; 2D</li>
            <li>Sony Internet TV</li>
            <li>Dynamic Edge LED</li>
            <li>1X-Reality PRO</li>
        </ul>
        <div class="actions">
            <a href="product-view.html" class="add-cart">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <g>
                      <path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
                      H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
                      c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
                      M13.001,14H3V6h10V14z"></path>
                      <path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
                      <path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
                      <path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
                  </g>
                </svg>
            </a>
            <a href="#" class="add-wishlist">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                <path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
                  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
                  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
                </svg>
            </a>
            <a href="#" class="add-compare">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
                    <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
                    <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
                </svg>
            </a>
        </div><!-- .actions -->
    </div><!-- .product-hover -->
</div><!-- .product -->
<div class="col-sm-3 col-md-3 product rotation">
    <div class="default">
        <a href="product-view.html" class="product-image">
            <img src="/resources/recipe/4/recipe_4.jpg" alt="" title="" width="270" height="270">
        </a>
        <div class="product-description">
            <div class="vertical">
                <h3 class="product-name">
                    <a href="product-view.html">오트밀 스타우트</a>
                </h3>
                <div class="price">Oatmeal Stout |  7.20% ABV</div>
            </div>
        </div>
    </div>
    <div class="product-hover">
        <h3 class="product-name">
            <a href="product-view.html">XA700 Wireless speaker</a>
        </h3>
        <div class="price">$1, 449.00</div>
        <a href="product-view.html" class="product-image">
            <img src="http://template.progressive.itembridge.com/2.1.8/img/content/product-14.png" alt="" title="" width="70" height="70">
        </a>
        <ul>
            <li>117 cm / 46"LCD TV</li>
            <li>Full HD 3D &amp; 2D</li>
            <li>Sony Internet TV</li>
            <li>Dynamic Edge LED</li>
            <li>1X-Reality PRO</li>
        </ul>
        <div class="actions">
            <a href="product-view.html" class="add-cart">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <g>
                      <path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
                      H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
                      c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
                      M13.001,14H3V6h10V14z"></path>
                      <path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
                      <path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
                      <path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
                  </g>
                </svg>
            </a>
            <a href="#" class="add-wishlist">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                <path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
                  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
                  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
                </svg>
            </a>
            <a href="#" class="add-compare">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
                    <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
                    <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
                </svg>
            </a>
        </div><!-- .actions -->
    </div><!-- .product-hover -->
</div><!-- .product -->
<div class="col-sm-3 col-md-3 product rotation">
    <div class="default">
        <a href="product-view.html" class="product-image">
            <img src="http://template.progressive.itembridge.com/2.1.8/img/content/product-5.png" alt="" title="" width="270" height="270">
        </a>
        <div class="product-description">
            <div class="vertical">
                <h3 class="product-name">
                    <a href="product-view.html"> 800 Series Diamond</a>
                </h3>
                <div class="price">$1, 449.00</div>
            </div>
        </div>
    </div>
    <div class="product-hover">
        <h3 class="product-name">
            <a href="product-view.html"> 800 Series Diamond</a>
        </h3>
        <div class="price">$1, 449.00</div>
        <a href="product-view.html" class="product-image">
            <img src="http://template.progressive.itembridge.com/2.1.8/img/content/product-5.png" alt="" title="" width="70" height="70">
        </a>
        <ul>
            <li>117 cm / 46"LCD TV</li>
            <li>Full HD 3D &amp; 2D</li>
            <li>Sony Internet TV</li>
            <li>Dynamic Edge LED</li>
            <li>1X-Reality PRO</li>
        </ul>
        <div class="actions">
            <a href="product-view.html" class="add-cart">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <g>
                      <path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
                      H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
                      c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
                      M13.001,14H3V6h10V14z"></path>
                      <path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
                      <path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
                      <path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
                  </g>
                </svg>
            </a>
            <a href="#" class="add-wishlist">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                <path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
                  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
                  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
                </svg>
            </a>
            <a href="#" class="add-compare">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
                    <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
                    <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
                </svg>
            </a>
        </div><!-- .actions -->
    </div><!-- .product-hover -->
</div><!-- .product -->
<div class="col-sm-3 col-md-3 product rotation">
    <div class="default">
        <a href="product-view.html" class="product-image">
            <img src="http://template.progressive.itembridge.com/2.1.8/img/content/product-6.png" alt="" title="" width="270" height="270">
        </a>
        <div class="product-description">
            <div class="vertical">
                <h3 class="product-name">
                    <a href="product-view.html">AirPlay Hi-Fi system</a>
                </h3>
                <div class="price">$1, 449.00</div>
            </div>
        </div>
    </div>
    <div class="product-hover">
        <h3 class="product-name">
            <a href="product-view.html">AirPlay Hi-Fi system</a>
        </h3>
        <div class="price">$1, 449.00</div>
        <a href="product-view.html" class="product-image">
            <img src="http://template.progressive.itembridge.com/2.1.8/img/content/product-6.png" alt="" title="" width="70" height="70">
        </a>
        <ul>
            <li>117 cm / 46"LCD TV</li>
            <li>Full HD 3D &amp; 2D</li>
            <li>Sony Internet TV</li>
            <li>Dynamic Edge LED</li>
            <li>1X-Reality PRO</li>
        </ul>
        <div class="actions">
            <a href="product-view.html" class="add-cart">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <g>
                      <path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
                      H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
                      c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
                      M13.001,14H3V6h10V14z"></path>
                      <path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
                      <path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
                      <path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
                  </g>
                </svg>
            </a>
            <a href="#" class="add-wishlist">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                <path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
                  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
                  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
                </svg>
            </a>
            <a href="#" class="add-compare">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
                    <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
                    <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
                </svg>
            </a>
        </div><!-- .actions -->
    </div><!-- .product-hover -->
</div><!-- .product -->
<div class="col-sm-3 col-md-3 product rotation">
    <div class="default">
        <a href="product-view.html" class="product-image">
            <img src="http://template.progressive.itembridge.com/2.1.8/img/content/product-7.png" alt="" title="" width="270" height="270">
        </a>
        <div class="product-description">
            <div class="vertical">
                <h3 class="product-name">
                    <a href="product-view.html">Sony Xperia Z</a>
                </h3>
                <div class="price">$1, 449.00</div>
            </div>
        </div>
    </div>
    <div class="product-hover">
        <h3 class="product-name">
            <a href="product-view.html">Sony Xperia Z</a>
        </h3>
        <div class="price">$1, 449.00</div>
        <a href="product-view.html" class="product-image">
            <img src="http://template.progressive.itembridge.com/2.1.8/img/content/product-7.png" alt="" title="" width="70" height="70">
        </a>
        <ul>
            <li>117 cm / 46"LCD TV</li>
            <li>Full HD 3D &amp; 2D</li>
            <li>Sony Internet TV</li>
            <li>Dynamic Edge LED</li>
            <li>1X-Reality PRO</li>
        </ul>
        <div class="actions">
            <a href="product-view.html" class="add-cart">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <g>
                      <path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
                      H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
                      c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
                      M13.001,14H3V6h10V14z"></path>
                      <path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
                      <path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
                      <path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
                  </g>
                </svg>
            </a>
            <a href="#" class="add-wishlist">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                <path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
                  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
                  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
                </svg>
            </a>
            <a href="#" class="add-compare">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
                    <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
                    <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
                </svg>
            </a>
        </div><!-- .actions -->
    </div><!-- .product-hover -->
</div><!-- .product -->
<div class="col-sm-3 col-md-3 product rotation">
    <div class="default">
        <a href="product-view.html" class="product-image">
            <img src="http://template.progressive.itembridge.com/2.1.8/img/content/product-8.png" alt="" title="" width="270" height="270">
        </a>
        <div class="product-description">
            <div class="vertical">
                <h3 class="product-name">
                    <a href="product-view.html">Xperia miro</a>
                </h3>
                <div class="price">$1, 449.00</div>
            </div>
        </div>
    </div>
    <div class="product-hover">
        <h3 class="product-name">
            <a href="product-view.html">Xperia miro</a>
        </h3>
        <div class="price">$1, 449.00</div>
        <a href="product-view.html" class="product-image">
            <img src="http://template.progressive.itembridge.com/2.1.8/img/content/product-8.png" alt="" title="" width="70" height="70">
        </a>
        <ul>
            <li>117 cm / 46"LCD TV</li>
            <li>Full HD 3D &amp; 2D</li>
            <li>Sony Internet TV</li>
            <li>Dynamic Edge LED</li>
            <li>1X-Reality PRO</li>
        </ul>
        <div class="actions">
            <a href="product-view.html" class="add-cart">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <g>
                      <path fill="#1e1e1e" d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
                      H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
                      c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
                      M13.001,14H3V6h10V14z"></path>
                      <path fill="#1e1e1e" d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
                      <path fill="#1e1e1e" d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
                      <path fill="#1e1e1e" d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
                  </g>
                </svg>
            </a>
            <a href="#" class="add-wishlist">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                <path fill="#1e1e1e" d="M11.335,0C10.026,0,8.848,0.541,8,1.407C7.153,0.541,5.975,0,4.667,0C2.088,0,0,2.09,0,4.667C0,12,8,16,8,16
                  s8-4,8-11.333C16.001,2.09,13.913,0,11.335,0z M8,13.684C6.134,12.49,2,9.321,2,4.667C2,3.196,3.197,2,4.667,2C6,2,8,4,8,4
                  s2-2,3.334-2c1.47,0,2.666,1.196,2.666,2.667C14.001,9.321,9.867,12.49,8,13.684z"></path>
                </svg>
            </a>
            <a href="#" class="add-compare">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                  <path fill="#1e1e1e" d="M16,3.063L13,0v2H1C0.447,2,0,2.447,0,3s0.447,1,1,1h12v2L16,3.063z"></path>
                    <path fill="#1e1e1e" d="M16,13.063L13,10v2H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h12v2L16,13.063z"></path>
                    <path fill="#1e1e1e" d="M15,7H3V5L0,7.938L3,11V9h12c0.553,0,1-0.447,1-1S15.553,7,15,7z"></path>
                </svg>
            </a>
        </div><!-- .actions -->
    </div><!-- .product-hover -->
</div><!-- .product -->
</div>
</div>
</div><!-- .carousel-box -->

<div class="content-block frame text-center bottom-padding">
    <p class="lead">Welcome to our site. There are many variations alteration in some form, by injected humour, or randomised words which don't look even slightly believable. Donec pharetra, lectus nec dignissim pharetra quis libero. </p>
    <button class="btn btn-default" data-appear-animation="bounceIn">Read More</button>
    <button class="btn btn-default" data-appear-animation="bounceIn">Join Now</button>
</div><!-- .content-block -->
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-6 promo-partners bottom-padding">
            <div class="title-box">
                <h2 class="title">파트너 - partners</h2>
            </div>
            <div class="row manufactures manufactures-list">
                <div class="make-wrapper">
                    <a href="#" class="make">
                        <img src="http://template.progressive.itembridge.com/2.1.8/img/content/make-2.png" width="128" height="128" alt="">
                    </a>
                </div><!--

        --><div class="make-wrapper">
                <a href="#" class="make">
                    <img src="http://template.progressive.itembridge.com/2.1.8/img/content/make-3.png" width="128" height="128" alt="">
                </a>
            </div><!--

        --><div class="make-wrapper">
                <a href="#" class="make">
                    <img src="http://template.progressive.itembridge.com/2.1.8/img/content/make-4.png" width="128" height="128" alt="">
                </a>
            </div>
            </div>
            <p>Duis bibendum pulvinar laoreet. Ut eu arcu sit amet elit placerat pharetra sit amet a tortor. Fusce vestibulum auctor rhoncus. Nullam rhoncus, tellus a congue elementum, leo ipsum tincidunt justo, ut condimentum velit eros et lectus. Phasellus ultrices rhoncus vehicula.</p>
            <p>Integer ultricies semper massa non condimentum. Phasellus eu ipsum justo. Nullam non pulvinar purus. Ut ante ipsum, venenatis at tristique quis, congue vitae felis. Aliquam cursus diam in massa dapibus auctor. In volutpat, risus non egestas luctus, justo tellus laoreet justo. </p>
        </div><!-- .promo-partners -->

        <div class="col-sm-12 col-md-6">
            <div class="title-box">
                <a href="/board/freeBoard" class="btn btn-default">전체 읽기 <i class="icon-arrow-right icon-white"></i></a>
                <h2 class="title">최신 글 목록</h2>
            </div>
            <table class="table">
                <tbody id="result">
                </tbody>
            </table>
            <%--<ul class="latest-posts">
                <li>
                    <img class="image img-circle" src="http://template.progressive.itembridge.com/2.1.8/img/content/product-1.png" alt="" title="" width="84" height="84" data-appear-animation="rotateIn">
                    <div class="meta">
                        <span>${newPost.insertId}</span>,
                        <span class="time">${newPost.insertDate}</span>
                    </div>
                    <div class="description">
                        <a href="#">
                            ${newPost.nttCn}
                        </a>
                    </div>
                </li>
                <li>
                    <img class="image img-circle" src="http://template.progressive.itembridge.com/2.1.8/img/content/product-2.png" alt="" title="" width="84" height="84" data-appear-animation="rotateIn">
                    <div class="meta">
                        <span>Mike Example</span>,
                        <span class="time">03.11.2013, 10:45:</span>
                    </div>
                    <div class="description">
                        <a href="#">
                            Maecenas porttitor orci vitae turpis interdum sit amet dignissim dolor consequat. Aenean id erat lorem.
                        </a>
                    </div>
                </li>
                <li>
                    <img class="image img-circle" src="http://template.progressive.itembridge.com/2.1.8/img/content/product-3.png" alt="" title="" width="84" height="84" data-appear-animation="rotateIn">
                    <div class="meta">
                        <span>Mike Example</span>,
                        <span class="time">03.11.2013, 10:45:</span>
                    </div>
                    <div class="description">
                        <a href="#">
                            Mauris vehicula fringilla nisl porttitor sollicitudin. Suspendisse facilisis metus id neque fermentum eget rutrum orci pulvinar.
                        </a>
                    </div>
                </li>
            </ul>--%>
        </div>
    </div>
</div>
</article>

</div><!-- .page-box-content -->
</div><!-- .page-box -->

<footer id="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row sidebar">
                <aside class="col-xs-12 col-sm-6 col-md-3 widget social">
                    <div class="title-block">
                        <h3 class="title">소식지</h3>
                    </div>
                    <p>Follow us in social media</p>
                    <a class="sbtnf sbtnf-rounded color color-hover icon-facebook" href="#"></a>
                    <a class="sbtnf sbtnf-rounded color color-hover icon-twitter" href="#"></a>
                    <a class="sbtnf sbtnf-rounded color color-hover icon-gplus" href="#"></a>
                    <a class="sbtnf sbtnf-rounded color color-hover icon-linkedin" href="#"></a>
                    <div class="clearfix"></div>
                </aside>

                <aside class="col-xs-12 col-sm-6 col-md-3 widget newsletter">
                    <div class="title-block">
                        <h3 class="title">Newsletter Signup</h3>
                    </div>
                    <div>
                        <p>Sign up for newsletter</p>
                        <div class="clearfix"></div>
                        <form>
                            <input class="form-control" type="email">
                            <button class="submit"><span class="glyphicon glyphicon-arrow-right"></span></button>
                        </form>
                    </div>
                </aside><!-- .newsletter -->

                <aside class="col-xs-12 col-sm-6 col-md-3 widget links">
                    <div class="title-block">
                        <h3 class="title">Information</h3>
                    </div>
                    <nav>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms &amp; Condotions</a></li>
                            <li><a href="#">Secure payment</a></li>
                        </ul>
                    </nav>
                </aside>

                <aside class="col-xs-12 col-sm-6 col-md-3 widget links">
                    <div class="title-block">
                        <h3 class="title">My account</h3>
                    </div>
                    <nav>
                        <ul>
                            <li><a href="#">My account</a></li>
                            <li><a href="#">Order History</a></li>
                            <li><a href="#">Wish List</a></li>
                            <li><a href="#">Newsletter</a></li>
                        </ul>
                    </nav>
                </aside>
            </div>
        </div>
    </div><!-- .footer-top -->
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="copyright col-xs-12 col-sm-3 col-md-3">
                    Copyright © ItemBridge Inc., 2013
                </div>

                <div class="phone col-xs-6 col-sm-3 col-md-3">
                    <div class="footer-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
			  <path fill="#c6c6c6" d="M11.001,0H5C3.896,0,3,0.896,3,2c0,0.273,0,11.727,0,12c0,1.104,0.896,2,2,2h6c1.104,0,2-0.896,2-2
			   c0-0.273,0-11.727,0-12C13.001,0.896,12.105,0,11.001,0z M8,15c-0.552,0-1-0.447-1-1s0.448-1,1-1s1,0.447,1,1S8.553,15,8,15z
				M11.001,12H5V2h6V12z"></path>
			</svg>
                    </div>
                    <strong class="title">Call Us:</strong> +1 (877) 123-45-67 <br>
                    <strong>or</strong> +1 (777) 123-45-67
                </div>

                <div class="address col-xs-6 col-sm-3 col-md-3">
                    <div class="footer-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
			  <g>
                  <g>
                      <path fill="#c6c6c6" d="M8,16c-0.256,0-0.512-0.098-0.707-0.293C7.077,15.491,2,10.364,2,6c0-3.309,2.691-6,6-6
					c3.309,0,6,2.691,6,6c0,4.364-5.077,9.491-5.293,9.707C8.512,15.902,8.256,16,8,16z M8,2C5.795,2,4,3.794,4,6
					c0,2.496,2.459,5.799,4,7.536c1.541-1.737,4-5.04,4-7.536C12.001,3.794,10.206,2,8,2z"></path>
                  </g>
                  <g>
                      <circle fill="#c6c6c6" cx="8.001" cy="6" r="2"></circle>
                  </g>
              </g>
			</svg>
                    </div>
                    49 Archdale, 2B Charleston 5655, Excel Tower<br> OPG Rpad, 4538FH
                </div>

                <div class="col-xs-12 col-sm-3 col-md-3">
                    <a href="#" class="up">
                        <span class="glyphicon glyphicon-arrow-up"></span>
                    </a>
                </div>
            </div>
        </div>
    </div><!-- .footer-bottom -->
</footer>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/resources/asset/js/bootstrap.min.js"></script>
<script src="/resources/asset/js/price-regulator/jshashtable-2.1_src.js"></script>
<script src="/resources/asset/js/price-regulator/jquery.numberformatter-1.2.3.js"></script>
<script src="/resources/asset/js/price-regulator/tmpl.js"></script>
<script src="/resources/asset/js/price-regulator/jquery.dependClass-0.1.js"></script>
<script src="/resources/asset/js/price-regulator/draggable-0.1.js"></script>
<script src="/resources/asset/js/price-regulator/jquery.slider.js"></script>
<script src="/resources/asset/js/jquery.carouFredSel-6.2.1-packed.js"></script>
<script src="/resources/asset/js/jquery.touchSwipe.min.js"></script>
<script src="/resources/asset/js/jquery.elevateZoom-3.0.8.min.js"></script>
<script src="/resources/asset/js/jquery.imagesloaded.min.js"></script>
<script src="/resources/asset/js/jquery.appear.js"></script>
<script src="/resources/asset/js/jquery.sparkline.min.js"></script>
<script src="/resources/asset/js/jquery.easypiechart.min.js"></script>
<script src="/resources/asset/js/jquery.easing.1.3.js"></script>
<script src="/resources/asset/js/jquery.fancybox.pack.js"></script>
<script src="/resources/asset/js/isotope.pkgd.min.js"></script>
<script src="/resources/asset/js/jquery.knob.js"></script>
<script src="/resources/asset/js/jquery.stellar.min.js"></script>
<script src="/resources/asset/js/jquery.selectBox.min.js"></script>
<script src="/resources/asset/js/jquery.royalslider.min.js"></script>
<script src="/resources/asset/js/jquery.tubular.1.0.js"></script>
<script src="/resources/asset/js/country.js"></script>
<script src="/resources/asset/js/spin.min.js"></script>
<script src="/resources/asset/js/ladda.min.js"></script>
<script src="/resources/asset/js/masonry.pkgd.min.js"></script>
<script src="/resources/asset/js/morris.min.js"></script>
<script src="/resources/asset/js/raphael.min.js"></script>
<script src="/resources/asset/js/video.js"></script>
<script src="/resources/asset/js/pixastic.custom.js"></script>
<script src="/resources/asset/js/livicons-1.3.min.js"></script>
<script src="/resources/asset/js/layerslider/greensock.js"></script>
<script src="/resources/asset/js/layerslider/layerslider.transitions.js"></script>
<script src="/resources/asset/js/layerslider/layerslider.kreaturamedia.jquery.js"></script>
<script src="/resources/asset/js/revolution/jquery.themepunch.plugins.min.js"></script>
<script src="/resources/asset/js/revolution/jquery.themepunch.revolution.min.js"></script>
<script src="/resources/asset/js/main.js"></script>

</body>
</html>

<content tag="local_script">
    <script>

        function getNewPost(){
            $("#result").load("/common/list");
        }

        $(document).ready(function() {

            getNewPost();

        });

    </script>
</content>