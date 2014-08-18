<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>

<%@ include file="/WEB-INF/views/common/include/home_header.jsp" %>


<body>
<header>
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
    <a href="index.html">Home</a>
    <ul class="sub-menu">
        <li>
            <a href="index.html">v1: Home LayerSlider</a>
        </li>
        <li>
            <a href="home-flexslider.html">v2: Home FlexSlider</a>
        </li>
        <li>
            <a href="home-landingpage.html">v3: Landing Page</a>
        </li>
        <li>
            <a href="home-apps.html">v4: App Promo Style</a>
        </li>
        <li>
            <a href="home-business.html">v5: Business</a>
        </li>
        <li>
            <a href="home-box.html">v6: Business Boxed</a>
        </li>
        <li>
            <a href="home-creative.html">v7: Creative</a>
        </li>
        <li>
            <a href="home-personal.html">v8: Blog Personal</a>
        </li>
        <li>
            <a href="home-masonry.html">v9: Blog Masonry</a>
        </li>
        <li>
            <a href="home-maz.html">v10: Blog Tutorial</a>
        </li>
        <li>
            <a href="home-shop.html">v11: Shop Fashion</a>
        </li>
        <li>
            <a href="under-construction2.html">v12: Under Construction</a>
        </li>
        <li>
            <a href="#">to be continue...</a>
        </li>
    </ul>
</li>
<li class="parent">
    <a href="#">Pages</a>
    <ul class="sub-menu">
        <li>
            <a href="about.html">About Us</a>
        </li>
        <li>
            <a href="404.html">Error 404</a>
        </li>
        <li>
            <a href="faq.html">FAQ</a>
        </li>
        <li>
            <a href="under-construction.html">Under Construction</a>
        </li>
        <li>
            <a href="under-construction2.html">Under Construction (2)</a>
        </li>
        <li>
            <a href="services.html">Services</a>
        </li>
        <li>
            <a href="pricing.html">Pricing</a>
        </li>
    </ul>
</li>
<li class="parent">
    <a href="#">Layout</a>
    <ul class="sub-menu">
        <li>
            <a href="widget.html">Widget Style</a>
        </li>
        <li>
            <a href="template-full.html">Default Template Fullwidth</a>
        </li>
        <li>
            <a href="template-box.html">Default Template Box</a>
        </li>
        <li>
            <a href="template-fixed.html">Default Template Fixed</a>
        </li>
        <li>
            <a href="sidebar-right.html">Right Sidebar</a>
        </li>
        <li>
            <a href="sidebar-left.html">Left Sidebar</a>
        </li>
        <li>
            <a href="sidebar-lcr.html">Sidebar + Content + Sidebar</a>
        </li>
        <li>
            <a href="sidebar-clr.html">Content + Sidebar + Sidebar</a>
        </li>
    </ul>
</li>
<li class="parent">
    <a href="#">Portfolio</a>
    <ul class="sub-menu">
        <li>
            <a href="portfolio-3col-classic.html">3 Column Classic layouts</a>
        </li>
        <li>
            <a href="portfolio-4col-text.html">4 Column Text layouts</a>
        </li>
        <li>
            <a href="single-portfolio.html">Single post layouts</a>
        </li>
    </ul>
</li>
<li class="current-menu-item parent">
    <a href="#">Blog</a>
    <ul class="sub-menu">
        <li>
            <a href="switch-layout.html">Switch layouts</a>
        </li>
        <li class="parent">
            <a href="#">News layouts</a>
            <ul class="sub-menu">
                <li>
                    <a href="news-layout1.html">News layouts 01</a>
                </li>
                <li>
                    <a href="news-layout2.html">News layouts 02</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="single-blog.html">Single post layouts</a>
        </li>
    </ul>
</li>
<li class="parent">
    <a href="#">Shop</a>
    <ul class="sub-menu">
        <li>
            <a href="home-shop.html">Fedora Shop</a>
        </li>
        <li>
            <a href="shop-category.html">Category Page</a>
        </li>
        <li>
            <a href="shop-product.html">Product Page</a>
        </li>
    </ul>
