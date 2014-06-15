<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!doctype html>
<html>
<head>
    <title>Product View \ Progressive — Responsive Multipurpose HTML Template</title>
    <meta class="viewport" name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">

    <link rel="shortcut icon" href="img/favicon.ico">

    <link rel="stylesheet" href="/resources/asset/css/buttons/social-icons.css">
    <link rel="stylesheet" href="/resources/asset/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/asset/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/asset/css/jslider.css">
    <link rel="stylesheet" href="/resources/asset/css/settings.css">
    <link rel="stylesheet" href="/resources/asset/css/jquery.fancybox.css">
    <link rel="stylesheet" href="/resources/asset/css/animate.css">
    <link rel="stylesheet" href="/resources/asset/css/video-js.min.css">
    <link rel="stylesheet" href="/resources/asset/css/morris.css">
    <link rel="stylesheet" href="/resources/asset/css/royalslider/royalslider.css">
    <link rel="stylesheet" href="/resources/asset/css/royalslider/skins/minimal-white/rs-minimal-white.css">
    <link rel="stylesheet" href="/resources/asset/css/layerslider/layerslider.css">
    <link rel="stylesheet" href="/resources/asset/css/ladda.min.css">
    <link rel="stylesheet" href="/resources/asset/css/style.css">
    <link rel="stylesheet" href="/resources/asset/css/responsive.css">
    <link rel="stylesheet" href="/resources/asset/css/customizer/pages.css">
    <link rel="stylesheet" href="/resources/asset/css/customizer/shop-pages-customizer.css">

    <!-- IE Styles-->
    <link rel='stylesheet' href="/resources/asset/css/ie/ie.css">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <link rel='stylesheet' href="/resources/asset/css/ie/ie8.css">
    <![endif]-->
</head>
<body>
<div class="page-box">
<div class="page-box-content">

<!-- 히든 탑 메뉴 시작 -->
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
<!-- 히든 탑 메뉴 끝 -->
<header class="header">
<div class="container">
<div class="row">
<div class="col-xs-6 col-md-2 col-lg-3 logo-box">
    <div class="logo">
        <a href="index.html">
            <img src="img/logo.svg" class="logo-img" alt="">
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
                <image src="img/png-icons/search-icon.png" alt="" width="16" height="16" style="vertical-align: top;">
				</svg>
        </a>
    </div><!-- .search-header

			--><div class="phone-header hidden-600">
    <a href="#">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
				  <path d="M11.001,0H5C3.896,0,3,0.896,3,2c0,0.273,0,11.727,0,12c0,1.104,0.896,2,2,2h6c1.104,0,2-0.896,2-2
				  c0-0.273,0-11.727,0-12C13.001,0.896,12.105,0,11.001,0z M8,15c-0.552,0-1-0.447-1-1s0.448-1,1-1s1,0.447,1,1S8.553,15,8,15z
				  M11.001,12H5V2h6V12z"></path>
            <image src="img/png-icons/phone-icon.png" alt="" width="16" height="16" style="vertical-align: top;">
				</svg>
    </a>
