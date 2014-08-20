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
    <div class="tm-content page-content-inner">
        <p class="woocommerce-result-count"> Showing 1–9 of 12 results</p>
        <form method="get" class="woocommerce-ordering">
            <select class="orderby" name="orderby">
                <option selected="selected" value="menu_order">Default sorting</option>
                <option value="popularity">Sort by popularity</option>
                <option value="rating">Sort by average rating</option>
                <option value="date">Sort by newness</option>
                <option value="price">Sort by price: low to high</option>
                <option value="price-desc">Sort by price: high to low</option>
            </select>
        </form>
        <c:forEach items="${recipeList}" var="recipeList" varStatus="status">
            <article>
                <div class="tm-content-inner">
                    <div class="entry-thumbnail">
                        <a href="single-blog.html">
                            <img src="http://placehold.it/150x150" alt="Thumb">
                        </a>
                    </div>
                    <div class="entry-container">
                        <div class="time">August 13th, 2013</div>
                        <h3>
                            <a href="single-blog.html">Tutorial: Affiliate Tracking Widget In WordPress</a>
                        </h3>
                        <div class="meta">
                            by
                            <a href="author.html" class="author">admin</a>
                            in
                                        <span class="incategory">
                                        <a href="category-blog.html">Design</a>
                                        </span>
                            <a class="tm-icon-comment" href="single-blog.html#tm-comment">9</a>
                        </div>
                        <p>
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum...
                            <a class="more-link" href="single-blog.html">Read more</a>
                        </p>
                    </div>
                </div>
            </article>
        </c:forEach>

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
        <h3 class="tm-title">Product Categories</h3>
        <ul class="product-categories">
            <li>
                <a href="">
                    Beat Collection
                </a>
            </li>
            <li>
                <a href="">
                    Coats
                </a>
            </li>
            <li>
                <a href="">
                    Jeans
                </a>
            </li>
            <li>
                <a href="">
                    Shoes
                </a>
            </li>
            <li>
                <a href="">
                    T-shirts
                </a>
            </li>
            <li>
                <a href="">
                    Accessoris
                </a>
            </li>
        </ul>
    </aside>
    <aside class="widget woocommerce widget_price_filter">
        <h3 class="tm-title">Filter by price</h3>
        <form>
            <div class="price_slider_wrapper">
                <div class="price_slider ui-slider"></div>
                <div class="price_slider_amount">
                    <button class="button" type="submit">Filter</button>
                    <div class="price_label">
                        Price: <input type="text">
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </form>
    </aside>
    <aside class="widget woocommerce chosen-color widget_layered_nav">
        <h3 class="tm-title">Color</h3>
        <!--
        <select id="dropdown_layered_nav_color">
            <option value="">Blue</option>
            <option value="">Red</option>
            <option value="">Green</option>
            <option value="">Grey</option>
            <option value="">White</option>
            <option value="">Black</option>
            <option value="">Orange</option>
        </select>
        -->
        <ul>
            <li class="blue">
                <a href="">Blue</a>
            </li>
            <li class="red">
                <a href="">Red</a>
            </li>
            <li class="green">
                <a href="">Green</a>
            </li>
            <li class="grey">
                <a href="">Grey</a>
            </li>
            <li class="white">
                <a href="">White</a>
            </li>
            <li class="black">
                <a href="">Black</a>
            </li>
            <li class="orange">
                <a href="">Orange</a>
            </li>
            <li class="lightblue">
                <a href="">LightBlue</a>
            </li>
            <li class="darkblue">
                <a href="">DarkBlue</a>
            </li>
        </ul>
    </aside>
    <aside class="widget woocommerce chosen-size widget_layered_nav">
        <h3 class="tm-title">Size</h3>
        <ul>
            <li>
                <a href="">
                    XL
                    <small class="count">3</small>
                </a>
            </li>
            <li class="chosen">
                <a href="">
                    L
                    <small class="count">15</small>
                </a>
            </li>
            <li>
                <a href="">
                    M
                    <small class="count">11</small>
                </a>
            </li>
            <li>
                <a href="">
                    S
                    <small class="count">5</small>
                </a>
            </li>
        </ul>
    </aside>
    <aside class="widget woocommerce">
        <h3 class="tm-title">Featured Product</h3>
        <ul class="product_list_widget">
            <li>
                <a title="Product" href="">
                    <img alt="img" width="70" height="70" src="http://placehold.it/70x70/eee">
                    ARMILLA EMBUATADA
                </a>
                <div title="Rated 3.50 out of 5" class="star-rating">
									<span style="width:70%">
										<strong class="rating">3.50</strong>
										out of 5
									</span>
                </div>
                <span class="from">From: </span>
                <span class="amount">27,99 €</span>
            </li>
            <li>
                <a title="Product" href="">
                    <img alt="img" width="70" height="70" src="http://placehold.it/70x70/eee">
                    SAMARRETA BÀSICA COTÓ
                </a>
                <span class="amount">7,59 €</span>
            </li>
            <li>
                <a title="Product" href="">
                    <img alt="img" width="70" height="70" src="http://placehold.it/70x70/eee">
                    BOTES URBANES NAPA
                </a>
                <span class="from">From: </span>
                <span class="amount">55,99 €</span>
            </li>
            <li>
                <a title="Product" href="">
                    <img alt="img" width="70" height="70" src="http://placehold.it/70x70/eee">
                    JEANS SKINNY FIT
                </a>
                <span class="from">From: </span>
                <span class="amount">23,99 €</span>
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