</li>
<li class="parent tm-mega-menu">
    <a href="#">Shortcodes</a>
    <ul class="sub-menu">
        <li>
            <a href="#">Title 1</a>
            <ul class="sub-menu">
                <li>
                    <a href="s-accordion.html">Accordion</a>
                </li>
                <li>
                    <a href="s-alert-blockquote.html">Alert Messages & Blockquote</a>
                </li>
                <li>
                    <a href="s-animation.html">Animation Images</a>
                </li>
                <li>
                    <a href="s-button.html">Button</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#">Title 2</a>
            <ul class="sub-menu">
                <li>
                    <a href="s-column.html">Columns</a>
                </li>
                <li>
                    <a href="s-countdown.html">Countdown</a>
                </li>
                <li>
                    <a href="s-divider.html">Dividers</a>
                </li>
                <li>
                    <a href="s-dropcap-testimonial.html">Dropcaps & Testimonial</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#">Title 3</a>
            <ul class="sub-menu">
                <li>
                    <a href="s-gallery.html">Gallery</a>
                </li>
                <li>
                    <a href="s-iconbox.html">Icon Box</a>
                </li>
                <li>
                    <a href="s-iconlist.html">Icon List</a>
                </li>
                <li>
                    <a href="s-logo.html">Logo Clients</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#">Title 4</a>
            <ul class="sub-menu">
                <li>
                    <a href="s-post-content.html">Post Content</a>
                </li>
                <li>
                    <a href="s-progress-bar.html">Progress Bar</a>
                </li>
                <li>
                    <a href="s-promobox.html">Promo Box</a>
                </li>
                <li>
                    <a href="s-tab.html">Tabs</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#">Title 5</a>
            <ul class="sub-menu">
                <li>
                    <a href="s-table.html">Table & Pricing Table</a>
                </li>
                <li>
                    <a href="s-team.html">Team Element</a>
                </li>
            </ul>
        </li>
    </ul>
</li>
<li>
    <a href="contact.html">Contact</a>
</li>
<li class="tm-modal">
    <a href="#loginmodal">Modal Login</a>
</li>
</ul>
</nav>
<!--tm-nav-->
<div class="tm-social-icons">
    <a href="#" class="tm-icon-facebook">
        <i class="fa fa-facebook"></i>
    </a>
    <a href="#" class="tm-icon-twitter">
        <i class="fa fa-twitter"></i>
    </a>
    <a href="#" class="tm-icon-dribbble">
        <i class="fa fa-dribbble"></i>
    </a>
</div>
<!--tm-social-icons-->
</div>
</div>
<!--tm-header-nav-->
</header>
<div id="tm-page-title">
    <div class="tm-wrap tm-table">
        <div class="tm-title-captions">
            <h2 class="tm-entry-title">Single Blog Post</h2>
        </div>
        <ul class="tm-breadcrumbs">
            <li>
                <a href="index.html">Home</a>
            </li>
            <li>
                <a href="category-blog.html">Category</a>
            </li>
            <li>
                Single Blog Post
            </li>
        </ul>
    </div>
</div>
<!--tm-page-title-->
<div id="tm-page-body">
<div id="tm-single-blog" class="tm-container tm-wrap tm-sidebar-right">
<div class="page-content">
<div class="page-content-inner">
<div class="entry-thumbnail">
    <img src="http://placehold.it/815x495" alt="Thumb">
</div>
<!--entry-thumb-->
<div class="entry-header">
    <h2>Tutorial: Affiliate Tracking Widget In WordPress</h2>
    <div class="meta">
        Post by
        <a href="author.html">admin</a>
        in
								<span class="incategory">
								<a href="category-blog.html">Design</a>,
								<a href="category-blog.html">News</a>
								</span>
    </div>
    <div class="time">
        June 20, 2013
        <a href="#tm-comment">9 Comments</a>
    </div>