</div><!-- .phone-header

			--><div class="btn-group cart-header">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <div class="icon">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
					<g>
                        <path d="M15.001,4h-0.57l-3.707-3.707c-0.391-0.391-1.023-0.391-1.414,0c-0.391,0.391-0.391,1.023,0,1.414L11.603,4
					  H4.43l2.293-2.293c0.391-0.391,0.391-1.023,0-1.414s-1.023-0.391-1.414,0L1.602,4H1C0.448,4,0,4.448,0,5s0.448,1,1,1
					  c0,2.69,0,7.23,0,8c0,1.104,0.896,2,2,2h10c1.104,0,2-0.896,2-2c0-0.77,0-5.31,0-8c0.553,0,1-0.448,1-1S15.554,4,15.001,4z
					  M13.001,14H3V6h10V14z"></path>
                        <path d="M11.001,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1s-1,0.447-1,1v4C10.001,12.553,10.448,13,11.001,13z"></path>
                        <path d="M8,13c0.553,0,1-0.447,1-1V8c0-0.553-0.448-1-1-1S7,7.447,7,8v4C7,12.553,7.448,13,8,13z"></path>
                        <path d="M5,13c0.553,0,1-0.447,1-1V8c0-0.553-0.447-1-1-1S4,7.447,4,8v4C4,12.553,4.448,13,5,13z"></path>
                    </g>
				  </svg>
        </div>
        Cart <span>0</span>
    </a>
    <div class="dropdown-menu">
        <strong>Recently added item(s)</strong>
        <ul class="list-unstyled">
            <li>
                <a href="product-view.html" class="product-image"><img src="img/content/product-1.png" width="70" height="70" alt=""></a>
                <a href="#" class="product-remove">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
						<g>
                            <path d="M6,13c0.553,0,1-0.447,1-1V7c0-0.553-0.447-1-1-1S5,6.447,5,7v5C5,12.553,5.447,13,6,13z"></path>
                            <path d="M10,13c0.553,0,1-0.447,1-1V7c0-0.553-0.447-1-1-1S9,6.447,9,7v5C9,12.553,9.447,13,10,13z"></path>
                            <path d="M14,3h-1V1c0-0.552-0.447-1-1-1H4C3.448,0,3,0.448,3,1v2H2C1.447,3,1,3.447,1,4s0.447,1,1,1
						  c0,0.273,0,8.727,0,9c0,1.104,0.896,2,2,2h8c1.104,0,2-0.896,2-2c0-0.273,0-8.727,0-9c0.553,0,1-0.447,1-1S14.553,3,14,3z M5,2h6v1
						  H5V2z M12,14H4V5h8V14z"></path>
                        </g>
					  </svg>
                </a><!-- .product-remove -->
                <h4 class="product-name"><a href="product-view.html" title="">New Apple iPad mini Wi-Fi + with special offer</a></h4>
                <div class="product-price">1 x <span class="price">$1199.00</span></div>
                <div class="clearfix"></div>
            </li>
            <li>
                <a href="product-view.html" class="product-image"><img src="img/content/product-2.png" width="70" height="70" alt=""></a>
                <a href="#" class="product-remove">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
						<g>
                            <path d="M6,13c0.553,0,1-0.447,1-1V7c0-0.553-0.447-1-1-1S5,6.447,5,7v5C5,12.553,5.447,13,6,13z"></path>
                            <path d="M10,13c0.553,0,1-0.447,1-1V7c0-0.553-0.447-1-1-1S9,6.447,9,7v5C9,12.553,9.447,13,10,13z"></path>
                            <path d="M14,3h-1V1c0-0.552-0.447-1-1-1H4C3.448,0,3,0.448,3,1v2H2C1.447,3,1,3.447,1,4s0.447,1,1,1
						  c0,0.273,0,8.727,0,9c0,1.104,0.896,2,2,2h8c1.104,0,2-0.896,2-2c0-0.273,0-8.727,0-9c0.553,0,1-0.447,1-1S14.553,3,14,3z M5,2h6v1
						  H5V2z M12,14H4V5h8V14z"></path>
                        </g>
					  </svg>
                </a><!-- .product-remove -->
                <h4 class="product-name"><a href="product-view.html" title="">New Apple iPad mini Wi-Fi + with special offer</a></h4>
                <div class="product-price">1 x <span class="price">$1199.00</span></div>
                <div class="clearfix"></div>
            </li>
        </ul>
        <div class="cart-button">
            <button class="btn btn-default">View Cart</button>
            <button class="btn checkout btn-default">Checkout</button>
        </div>
    </div>
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
<li class="parent">
    <a href="index.html">Home</a>
    <ul class="sub">
        <li><a href="index.html">Creative</a></li>
        <li><a href="home-2.html">Paralax</a></li>
        <li><a href="home-3.html">Simple (Boxed) <span class="item-new">New</span></a></li>
        <li><a href="home-4.html">Business</a></li>
        <li><a href="home-5.html">Animation</a></li>
    </ul>
</li>
<li class="parent">
    <a href="#">Pages</a>
    <ul class="sub">
        <li><a href="sidebar-blocks.html">All sidebar blocks</a></li>
        <li><a href="full-width.html">Full Width</a></li>
        <li><a href="left-sidebar.html">Left Sidebar</a></li>
        <li><a href="right-sidebar.html">Right Sidebar</a></li>
        <li><a href="about-us.html">About Us</a></li>
        <li><a href="contact.html">Contact Us</a></li>
        <li><a href="blog-list.html">Blog List</a></li>
        <li><a href="blog-view.html">Blog Post View</a></li>
        <li><a href="search-results.html">Search Results</a></li>
        <li class="parent">
            <a href="404.html">Page 404</a>
            <ul class="sub">
                <li><a href="404.html">Page 404 (1)</a></li>
                <li><a href="404-2.html">Page 404 (2)</a></li>
                <li><a href="404-3.html">Page 404 (3) <span class="item-new">New</span></a></li>
            </ul>
        </li>
        <li class="parent">
            <a href="#">Portfolio</a>
            <ul class="sub">
                <li><a href="portfolio-1.html">Portfolio (1 column)</a></li>
                <li><a href="portfolio-2.html">Portfolio (2 column)</a></li>
                <li><a href="portfolio-3.html">Portfolio (3 column)</a></li>
                <li><a href="portfolio-4.html">Portfolio (4 column)</a></li>
                <li><a href="portfolio-slider.html">Portfolio (Slider)</a></li>
                <li><a href="portfolio-single.html">Single Project</a></li>
            </ul>
        </li>
        <li><a href="gallery-modern.html">Modern Gallery</a></li>
        <li class="parent">
            <a href="#">Gallery</a>
            <ul class="sub">
                <li><a href="gallery-1.html">Gallery (1 column)</a></li>
                <li><a href="gallery-2.html">Gallery (2 column)</a></li>
                <li><a href="gallery-3.html">Gallery (3 column)</a></li>
                <li><a href="gallery-4.html">Gallery (4 column)</a></li>
            </ul>
        </li>
        <li><a href="pricing.html">Pricing</a></li>
        <li><a href="team.html">Team</a></li>
        <li><a href="faq.html">FAQ</a></li>
        <li><a href="services.html">Services</a></li>
        <li><a href="careers.html">Careers</a></li>
        <li><a href="coming-soon.html">Coming Soon</a></li>
        <li><a href="under-construction.html">Under Construction</a></li>
        <li><a href="sitemap.html">Sitemap</a></li>
        <li><a href="login-2.html">Login / Register <span class="item-new">New</span></a></li>
        <li class="parent">
            <a href="#">Newsletter</a>
            <ul class="sub">
                <li><a href="newsletter-big-intro.html">Newsletter Big Intro</a></li>
                <li><a href="newsletter-big-portfolio.html">Newsletter Big Portfolio</a></li>
                <li><a href="newsletter-columns.html">Newsletter Columns</a></li>
                <li><a href="newsletter-info.html">Newsletter Info</a></li>
                <li><a href="newsletter-plan.html">Newsletter Plan</a></li>
                <li><a href="newsletter-portfolio.html">Newsletter Portfolio</a></li>
                <li><a href="newsletter-product-list.html">Newsletter Product List</a></li>
                <li><a href="newsletter-story.html">Newsletter Story</a></li>
            </ul>
        </li>
    </ul>
