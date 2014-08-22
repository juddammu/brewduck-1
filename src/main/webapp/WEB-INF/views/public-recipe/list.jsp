<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="tm-page-title">
    <div class="tm-wrap tm-table">
        <div class="tm-title-captions">
            <h2 class="tm-entry-title">xxx님의 레시피들</h2>
        </div>
        <ul class="tm-breadcrumbs">
            <li>

            </li>
        </ul>
    </div>
</div>
<!--tm-page-title-->
<div id="tm-page-body">
<div id="tm-blog" class="tm-container tm-wrap tm-blog-style-magazine1 tm-sidebar-right">
<div class="page-content">
    <div class="tm-content page-content-inner tm-sidebar-second-left">
<div class="tm-main-content">
<div class="tm-main-content-inner">

<c:forEach items="${recipeList}" var="recipeList" varStatus="i">
    <article>
    <div class="tm-content-inner">
        <div class="entry-thumbnail">
            <a href="#">
                <img width="150" src="<c:url value='/download/downloadFile.do?'/>requestedFile=${recipeList.atchCoverFileName}"  alt="Thumb">
            </a>
        </div>
        <div class="entry-container">
            <div class="time">${recipeList.insertDate}</div>
            <h3>
                <a href="/public/recipe/${recipeList.brewer}/${recipeList.seq}/${recipeList.titleInUrl}">${recipeList.name}</a>
            </h3>
            <div class="meta">
                by
                <a href="#" class="author">${recipeList.brewerNm}</a>
                in
                    <span class="incategory">
                    <a href="/style/${recipeList.styleSeq}/">${recipeList.styleName}</a>
                    </span>
                <a class="tm-icon-comment" href="#">0</a>
            </div>
            <p>
                    ${recipeList.notes}
                <!--a class="more-link" href="#">..더읽기</a-->
            </p>
        </div>
    </div>
</article>
</c:forEach>
</div>
</div>
<!--page-sidebar-second-->
        <div class="page-sidebar-second">
        <aside class="widget widget_text box-white">
            <h3 class="tm-title">뱃지</h3>
            <div class="textwidget">
                <a href="#" class="tm-btn blue small">버그왕</a>
                <a href="#" class="tm-btn small">클로즈베타테스터</a>
                <a href="#" class="tm-btn blue small">2014 KHC 우승</a>
            </div>
        </aside>
    </div>
    <!--page-sidebar-second-->
</div>
</div>
<!--page-content-->
<div class="page-sidebar">
    <!--
    <aside class="widget woocommerce widget_shopping_cart">
        <h3 class="tm-title">Cart</h3>
        <div class="widget_shopping_cart_content">
            <ul class="cart_list product_list_widget">
                <li>
                    <a href="">
                        <img alt="img" class="attachment-shop_thumbnail wp-post-image" src="">
                        Bufandas de punt
                    </a>
                    <span class="quantity">
                        1 ×
                        <span class="amount">£7.59</span>
                    </span>
                </li>
            </ul>
            <p class="total"><strong>Subtotal:</strong> <span class="amount">£7.59</span></p>
            <p class="buttons">
                <a class="button" href="">View Cart →</a>
                <a class="button checkout" href="">Checkout →</a>
            </p>
        </div>
    </aside>
    -->
    <aside class="widget woocommerce tm-list-style1 widget_product_categories">
        <h3 class="tm-title">스타일 (BJCP-2008)</h3>
        <ul class="product-categories">
            <li>
                <a href="">
                    인디아 페일 에일 (4)
                </a>
            </li>
        </ul>
    </aside>
    <aside class="widget woocommerce widget_price_filter">
        <h3 class="tm-title">Bitterness 필터</h3>
        <form>
            <div class="price_slider_wrapper">
                <div class="price_slider ui-slider"></div>
                <div class="price_slider_amount">
                    <button class="button" type="submit">필터</button>
                    <div class="price_label">
                        IBU : <input type="text">
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </form>
    </aside>
    <aside class="widget woocommerce chosen-color widget_layered_nav">
        <h3 class="tm-title">Color</h3>

        <select id="dropdown_layered_nav_color">
            <option value="">Pale Straw (1~2)</option>
            <option value="">Straw (3)</option>
            <option value="">Pale Gold (4)</option>
            <option value="">Deep Gold (5~6)</option>
            <option value="">Pale Amber(7~9)</option>
            <option value="">Medium Amber (10~12)</option>
            <option value="">Pale Amber (13~15)</option>
            <option value="">Amber Brown (16~18)</option>
            <option value="">Brown (19~20)</option>
            <option value="">Ruby Brown (21~24)</option>
            <option value="">Deep Brown (25~30)</option>
            <option value="">Black (31~40)</option>
        </select>
    </aside>
    <aside class="widget woocommerce chosen-size widget_layered_nav">
        <h3 class="tm-title">양조방법</h3>
        <ul>
            <li>
                <a href="">
                    완곡
                    <small class="count">3</small>
                </a>
            </li>
            <li class="chosen">
                <a href="">
                    부분
                    <small class="count">15</small>
                </a>
            </li>
            <li>
                <a href="">
                    캔
                    <small class="count">11</small>
                </a>
            </li>
        </ul>
    </aside>
    <aside class="widget woocommerce">
        <h3 class="tm-title">높은 평점의 레시피들</h3>
        <ul class="product_list_widget">
            <li>
                <a title="Product" href="">
                    <img alt="img" width="70" height="70" src="http://placehold.it/70x70/eee">
                    Fathom
                </a>
                <div title="Rated 3.50 out of 5" class="star-rating">
									<span style="width:90%">
										<strong class="rating">4.70</strong>
										out of 5
									</span>
                </div>
                <span class="from">IPA</span>
                <span class="amount">..더보기</span>
            </li>
            <li>
                <a title="Product" href="">
                    <img alt="img" width="70" height="70" src="http://placehold.it/70x70/eee">
                    Fathom
                </a>
                <div title="Rated 3.50 out of 5" class="star-rating">
									<span style="width:70%">
										<strong class="rating">3.50</strong>
										out of 5
									</span>
                </div>
                <span class="from">TEST</span>
                <span class="amount">..더보기</span>
            </li>
        </ul>
    </aside>
</div>
<!--page-sidebar-->
<div class="clear"></div>
</div>
<!--tm-template-->
</div>
<!--tm-page-body-default-box-->