</div>
<!--entry-header-->
<div class="entry-container">
<div class="entry-content">
    <p>
        <span class="tm-dropcap tm-style3">L</span>
        orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
        industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type
        scrambled it to make a type specimen book. It has survived not only five centuries. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing
    </p>
    <blockquote class="tm-style2">
									<span>
										"Donec volutpat nibh sit amet libero ornare non laoreet arcu luctus. Donec id arcu quis mauris euismod placerat sit amet ut metus. Sed imperdiet fringilla sem eget euismod. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas"
									</span>
    </blockquote>
    <br>
    <p>
        Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lor

        Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.

        Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.

        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

    </p>
</div>
<section class="tags">
    <i class="fa fa-tags"></i>
    <ul>
        <li>
            <a href="#">Code</a>
        </li>
        <li>
            <a href="#">PHP</a>
        </li>
        <li>
            <a href="#">HTML/CSS</a>
        </li>
        <li>
            <a href="#">Design</a>
        </li>
        <li>
            <a href="#">Wordpress</a>
        </li>
        <li>
            <a href="#">jQuery</a>
        </li>
        <li>
            <a href="#">Developer</a>
        </li>
    </ul>
</section>
<section class="about-author">
    <h3 class="tm-title">about the author:
        <a href="author.html">Admin</a>
    </h3>
    <div class="about-author-conteainer">
        <div class="avatar">
            <img alt="img" src="http://placehold.it/50x50">
        </div>
        <div class="description">
            <p>
                Aliquam tristique bibendum velit vel pellentesque. Morbi eget semper ipsum. Maecenas cursus perdiet leo, egestas ullamcorper mauris mattis et. Aenean posuere feugiat fermentum serts. Maecenas mentum sollicitudin conguesertis.
            </p>
        </div>
    </div>
</section>
<section class="tm-recent-post">
    <h3 class="tm-title">You may also like</h3>
    <ul class="tm-col-3">
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
    </ul>
    <div class="clear"></div>
</section>
<section class="tm-share">
    <h3 class="tm-title">Share this:</h3>
    <ul class="social-networks">
        <li>
            <a href="" data-title="Facebook">
                <i class="fa fa-facebook"></i>
            </a>
        </li>
        <li>
            <a href="" data-title="Twitter">
                <i class="fa fa-twitter"></i>
            </a>
        </li>
        <li>
            <a href="" data-title="GooglePlus">
                <i class="fa fa-google-plus"></i>
            </a>
        </li>
        <li>
            <a href="" data-title="Tumblr">
                <i class="fa fa-tumblr"></i>
            </a>
        </li>
    </ul>
</section>
<section id="tm-comment">
    <h3 class="tm-title">9 Comments</h3>
    <ol class="commentlist">
        <li>
            <div class="comment">
                <div class="avatar">
                    <img alt="img" src="http://placehold.it/50x50">
                </div>
                <div class="comment-container">
                    <div class="comment-author meta">
                        <strong>admin</strong>
                        Jan 11, 2013
                        <a class="comment-reply-link" href=""> - Reply</a>
                    </div>
                    <div class="text">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="comment">
                <div class="avatar">
                    <img alt="img" src="http://placehold.it/50x50">
                </div>
                <div class="comment-container">
                    <div class="comment-author meta">
                        <strong>admin</strong>
                        Jan 11, 2013
                        <a class="comment-reply-link" href=""> - Reply</a>
                    </div>
                    <div class="text">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,
                    </div>
                </div>
            </div>
            <ul class="children">
                <li>
                    <div class="comment">
                        <div class="avatar">
                            <img alt="img" src="http://placehold.it/50x50">
                        </div>
                        <div class="comment-container">
                            <div class="comment-author meta">
                                <strong>admin</strong>
                                Jan 11, 2013
                                <a class="comment-reply-link" href=""> - Reply</a>
                            </div>
                            <div class="text">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </li>
        <li>
            <div class="comment">
                <div class="avatar">
                    <img alt="img" src="http://placehold.it/50x50">
                </div>
                <div class="comment-container">
                    <div class="comment-author meta">
                        <strong>admin</strong>
                        Jan 11, 2013
                        <a class="comment-reply-link" href=""> - Reply</a>
                    </div>
                    <div class="text">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,
                    </div>
                </div>
            </div>
        </li>
    </ol>