</li>
<li class="parent">
    <a href="shop.html">Shop</a>
    <ul class="sub">
        <li><a href="catalog-grid.html">Catalog (Grid)</a></li>
        <li><a href="catalog-list.html">Catalog (List)</a></li>
        <li><a href="product-view.html">Product View</a></li>
        <li><a href="product-view-variants.html">Product View (Variants)</a></li>
        <li><a href="cart.html">Shopping Cart</a></li>
        <li><a href="checkout.html">Proceed to Checkout</a></li>
        <li><a href="confirmation.html">Confirmation Page</a></li>
        <li><a href="compare.html">Compare Products</a></li>
        <li class="parent">
            <a href="account.html">My Account</a>
            <ul class="sub">
                <li><a href="account.html">My Dashboard</a></li>
                <li><a href="account-information.html">Account Information</a></li>
                <li><a href="account-address.html">Address Book</a></li>
                <li><a href="account-orders.html">My Orders</a></li>
            </ul>
        </li>
        <li><a href="login.html">Login / Register</a></li>
        <li><a href="forgot.html">Password Recovery</a></li>
    </ul>
</li>
<li class="parent megamenu promo">
    <a href="#">Mega Menu</a>
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
                    <img src="img/content/megamenu-big.png" width="253" height="457" alt="">
                </a>
            </div><!-- .promo-block -->
        </li>
    </ul><!-- .sub -->
</li>
<li class="parent megamenu promo">
    <a href="#">Elements</a>
    <ul class="sub">
        <li class="sub-wrapper">
            <div class="sub-list">
                <div class="box">
                    <ul>
                        <li><a href="elements-accordions.html"><i class="fa fa-plus-square"></i> Accordions &amp; Toggles</a></li>
                        <li><a href="elements-animations.html"><i class="fa fa-money"></i> Animations</a></li>
                        <li><a href="elements-buttons.html"><i class="fa fa-twitter"></i> Buttons &amp; Social Icons</a></li>
                        <li><a href="elements-carousel.html"><i class="fa fa-arrows-h"></i> Carousels &amp; Sliders <span class="item-new">New</span></a></li>
                        <li><a href="elements-charts.html"><i class="fa fa-bar-chart-o"></i> Charts</a></li>
                        <li><a href="elements-container.html"><i class="fa fa-archive"></i> Container</a></li>
                        <li><a href="elements-content-band.html"><i class="fa fa-road"></i> Content Band</a></li>
                        <li><a href="elements-dividers.html"><i class="fa fa-ellipsis-h"></i> Dividers &amp; Gaps</a></li>
                        <li><a href="elements-featured-box.html"><i class="fa fa-star"></i> Featured Box</a></li>
                        <li><a href="elements-icons.html"><i class="fa fa-rocket"></i> Font Awesome Icons</a></li>
                        <li><a href="elements-frames.html"><i class="fa fa-square-o"></i> Frames</a></li>
                        <li><a href="elements-maps.html"><i class="fa fa-map-marker"></i> Google Maps <span class="item-new">New</span></a></li>
                        <li><a href="elements-livicons.html"><i class="livicon block" data-n="rocket" data-s="16" data-c="#1e1e1e" data-hc="0"></i> LivIcons</a></li>
                    </ul>
                </div><!-- .box -->
                <div class="box">
                    <ul>
                        <li><a href="elements-media.html"><i class="fa fa-video-camera"></i> Media</a></li>
                        <li><a href="elements-notification.html"><i class="fa fa-info-circle"></i> Notification</a></li>
                        <li><a href="elements-person.html"><i class="fa fa-user"></i> Person</a></li>
                        <li><a href="elements-post-sliders.html"><i class="fa fa-th-list"></i> Posts Sliders</a></li>
                        <li><a href="elements-pricing.html"><i class="fa fa-list-alt"></i> Pricing and Data Tables</a></li>
                        <li><a href="elements-progress-bar.html"><i class="fa fa-tasks"></i> Progress Bars</a></li>
                        <li><a href="elements-recent-posts.html"><i class="fa fa-flash"></i> Recent Posts</a></li>
                        <li><a href="elements-shop.html"><i class="fa fa-shopping-cart"></i> Shop Elements <span class="item-new">New</span></a></li>
                        <li><a href="elements-sequence.html"><i class="fa fa-sort-numeric-asc"></i> Sequence</a></li>
                        <li><a href="elements-tabs.html"><i class="fa fa-folder-open"></i> Tabs</a></li>
                        <li><a href="elements-testimonials.html"><i class="fa fa-comment"></i> Testimonials</a></li>
                        <li><a href="elements-works.html"><i class="fa fa-picture-o"></i> Works</a></li>
                    </ul>
                </div><!-- .box -->
            </div><!-- .sub-list -->

            <div class="promo-block bg">
                <img src="img/content/menu-elements.png" width="240" height="434" alt="">
            </div><!-- .promo-block -->
        </li>
    </ul>
</li>
<li class="parent">
    <a href="#">Bootstrap</a>
    <ul class="sub">
        <li><a href="bootstrap-accordions.html">Accordions</a></li>
        <li><a href="bootstrap-alerts.html">Alerts</a></li>
        <li><a href="bootstrap-buttons.html">Buttons</a></li>
        <li><a href="bootstrap-forms.html">Forms</a></li>
        <li><a href="bootstrap-list-group.html">List Group</a></li>
        <li><a href="bootstrap-panels.html">Panels</a></li>
        <li><a href="bootstrap-tables.html">Tables</a></li>
        <li><a href="bootstrap-tabs.html">Tabs</a></li>
        <li><a href="bootstrap-tooltips.html">Tooltip</a></li>
        <li><a href="bootstrap-typography.html">Typography</a></li>
    </ul>
</li>
<li>
    <a href="http://themeforest.net/item/progressive-multipurpose-responsive-template/7197521" target="_blank">Buy</a>
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
        <input class="search-string form-control" type="search" placeholder="Search here" name="search-string">
        <button class="search-submit">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
			  <path fill="#231F20" d="M12.001,10l-0.5,0.5l-0.79-0.79c0.806-1.021,1.29-2.308,1.29-3.71c0-3.313-2.687-6-6-6C2.687,0,0,2.687,0,6
			  s2.687,6,6,6c1.402,0,2.688-0.484,3.71-1.29l0.79,0.79l-0.5,0.5l4,4l2-2L12.001,10z M6,10c-2.206,0-4-1.794-4-4s1.794-4,4-4
			  s4,1.794,4,4S8.206,10,6,10z"></path>
                <image src="img/png-icons/search-icon.png" alt="" width="16" height="16" style="vertical-align: top;">
			</svg>
        </button>
    </form>
</div>
</div><!--.row -->
</div>
</header><!-- .header -->

<div class="breadcrumb-box">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/">홈</a> </li>
            <li><a href="/catalog-grid.html">레시피</a> </li>
            <li class="active">보스턴 라거 클론</li>
        </ul>
    </div>
</div><!-- .breadcrumb-box -->

<div class="banner-set banner-set-mini banner-set-no-pagination load">
    <div class="container">
        <div class="banners">
            <a href="#" class="banner">
                <img src="img/content/banner1.jpg" width="253" height="158" alt="">
                <h2 class="title">Home Theater</h2>
            </a>
            <a href="#" class="banner">
                <img src="img/content/banner2.jpg" width="253" height="158" alt="">
                <h2 class="title">Multiroom</h2>
            </a>
            <a href="#" class="banner">
                <img src="img/content/banner3.jpg" width="253" height="158" alt="">
                <h2 class="title">Lighting Control</h2>
            </a>
            <a href="#" class="banner">
                <img src="img/content/banner4.jpg" width="253" height="158" alt="">
                <h2 class="title">Amazing Sound</h2>
            </a>
            <a href="#" class="banner">
                <img src="img/content/banner5.jpg" width="253" height="158" alt="">
                <h2 class="title">Home Theater</h2>
            </a>
            <a href="#" class="banner">
                <img src="img/content/banner6.jpg" width="253" height="158" alt="">
                <h2 class="title">Multiroom</h2>
            </a>
            <a href="#" class="banner">
                <img src="img/content/banner7.jpg" width="253" height="158" alt="">
                <h2 class="title">Lighting Control</h2>
            </a>
            <a href="#" class="banner">
                <img src="img/content/banner8.jpg" width="253" height="158" alt="">
                <h2 class="title">Amazing Sound</h2>
            </a>
            <a href="#" class="banner">
                <img src="img/content/banner5.jpg" width="253" height="158" alt="">
                <h2 class="title">Home Theater</h2>
            </a>
        </div><!-- .banners -->
        <div class="clearfix"></div>
    </div>
    <div class="nav-box">
        <div class="container">
            <a class="prev" href="#"><span class="glyphicon glyphicon-arrow-left"></span></a>
            <div class="pagination switches"></div>
            <a class="next" href="#"><span class="glyphicon glyphicon-arrow-right"></span></a>
        </div>
    </div>