</section>
<section id="respond">
    <h3 class="tm-title">Leave A Comment</h3>
    <form id="commentform">
        <p class="comment-form-author">
            <label for="author">
                Name
                <span class="required">*</span>
            </label>
            <input id="author" type="text" value="" name="author">
        </p>
        <p class="comment-form-email">
            <label for="email">
                Email
                <span class="required">*</span>
            </label>
            <input id="email" type="text" value="" name="email">
        </p>
        <p class="comment-form-url">
            <label for="url">Website</label>
            <input id="url" type="text" value="" name="url">
        </p>
        <p class="comment-form-comment">
            <label for="url">Comment</label>
            <textarea id="comment" name="comment"></textarea>
        </p>
        <p class="form-submit">
            <input id="submit" class="tm-btn" type="submit" value="Post Comment" name="submit">
        </p>
    </form>
</section>
</div>
<!--entry-container-->
</div>
</div>
<!--page-content-->
<div class="page-sidebar">
    <aside class="widget tm-tabs">
        <ul class="tm-filter tabs tm-style1">
            <li>
                <a href="#tab1">Recent Posts</a>
            </li>
            <li>
                <a href="#tab2">Comments</a>
            </li>
        </ul>
        <div class="tab-container">
            <aside id="tab1" class="widget tm-list-style2 widget_recent_entries tab-content">
                <ul>
                    <li>
                        <a href="single-blog.html">
										<span class="thumb">
										<img src="http://placehold.it/60x60" width="60" alt="thumb">
										</span>
                            <h3>Tutorial: Affiliate Tracking Widget In WordPress</h3>
										<span class="time">
										July 31, 2012
										</span>
                        </a>
                    </li>
                    <li>
                        <a href="single-blog.html">
										<span class="thumb">
										<img src="http://placehold.it/60x60" width="60" alt="thumb">
										</span>
                            <h3>Tutorial: Affiliate Tracking Widget In WordPress</h3>
										<span class="time">
										July 31, 2012
										</span>
                        </a>
                    </li>
                    <li>
                        <a href="single-blog.html">
										<span class="thumb">
										<img src="http://placehold.it/60x60" width="60" alt="thumb">
										</span>
                            <h3>Tutorial: Affiliate Tracking Widget In WordPress</h3>
										<span class="time">
										July 31, 2012
										</span>
                        </a>
                    </li>
                    <li>
                        <a href="single-blog.html">
										<span class="thumb">
										<img src="http://placehold.it/60x60" width="60" alt="thumb">
										</span>
                            <h3>Tutorial: Affiliate Tracking Widget In WordPress</h3>
										<span class="time">
										July 31, 2012
										</span>
                        </a>
                    </li>
                    <li>
                        <a href="single-blog.html">
										<span class="thumb">
										<img src="http://placehold.it/60x60" width="60" alt="thumb">
										</span>
                            <h3>Tutorial: Affiliate Tracking Widget In WordPress</h3>
										<span class="time">
										July 31, 2012
										</span>
                        </a>
                    </li>
                </ul>
            </aside>
            <aside id="tab2" class="widget tm-list-style2 widget_recent_comments tab-content">
                <ul id="recentcomments">
                    <li class="recentcomments">
                        admin on
                        <a href="single-blog.html#tm-comment">
                            Finally! An Acne Cream That Actually Does What It Says
                        </a>
                    </li>
                    <li class="recentcomments">
                        admin on
                        <a href="single-blog.html#tm-comment">
                            Finally! An Acne Cream That Actually Does What It Says
                        </a>
                    </li>
                    <li class="recentcomments">
                        admin on
                        <a href="single-blog.html#tm-comment">
                            Finally! An Acne Cream That Actually Does What It Says
                        </a>
                    </li>
                    <li class="recentcomments">
                        admin on
                        <a href="single-blog.html#tm-comment">
                            Finally! An Acne Cream That Actually Does What It Says
                        </a>
                    </li>
                    <li class="recentcomments">
                        admin on
                        <a href="single-blog.html#tm-comment">
                            Finally! An Acne Cream That Actually Does What It Says
                        </a>
                    </li>
                </ul>
            </aside>
        </div>
    </aside>
    <aside class="widget widget_tag_cloud">
        <h3 class="tm-title">Popular Tags</h3>
        <div class="tagcloud">
            <a href="#" style="font-size: 22pt;" title="2 topics">Design</a>
            <a href="#" style="font-size: 8pt;" title="1 topic">jQuery</a>
            <a href="#" style="font-size: 8pt;" title="1 topic">PHP</a>
            <a href="#" style="font-size: 8pt;" title="1 topic">Wordpress</a>
            <a href="#" style="font-size: 22pt;" title="2 topics">Animation</a>
            <a href="#" style="font-size: 22pt;" title="2 topics">Audio</a>
            <a href="#" style="font-size: 8pt;" title="1 topic">Developer</a>
            <a href="#" style="font-size: 8pt;" title="1 topic">Cover</a>
        </div>
    </aside>
    <aside class="widget widget_text box-dark">
        <div class="textwidget">
            <div class="tm-testimonial tm-style2">
                <div style="" class="testimonial-content">
                    <p>
                        "Donec volutpat nibh sit amet libero ornare non laoreet arcu luctus. Donec id arcu quis mauris euismod placerat sit amet ut metus. Sed imperdiet fringilla sem eget euismod. Pellentesque habitant morbi tristique senectus et netus et"
                    </p>
                </div>
                <div class="info">
                    <div class="name">
                        <h3>- Jone Doe -</h3>
                        <p>Co-Founder - <span>Themeforest</span></p>
                    </div>
                </div>
            </div>
        </div>
    </aside>