</div><!-- .banner-set -->

<div id="main" class="page">
<header class="page-header">
    <div class="container">
        <h1 class="title">보스턴 라거 클론</h1>
    </div>
</header>

<div class="container">
<div class="row">
<article class="content product-page col-sm-12 col-md-12">
<div class="row">
    <div class="col-sm-5 col-md-5">
        <div class="image-box">
            <span class="sale top"></span>
            <div class="general-img">
                <img alt="" src="img/content/single-1.png" data-zoom-image="img/content/single-1.png" width="700" height="700">
            </div><!-- .general-img -->

            <div class="thumblist-box load">
                <a href="#" class="prev">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="9px" height="16px" viewBox="0 0 9 16" enable-background="new 0 0 9 16" xml:space="preserve">
					<polygon fill-rule="evenodd" clip-rule="evenodd" fill="#fcfcfc" points="8,15.999 9,14.999 2,8 9,1.001 8,0.001 0,8 "></polygon>
				  </svg>
                </a>
                <a href="#" class="next">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="9px" height="16px" viewBox="0 0 9 16" enable-background="new 0 0 9 16" xml:space="preserve">
					<polygon fill-rule="evenodd" clip-rule="evenodd" fill="#fcfcfc" points="1,0.001 0,1.001 7,8 0,14.999 1,15.999 9,8 "></polygon>
				  </svg>
                </a>

                <div id="thumblist" class="thumblist">
                    <a href="#" data-image="img/content/single-1.png" data-zoom-image="img/content/single-1.png">
                        <img alt="" src="img/content/single-1.png" width="700" height="700">
                    </a>
                    <a class="active" href="#" data-image="img/content/single-2.png" data-zoom-image="img/content/single-2.png">
                        <img alt="" src="img/content/single-2.png">
                    </a>
                    <a href="#" data-image="img/content/single-3.png" data-zoom-image="img/content/single-3.png">
                        <img alt="" src="img/content/single-3.png" width="700" height="700">
                    </a>
                    <a href="#" data-image="img/content/single-1.png" data-zoom-image="img/content/single-1.png">
                        <img alt="" src="img/content/single-1.png" width="700" height="700">
                    </a>
                    <a href="#" data-image="img/content/single-2.png" data-zoom-image="img/content/single-2.png">
                        <img alt="" src="img/content/single-2.png" width="700" height="700">
                    </a>
                    <a href="#" data-image="img/content/single-3.png" data-zoom-image="img/content/single-3.png">
                        <img alt="" src="img/content/single-3.png" width="700" height="700">
                    </a>
                </div><!-- #thumblist -->
            </div><!-- .thumblist -->
        </div>
    </div>

    <div class="col-sm-7 col-md-7">
        <div class="reviews-box">
            <div class="rating-box">
                <div style="width: 80%" class="rating">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="73px" height="12px" viewBox="0 0 73 12" enable-background="new 0 0 73 12" xml:space="preserve">
					  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="6.5,0 8,5 13,5 9,7.7 10,12 6.5,9.2 3,12 4,7.7 0,5 5,5"></polygon>
                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="66.5,0 68,5 73,5 69,7.7 70,12 66.5,9.2 63,12 64,7.7 60,5 65,5 "></polygon>
                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="21.5,0 23,5 28,5 24,7.7 25,12 21.5,9.2 18,12 19,7.7 15,5 20,5 "></polygon>
                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="51.5,0 53,5 58,5 54,7.7 55,12 51.5,9.2 48,12 49,7.7 45,5 50,5 "></polygon>
                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="36.5,0 38,5 43,5 39,7.7 40,12 36.5,9.2 33,12 34,7.7 30,5 35,5 "></polygon>
				  </svg>
                </div>
            </div>
            <span>5개의 리뷰</span>
            <span class="separator">|</span>
            <a href="#reviews" class="add-review">리뷰 작성하기</a>
        </div>

        <div class="description">
            사무엘 아담스 라거는 세션비어로 누구나 쉽게 먹을수 있게 디자인되어있다.
        </div>

        <div class="availability-sku">
            <div class="availability">스타일 : <span> ✓ 미국식 라이트 라거</span></div>
            <div class="sku">OG: <span>1.101</span></div>
            <div class="sku">FG: <span>1.101</span></div>
            <div class="sku">IBU: <span>30</span></div>
            <div class="sku">ABV: <span>4.5%</span></div>
        </div><!-- .availability-sku -->
        <!--div class="price-box">
            <span class="price-old">$1500</span>
            <span class="price">$1199.00</span>
        </div-->

        <form class="form-inline add-cart-form">
            <button class="btn add-cart btn-default btn-lg">레시피 찜하기</button>
            <!--div class="number">
                <label>Quantity:</label>
                <input type="text" value="1" class="form-control">
                <div class="regulator">
                    <a href="#" class="number-up"></a>
                    <a href="#" class="number-down"></a>
                </div>
            </div-->
        </form>

        <!--div class="actions">
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
    </div>
</div>

<div class="product-tab">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#description">레시피</a></li>
        <li><a href="#reviews">리뷰</a></li>
        <li><a href="#custom-tab">코멘트</a></li>
    </ul><!-- .nav-tabs -->
    <div class="tab-content">
        <div class="tab-pane active" id="description">
            발효재료 19리터
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th style="width:30px" class="unseen text-center">No</th>
                    <th class="text-left">발효재료</th>
                    <th style="width:120px" class="unseen text-center">수량</th>
                    <th style="width:160px" class="text-right">사용처</th>
                    <th style="width:70px" class="text-right">PPG</th>
                    <th style="width:70px" class="text-right">COLOR</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><strong> 1 </strong>  </td>
                    <td class="unseen text-left">Crystal (60L) 몰트</td>
                    <td><strong>450 g </strong>  &nbsp;&nbsp;&nbsp;&nbsp; 20 %</td>
                    <td class="text-right">Steep</td>
                    <td class="text-right">34</td>
                    <td class="text-right">20  °L</td>
                </tr>
                <tr>
                    <td><strong> 2 </strong>  </td>
                    <td class="unseen text-left">Briess Amber Liquid Extract</td>
                    <td><strong>1.5 kg </strong>  &nbsp;&nbsp;&nbsp; 40 %</td>
                    <td class="text-right">Boil</td>
                    <td class="text-right">34</td>
                    <td class="text-right">40  °L</td>
                </tr>
                <tr>
                    <td><strong> 3 </strong>  </td>
                    <td class="unseen text-left">Briess Golden Light Dry Extract</td>
                    <td><strong>1.5 kg </strong>  &nbsp;&nbsp;&nbsp; 40 %</td>
                    <td class="text-right">Boil</td>
                    <td class="text-right">34</td>
                    <td class="text-right">20  °L</td>
                </tr>

                </tbody>
            </table>

            홉 60분
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th style="width:30px" class="unseen text-center">No</th>
                    <th class="text-left">이름</th>
                    <th style="width:120px" class="unseen text-center">수량</th>
                    <th style="width:160px" class="text-right">시간</th>
                    <th style="width:70px" class="text-right">사용처</th>
                    <th style="width:70px" class="text-right">형태</th>
                    <th style="width:70px" class="text-right">알파 값</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><strong> 1 </strong>  </td>
                    <td class="unseen text-left">Tettnang</td>
                    <td class="unseen text-center"><strong>1oz </strong></td>
                    <td class="text-right">60 분</td>
                    <td class="text-right">Boil</td>
                    <td class="text-right">펠렛</td>
                    <td class="text-right">12.0%</td>
                </tr>
                <tr>
                    <td><strong> 1 </strong>  </td>
                    <td class="unseen text-left">Hallertau</td>
                    <td class="unseen text-center"><strong>1oz </strong></td>
                    <td class="text-right">20 분</td>
                    <td class="text-right">Boil</td>
                    <td class="text-right">펠렛</td>
                    <td class="text-right">12.0%</td>
                </tr>
                <tr>
                    <td><strong> 1 </strong>  </td>
                    <td class="unseen text-left">Hallertau</td>
                    <td class="unseen text-center"><strong>1oz </strong></td>
                    <td class="text-right">10 분</td>
                    <td class="text-right">Boil</td>
                    <td class="text-right">펠렛</td>
                    <td class="text-right">12.0%</td>
                </tr>
                <tr>
                    <td><strong> 1 </strong>  </td>
                    <td class="unseen text-left">Hallertau</td>
                    <td class="unseen text-center"><strong>1oz </strong></td>
                    <td class="text-right">0 분</td>
                    <td class="text-right">Boil</td>
                    <td class="text-right">펠렛</td>
                    <td class="text-right">12.0%</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="tab-pane" id="reviews">
            <h3 class="title">Reviews</h3>
            <ul class="commentlist">
                <li>
                    <div class="meta">
                        <span>Mike Example</span>,
                        <span class="time">03.11.2013, 10:45:</span>
                    </div>
                    <div class="evaluation-box">
                        <div class="evaluation">
                            <span>Quality</span>
                            <div class="rating-box">
                                <div style="width: 60%" class="rating">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="73px" height="12px" viewBox="0 0 73 12" enable-background="new 0 0 73 12" xml:space="preserve">
							  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="6.5,0 8,5 13,5 9,7.7 10,12 6.5,9.2 3,12 4,7.7 0,5 5,5"></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="66.5,0 68,5 73,5 69,7.7 70,12 66.5,9.2 63,12 64,7.7 60,5 65,5 "></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="21.5,0 23,5 28,5 24,7.7 25,12 21.5,9.2 18,12 19,7.7 15,5 20,5 "></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="51.5,0 53,5 58,5 54,7.7 55,12 51.5,9.2 48,12 49,7.7 45,5 50,5 "></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="36.5,0 38,5 43,5 39,7.7 40,12 36.5,9.2 33,12 34,7.7 30,5 35,5 "></polygon>
						  </svg>
                                </div>
                            </div>
                        </div>
                        <div class="evaluation">
                            <span>Price</span>
                            <div class="rating-box">
                                <div style="width: 80%" class="rating">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="73px" height="12px" viewBox="0 0 73 12" enable-background="new 0 0 73 12" xml:space="preserve">
							  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="6.5,0 8,5 13,5 9,7.7 10,12 6.5,9.2 3,12 4,7.7 0,5 5,5"></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="66.5,0 68,5 73,5 69,7.7 70,12 66.5,9.2 63,12 64,7.7 60,5 65,5 "></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="21.5,0 23,5 28,5 24,7.7 25,12 21.5,9.2 18,12 19,7.7 15,5 20,5 "></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="51.5,0 53,5 58,5 54,7.7 55,12 51.5,9.2 48,12 49,7.7 45,5 50,5 "></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="36.5,0 38,5 43,5 39,7.7 40,12 36.5,9.2 33,12 34,7.7 30,5 35,5 "></polygon>
						  </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                    <p>
                        Suspendisse at placerat turpis. Duis luctus erat vel magna pharetra aliquet. Maecenas tincidunt feugiat ultricies. Phasellus et dui risus. Vestibulum adipiscing, eros quis lobortis dictum.  It enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    </p>
                </li>
                <li>
                    <div class="meta">
                        <span>Mike Example</span>,
                        <span class="time">03.11.2013, 10:45:</span>
                    </div>
                    <div class="evaluation-box">
                        <div class="evaluation">
                            <span>Quality</span>
                            <div class="rating-box">
                                <div style="width: 100%" class="rating">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="73px" height="12px" viewBox="0 0 73 12" enable-background="new 0 0 73 12" xml:space="preserve">
							  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="6.5,0 8,5 13,5 9,7.7 10,12 6.5,9.2 3,12 4,7.7 0,5 5,5"></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="66.5,0 68,5 73,5 69,7.7 70,12 66.5,9.2 63,12 64,7.7 60,5 65,5 "></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="21.5,0 23,5 28,5 24,7.7 25,12 21.5,9.2 18,12 19,7.7 15,5 20,5 "></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="51.5,0 53,5 58,5 54,7.7 55,12 51.5,9.2 48,12 49,7.7 45,5 50,5 "></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="36.5,0 38,5 43,5 39,7.7 40,12 36.5,9.2 33,12 34,7.7 30,5 35,5 "></polygon>
						  </svg>
                                </div>
                            </div>
                        </div>
                        <div class="evaluation">
                            <span>Price</span>
                            <div class="rating-box">
                                <div style="width: 80%" class="rating">
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="73px" height="12px" viewBox="0 0 73 12" enable-background="new 0 0 73 12" xml:space="preserve">
							  <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="6.5,0 8,5 13,5 9,7.7 10,12 6.5,9.2 3,12 4,7.7 0,5 5,5"></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="66.5,0 68,5 73,5 69,7.7 70,12 66.5,9.2 63,12 64,7.7 60,5 65,5 "></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="21.5,0 23,5 28,5 24,7.7 25,12 21.5,9.2 18,12 19,7.7 15,5 20,5 "></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="51.5,0 53,5 58,5 54,7.7 55,12 51.5,9.2 48,12 49,7.7 45,5 50,5 "></polygon>
                                        <polygon fill-rule="evenodd" clip-rule="evenodd" fill="#1e1e1e" points="36.5,0 38,5 43,5 39,7.7 40,12 36.5,9.2 33,12 34,7.7 30,5 35,5 "></polygon>
						  </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                    <p>
                        Etiam mollis volutpat odio, id euismod justo gravida a. Aliquam erat volutpat. Phasellus faucibus venenatis lorem, vitae commodo elit pretium et. Duis rhoncus lobortis congue. Vestibulum et purus dui, vel porta lectus. Sed vulputate pulvinar adipiscing. It enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    </p>
                </li>
            </ul><!-- .commentlist -->

            <h3 class="title">Write Your Own Review</h3>
            <form class="comments-form">
                <div class="evaluation-box">
                    <div class="evaluation">
                        <div class="pull-left">Quality <span class="required">*</span></div>
                        <div class="add-rating">
                            <label class="radio"><input type="radio" name="radio"><span class="number">1</span></label>
                            <label class="radio"><input type="radio" name="radio"><span class="number">2</span></label>
                            <label class="radio"><input type="radio" name="radio"><span class="number">3</span></label>
                            <label class="radio"><input type="radio" name="radio"><span class="number">4</span></label>
                            <label class="radio"><input type="radio" name="radio"><span class="number">5</span></label>
                        </div>
                    </div>
                    <div class="evaluation">
                        <div class="pull-left">Price <span class="required">*</span></div>
                        <div class="add-rating">
                            <label class="radio"><input type="radio" name="radio2"><span class="number">1</span></label>
                            <label class="radio"><input type="radio" name="radio2"><span class="number">2</span></label>
                            <label class="radio"><input type="radio" name="radio2"><span class="number">3</span></label>
                            <label class="radio"><input type="radio" name="radio2"><span class="number">4</span></label>
                            <label class="radio"><input type="radio" name="radio2"><span class="number">5</span></label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-5 col-md-5">
                        <label>Nickname: <span class="required">*</span></label>
                        <input class="form-control" type="text">
                        <label>Summary of Your Review: <span class="required">*</span></label>
                        <input class="form-control" type="text">
                    </div>
                    <div class="col-sm-7 col-md-7">
                        <label>Review: <span class="required">*</span></label>
                        <textarea class="form-control"></textarea>
                        <i>Note: HTML is not translated!</i>
                    </div>
                    <div class="col-sm-12 col-md-12">
                        <button class="btn btn-default">Submit</button>
                    </div>
                </div>
            </form><!-- .comments-form -->
        </div><!-- #reviews -->
        <div class="tab-pane" id="custom-tab">
            <h3>Custom Tab</h3>
        </div>
    </div><!-- .tab-content -->