</div>
<!--page-sidebar-->
<a href="#" class="tm-single-nav post-prev">
    <i class="fa fa-angle-left"></i>
    <div class="post-entry">
        <div class="post-entry-inner">
            <h3>Single Blog Post: Prev</h3>
							<span class="img">
								<img src="http://placehold.it/60x60" alt="thumb">
							</span>
        </div>
    </div>
</a>
<a href="#" class="tm-single-nav post-next">
    <i class="fa fa-angle-right"></i>
    <div class="post-entry">
        <div class="post-entry-inner">
            <div class="img">
                <img src="http://placehold.it/60x60" alt="thumb">
            </div>
            <h3>Single Blog Post: Next</h3>
        </div>
    </div>
</a>
</div>
<!--tm-single-blog-->
</div>
<!--tm-page-body-->
<div id="tm-page-footer">
    <div class="tm-sidebar-footer">
        <div class="tm-wrap">
            <div class="tm-sidebar-footer-inner">
                <div class="tm-column tm3">
                    <aside class="widget widget_text">
                        <div class="textwidget">
                            <p>
                                <img alt="img" src="/resources/front/img/sample/home/logo.png" width="139" height="24">
                            </p>
                            <p>
                                Fedora is the theme that innovatively uses the power of LESS and HTML5/CSS3 as the base. Besides the exclusive style and the compatibility with WooCommerce, it also has responsive layout, retina-ready, and rich-customizing options.
                            </p>
                        </div>
                    </aside>
                </div>
                <div class="tm-column tm2">
                    <aside class="widget tm-list-style1">
                        <h3 class="tm-title">Category</h3>
                        <ul>
                            <li>
                                <a href="">New products</a>
                            </li>
                            <li>
                                <a href="">Top sellers</a>
                            </li>
                            <li>
                                <a href="">Specials</a>
                            </li>
                            <li>
                                <a href="">Manufacturers</a>
                            </li>
                            <li>
                                <a href="">Suppliers</a>
                            </li>
                            <li>
                                <a href="">Customer Service</a>
                            </li>
                        </ul>
                    </aside>
                </div>

                <div class="tm-column tm3">
                    <aside class="widget widget_tag_cloud">
                        <h3 class="tm-title">Popular Tags</h3>
                        <div class="tagcloud">
                            <a href="#" style="font-size: 22pt;" title="2 topics">Design</a>
                            <a href="#" style="font-size: 8pt;" title="1 topic">jQuery</a>
                            <a href="#" style="font-size: 8pt;" title="1 topic">PHP</a>
                            <a href="#" style="font-size: 8pt;" title="1 topic">Wordpress</a>
                            <a href="#" style="font-size: 22pt;" title="2 topics">Animation</a>
                            <a href="#" style="font-size: 22pt;" title="2 topics">Audio</a>
                            <a href="#" style="font-size: 8pt;" title="1 topic">Developer</a>
                        </div>
                    </aside>
                </div>
                <div class="tm-column tm4">
                    <aside class="widget widget_text">
                        <h3 class="tm-title">Get the latest news and promotion!</h3>
                        <div class="textwidget">
                            <form action="php/mail-subscribe.php" method="post" class="newsletter">
                                <input type="email" value="" name="email" class="tm-input required" placeholder="Email..." />
                                <button class="tm-button" type="submit" role="button">Subscribe</button>
                            </form>
                        </div>
                    </aside>
                    <aside class="widget widget_text">
                        <div class="textwidget">
                            <div class="payments">
                                <img alt="img" src="/resources/front/img/sample/home/cards.png">
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</div>
<!--tm-page-page-footer-->
<footer>
    <div class="tm-wrap tm-table">
        <div class="copyright">
            <p>© Copyright - Linethemes.com - Fedora theme by Linethemes</p>
        </div>
        <div class="tm-social-icons">
            <a class="tm-icon-facebook" href="#">
                <i class="fa fa-facebook"></i>
            </a>
            <a class="tm-icon-twitter" href="#">
                <i class="fa fa-twitter"></i>
            </a>
            <a class="tm-icon-dribbble" href="#">
                <i class="fa fa-dribbble"></i>
            </a>
        </div>
    </div>