</div>

<div class="clearfix"></div>

<div class="recommended-product carousel-box load overflow">
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
    <h2 class="title">Related Product</h2>
</div>

<div class="clearfix"></div>

<div class="row">
<div class="carousel products">
<div class="col-sm-3 col-md-3 product rotation">
    <div class="default">
        <a href="product-view.html" class="product-image">
            <img src="img/content/product-1.png" alt="" title="" width="270" height="270">
        </a>
        <div class="product-description">
            <div class="vertical">
                <h3 class="product-name">
                    <a href="product-view.html">Sony Led TV KDL-46HX853</a>
                </h3>
                <div class="price">$1, 449.00</div>
            </div>
        </div>
    </div>

    <div class="product-hover">
        <h3 class="product-name">
            <a href="product-view.html">Sony Led TV KDL-46HX853</a>
        </h3>
        <div class="price">$1, 449.00</div>
        <a href="product-view.html" class="product-image">
            <img src="img/content/product-1.png" alt="" title="" width="70" height="70">
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
            <img src="img/content/product-2.png" alt="" title="" width="270" height="270">
        </a>
        <div class="product-description">
            <div class="vertical">
                <h3 class="product-name">
                    <a href="product-view.html">Sony 3D TV KD3-46H853</a>
                </h3>
                <div class="price">$1, 449.00</div>
            </div>
        </div>
    </div>
    <div class="product-hover">
        <h3 class="product-name">
            <a href="product-view.html">Sony 3D TV KD3-46H853</a>
        </h3>
        <div class="price">$1, 449.00</div>
        <a href="product-view.html" class="product-image">
            <img src="img/content/product-2.png" alt="" title="" width="70" height="70">
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
            <img src="img/content/product-3.png" alt="" title="" width="270" height="270">
        </a>
        <div class="product-description">
            <div class="vertical">
                <h3 class="product-name">
                    <a href="product-view.html">Projector VPL-VW95ES</a>
                </h3>
                <div class="price">$1, 449.00</div>
            </div>
        </div>
    </div>

    <div class="product-hover">
        <h3 class="product-name">
            <a href="product-view.html">Projector VPL-VW95ES</a>
        </h3>
        <div class="price">$1, 449.00</div>
        <a href="product-view.html" class="product-image">
            <img src="img/content/product-3.png" alt="" title="" width="70" height="70">
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
            <img src="img/content/product-4.png" alt="" title="" width="270" height="270">
        </a>
        <div class="product-description">
            <div class="vertical">
                <h3 class="product-name">
                    <a href="product-view.html">XA700 Wireless speaker</a>
                </h3>
                <div class="price">$1, 449.00</div>
            </div>
        </div>
    </div>

    <div class="product-hover">
        <h3 class="product-name">
            <a href="product-view.html">XA700 Wireless speaker</a>
        </h3>
        <div class="price">$1, 449.00</div>
        <a href="product-view.html" class="product-image">
            <img src="img/content/product-4.png" alt="" title="" width="70" height="70">
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
            <img src="img/content/product-5.png" alt="" title="" width="270" height="270">
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
            <img src="img/content/product-5.png" alt="" title="" width="70" height="70">
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
            <img src="img/content/product-6.png" alt="" title="" width="270" height="270">
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
            <img src="img/content/product-6.png" alt="" title="" width="70" height="70">
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
            <img src="img/content/product-7.png" alt="" title="" width="270" height="270">
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
            <img src="img/content/product-7.png" alt="" title="" width="70" height="70">
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
            <img src="img/content/product-8.png" alt="" title="" width="270" height="270">
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
            <img src="img/content/product-8.png" alt="" title="" width="70" height="70">
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
</div><!-- .recommended-product -->
</article><!-- .content -->
</div>
</div>
</div><!-- #main -->

</div><!-- .page-box-content -->
</div><!-- .page-box -->

<footer id="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row sidebar">
                <aside class="col-xs-12 col-sm-6 col-md-3 widget social">
                    <div class="title-block">
                        <h3 class="title">Follow Us</h3>
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
<script src="/resources/asset/js/layerslider/layerslider.transitions.js"></script>
<script src="/resources/asset/js/layerslider/layerslider.kreaturamedia.jquery.js"></script>
<script src="/resources/asset/js/revolution/jquery.themepunch.plugins.min.js"></script>
<script src="/resources/asset/js/revolution/jquery.themepunch.revolution.min.js"></script>
<script src="/resources/asset/js/main.js"></script>

</body>
</html>