</footer>

<div id="loginmodal" style="display:none;">
    <div class="header-line-bottom">
        <h3 class="tm-title">User Login</h3>
    </div>
    <form id="loginform" name="loginform" method="post">
        <p>
            <label for="user_login">Username<br>
                <input type="text" size="20" value="" class="input" id="user_login" name="log"></label>
        </p>
        <p>
            <label for="user_pass">Password<br>
                <input type="password" size="20" value="" class="input" id="user_pass" name="pwd"></label>
        </p>

        <p class="submit">
            <input type="submit" value="Log In" class="tm-btn hidemodal" id="wp-submit" name="wp-submit">
        </p>
    </form>
</div>

<!-- Go to top -->
<a href="#" id="tm-gotop">
    <i class="fa fa-chevron-up"></i>
</a>

<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-core.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-ui.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-tinynav.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-isotope.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-flexslider.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-countdown.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-masonry.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-leanModal.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-validate.js"></script>
<script type="text/javascript" src="/resources/front/3rd/pretty-photo/pretty-photo.js"></script>
<script type="text/javascript" src="/resources/front/3rd/layerslider/js/greensock.js"></script>
<script type="text/javascript" src="/resources/front/3rd/layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
<script type="text/javascript" src="/resources/front/3rd/layerslider/js/layerslider.transitions.js"></script>
<script type="text/javascript" src="/resources/front/js/theme.js"></script>
</body>
</html>