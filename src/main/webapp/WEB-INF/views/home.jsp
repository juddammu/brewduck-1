<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>BREWDUCK - 맥주의 모든것</title>
    <meta name="Author" content="brewduck, http://www.brewduck.com, 맥주 대동여지도" />
    <meta content="" name="description" />
    <meta name="description" content="BRWEDUCK - 세상에는 당신이 맛보지 않은 맥주들이 너무나 많습니다." />
    <meta name="keywords" content="ale, beer, brewduck, Home Brewing, lager, SOMA, 곡주, 공방, 과실주, 라거, 맥주, 문화, 바이젠, 발효, 배병우, 소마, 숙성, 양조, 에일, 옥수동, 옥토버페스트, 와인, 맥만동, 임세환, 제조, 주조, 증류주, 포도주, 프로젝트, 홈 브루잉, 효모" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Arimo:400,700,400italic">
    <link rel="stylesheet" href="/resources/commons/css/fonts/linecons/css/linecons.css">
    <link rel="stylesheet" href="/resources/commons/css/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/commons/css/bootstrap.css">
    <link rel="stylesheet" href="/resources/commons/css/xenon-core.css">
    <link rel="stylesheet" href="/resources/commons/css/xenon-forms.css">
    <link rel="stylesheet" href="/resources/commons/css/xenon-components.css">
    <link rel="stylesheet" href="/resources/commons/css/xenon-skins.css">
    <link rel="stylesheet" href="/resources/commons/css/custom.css">

    <script src="/resources/commons/js/jquery-1.11.1.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body class="page-body">

<div class="settings-pane">

    <a href="#" data-toggle="settings-pane" data-animate="true">
        &times;
    </a>

    <div class="settings-pane-inner">

        <div class="row">

            <div class="col-md-4">

                <div class="user-info">

                    <div class="user-image">
                        <a href="extra-profile.html">
                            <img src="/resources/commons/images/user-2.png" class="img-responsive img-circle" />
                        </a>
                    </div>

                    <div class="user-details">

                        <h3>
                            <a href="extra-profile.html">John Smith</a>

                            <!-- Available statuses: is-online, is-idle, is-busy and is-offline -->
                            <span class="user-status is-online"></span>
                        </h3>

                        <p class="user-title">Web Developer</p>

                        <div class="user-links">
                            <a href="extra-profile.html" class="btn btn-primary">Edit Profile</a>
                            <a href="extra-profile.html" class="btn btn-success">Upgrade</a>
                        </div>

                    </div>

                </div>

            </div>

            <div class="col-md-8 link-blocks-env">

                <div class="links-block left-sep">
                    <h4>
                        <span>Notifications</span>
                    </h4>

                    <ul class="list-unstyled">
                        <li>
                            <input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk1" />
                            <label for="sp-chk1">Messages</label>
                        </li>
                        <li>
                            <input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk2" />
                            <label for="sp-chk2">Events</label>
                        </li>
                        <li>
                            <input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk3" />
                            <label for="sp-chk3">Updates</label>
                        </li>
                        <li>
                            <input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk4" />
                            <label for="sp-chk4">Server Uptime</label>
                        </li>
                    </ul>
                </div>

                <div class="links-block left-sep">
                    <h4>
                        <a href="#">
                            <span>Help Desk</span>
                        </a>
                    </h4>

                    <ul class="list-unstyled">
                        <li>
                            <a href="#">
                                <i class="fa-angle-right"></i>
                                Support Center
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa-angle-right"></i>
                                Submit a Ticket
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa-angle-right"></i>
                                Domains Protocol
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa-angle-right"></i>
                                Terms of Service
                            </a>
                        </li>
                    </ul>
                </div>

            </div>

        </div>

    </div>

</div>

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
    <a href="dashboard-1.html">
        <i class="fa-search"></i>
        <span class="title">찾기</span>
    </a>
</li>
<li>
    <a href="dashboard-1.html">
        <i class="linecons-pencil"></i>
        <span class="title">만들기</span>
    </a>
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
                New Post
            </a>
        </li>
        <li>
            <a href="#settings">
                <i class="fa-wrench"></i>
                Settings
            </a>
        </li>
        <li>
            <a href="#profile">
                <i class="fa-user"></i>
                Profile
            </a>
        </li>
        <li>
            <a href="#help">
                <i class="fa-info"></i>
                Help
            </a>
        </li>
        <li class="last">
            <a href="extra-lockscreen.html">
                <i class="fa-lock"></i>
                Logout
            </a>
        </li>
    </ul>
</li>


</ul>

</div>

</nav>

<div class="page-container"><!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->

<div class="main-content">

<script>
    jQuery(document).ready(function($)
    {
        $('a[href="#layout-variants"]').on('click', function(ev)
        {
            ev.preventDefault();

            var win = {top: $(window).scrollTop(), toTop: $("#layout-variants").offset().top - 15};

            TweenLite.to(win, .3, {top: win.toTop, roundProps: ["top"], ease: Sine.easeInOut, onUpdate: function()
            {
                $(window).scrollTop(win.top);
            }
            });
        });
    });
</script>

<div class="jumbotron">
    공지사항 영역
</div>


<h3 id="layout-variants">
    추천 레시피
    <span>이한치열! 겨울 속 여름 여행을 떠나보아요</span>
</h3>

<div class="panel panel-default panel-headerless">

<div class="panel-body layout-variants">

<div class="row">
<div class="col-sm-4">

    <div class="layout-variant">
        <div class="layout-img">
            <a href="layout-variants.html">
                <img src="/resources/commons/images/layouts/layout-sidebar.png" />
            </a>
        </div>
        <div class="layout-name">
            <a href="layout-variants.html">Left Sidebar</a>
        </div>
        <ul class="layout-links">
            <li>
                <a href="layout-variants.html" class="">Fixed Sidebar</a>
            </li>
            <li>
                <a href="layout-static-sidebar.html" class="">Static Sidebar</a>
            </li>
            <li>
                <a href="layout-without-submenu-toggle.html" class="">Other Submenus Toggle Off</a>
            </li>
        </ul>
    </div>

</div>
<div class="col-sm-4">

    <div class="layout-variant">
        <div class="layout-img">
            <a href="layout-right-sidebar.html">
                <img src="/resources/commons/images/layouts/layout-sidebar-right.png" />
            </a>
        </div>
        <div class="layout-name">
            <a href="layout-right-sidebar.html">Right Sidebar</a>
        </div>
        <ul class="layout-links">
            <li>
                <a href="layout-right-sidebar.html" class="">Fixed Sidebar</a>
            </li>
            <li>
                <a href="layout-right-sidebar-static.html" class="">Static Sidebar</a>
            </li>
            <li>
                <a href="layout-without-submenu-toggle-right.html" class="">Other Submenus Toggle Off</a>
            </li>
        </ul>
    </div>

</div>
<div class="col-sm-4">

    <div class="layout-variant">
        <div class="layout-img">
            <a href="layout-collapsed-sidebar.html">
                <img src="/resources/commons/images/layouts/layout-sidebar-collapsed.png" />
            </a>
        </div>
        <div class="layout-name">
            <a href="layout-collapsed-sidebar.html">Collapsed Sidebar</a>
        </div>
        <ul class="layout-links">
            <li>
                <a href="layout-collapsed-sidebar.html" class="disabled">
                    <del>Fixed Sidebar</del>
                </a>
            </li>
            <li>
                <a href="layout-collapsed-sidebar.html" class="">Static Sidebar</a>
            </li>
            <li>
                <a href="layout-chat-open.html" class="">Static Sidebar &amp; Chat Open</a>
            </li>
            <li>
                <a href="layout-sidebar-collapsed-with-userinfo-links.html" class="">Static Sidebar &amp; User Info Links</a>
            </li>
        </ul>
    </div>

</div>

<div class="clearfix"></div>

<div class="col-sm-4">

    <div class="layout-variant">
        <div class="layout-img">
            <a href="layout-right-collapsed-sidebar.html">
                <img src="/resources/commons/images/layouts/layout-sidebar-right-collapsed.png" />
            </a>
        </div>
        <div class="layout-name">
            <a href="layout-right-collapsed-sidebar.html">Collapsed Right Sidebar</a>
        </div>
        <ul class="layout-links">
            <li>
                <a href="layout-right-collapsed-sidebar.html" class="disabled">
                    <del>Fixed Sidebar</del>
                </a>
            </li>
            <li>
                <a href="layout-right-collapsed-sidebar.html" class="">Static Sidebar</a>
            </li>
            <li>
                <a href="layout-right-collapsed-sidebar-chat-open.html" class="">Static Sidebar &amp; Chat Open</a>
            </li>
            <li>
                <a href="layout-sidebar-collapsed-right-with-userinfo-links.html" class="">Static Sidebar &amp; User Info Links</a>
            </li>
        </ul>
    </div>

</div>

<div class="col-sm-4">

    <div class="layout-variant layout-current">
        <div class="layout-img">
            <a href="layout-horizontal-menu.html">
                <img src="/resources/commons/images/layouts/layout-horizontal.png" />
            </a>
        </div>
        <div class="layout-name">
            <a href="layout-horizontal-menu.html">Horizontal Menu</a>
        </div>
        <ul class="layout-links">
            <li>
                <a href="layout-horizontal-menu.html" class="layout-mode-current">Fixed to Top</a>
            </li>
            <li>
                <a href="layout-horizontal-menu-static.html" class="">Static on Top</a>
            </li>
            <li>
                <a href="layout-horizontal-menu-boxed.html" class="">Boxed Content with Horizontal Menu</a>
            </li>
            <li>
                <a href="layout-horizontal-menu-click-to-open-subs.html" class="">Click to Open Submenus</a>
            </li>
            <li>
                <a href="layout-horizontal-menu-min.html" class="">Minimal Horizontal Menu</a>
            </li>
        </ul>
    </div>

</div>
<div class="col-sm-4">

    <div class="layout-variant">
        <div class="layout-img">
            <a href="layout-horizontal-plus-sidebar.html">
                <img src="/resources/commons/images/layouts/layout-sidebar-horizontal.png" />
            </a>
        </div>
        <div class="layout-name">
            <a href="layout-horizontal-plus-sidebar.html">Sidebar &amp; Horizontal Menu</a>
        </div>
        <ul class="layout-links">
            <li>
                <a href="layout-horizontal-plus-sidebar.html" class="">Fixed Sidebar &amp; Horizontal Menu</a>
            </li>
            <li>
                <a href="layout-horizontal-sidebar-menu-static.html" class="">Static Sidebar &amp; Horizontal Menu</a>
            </li>
            <li>
                <a href="layout-horizontal-fixed-sidebar-menu-static.html" class="">Static Sidebar, Fixed Horizontal Menu</a>
            </li>
            <li>
                <a href="layout-horizontal-plus-sidebar-userinfo-links.html" class="">Fixed Sidebar &amp; Horizontal Menu with User Info</a>
            </li>
        </ul>
    </div>

</div>

<div class="clearfix"></div>

<div class="col-sm-4">

    <div class="layout-variant">
        <div class="layout-img">
            <a href="layout-horizontal-right-sidebar-menu.html">
                <img src="/resources/commons/images/layouts/layout-horizontal-right-sidebar.png" />
            </a>
        </div>
        <div class="layout-name">
            <a href="layout-horizontal-right-sidebar-menu.html">Right Sidebar &amp; Horizontal Menu</a>
        </div>
        <ul class="layout-links">
            <li>
                <a href="layout-horizontal-right-sidebar-menu.html" class="">Fixed Sidebar &amp; Horizontal Menu</a>
            </li>
            <li>
                <a href="layout-horizontal-right-sidebar-menu-static.html" class="">Static Sidebar &amp; Horizontal Menu</a>
            </li>
            <li>
                <a href="layout-horizontal-right-fixed-sidebar-menu-static.html" class="">Static Sidebar, Fixed Horizontal Menu</a>
            </li>
            <li>
                <a href="layout-horizontal-plus-right-sidebar-userinfo-links.html" class="">Fixed Sidebar &amp; Horizontal Menu with User Info</a>
            </li>
        </ul>
    </div>

</div>
<div class="col-sm-4">

    <div class="layout-variant">
        <div class="layout-img">
            <a href="layout-horizontal-sidebar-menu-collapsed.html">
                <img src="/resources/commons/images/layouts/layout-sidebar-collapsed-horizontal.png" />
            </a>
        </div>
        <div class="layout-name">
            <a href="layout-horizontal-sidebar-menu-collapsed.html">Collapsed Sidebar &amp; Horizontal Menu</a>
        </div>
        <ul class="layout-links">
            <li>
                <a href="layout-horizontal-sidebar-menu-collapsed.html" class="">Static Sidebar &amp; Fixed Horizontal Menu</a>
            </li>
            <li>
                <a href="layout-horizontal-static-sidebar-menu-collapsed.html" class="">Static Sidebar &amp; Horizontal Menu</a>
            </li>
        </ul>
    </div>

</div>


<div class="col-sm-4">

    <div class="layout-variant">
        <div class="layout-img">
            <a href="layout-horizontal-sidebar-menu-collapsed-right.html">
                <img src="/resources/commons/images/layouts/layout-horizontal-right-sidebar-collapsed.png" />
            </a>
        </div>
        <div class="layout-name">
            <a href="layout-horizontal-sidebar-menu-collapsed-right.html">Right Collapsed Sidebar &amp; Horizontal Menu</a>
        </div>
        <ul class="layout-links">
            <li>
                <a href="layout-horizontal-sidebar-menu-collapsed-right.html" class="">Static Sidebar &amp; Fixed Horizontal Menu</a>
            </li>
            <li>
                <a href="layout-horizontal-static-sidebar-menu-collapsed-right.html" class="">Static Sidebar &amp; Horizontal Menu</a>
            </li>
        </ul>
    </div>

</div>

</div>

</div>

</div>
<!-- Main Footer -->
<!-- Choose between footer styles: "footer-type-1" or "footer-type-2" -->
<!-- Add class "sticky" to  always stick the footer to the end of page (if page contents is small) -->
<!-- Or class "fixed" to  always fix the footer to the end of page -->
<footer class="main-footer sticky footer-type-1">

    <div class="footer-inner">

        <!-- Add your copyright text here -->
        <div class="footer-text">
            &copy; 2014
            <strong>Xenon</strong>
            theme by <a href="http://laborator.co" target="_blank">Laborator</a> - <a href="http://themeforest.net/item/xenon-bootstrap-admin-theme/9059661?ref=Laborator" target="_blank">Purchase for only <strong>23$</strong></a>
        </div>


        <!-- Go to Top Link, just add rel="go-top" to any link to add this functionality -->
        <div class="go-up">

            <a href="#" rel="go-top">
                <i class="fa-angle-up"></i>
            </a>

        </div>

    </div>

</footer>
</div>


<div id="chat" class="fixed"><!-- start: Chat Section -->

    <div class="chat-inner">


        <h2 class="chat-header">
            <a  href="#" class="chat-close" data-toggle="chat">
                <i class="fa-plus-circle rotate-45deg"></i>
            </a>

            Chat
            <span class="badge badge-success is-hidden">0</span>
        </h2>

        <script type="text/javascript">
            // Here is just a sample how to open chat conversation box
            jQuery(document).ready(function($)
            {
                var $chat_conversation = $(".chat-conversation");

                $(".chat-group a").on('click', function(ev)
                {
                    ev.preventDefault();

                    $chat_conversation.toggleClass('is-open');

                    $(".chat-conversation textarea").trigger('autosize.resize').focus();
                });

                $(".conversation-close").on('click', function(ev)
                {
                    ev.preventDefault();
                    $chat_conversation.removeClass('is-open');
                });
            });
        </script>


        <div class="chat-group">
            <strong>Favorites</strong>

            <a href="#"><span class="user-status is-online"></span> <em>Catherine J. Watkins</em></a>
            <a href="#"><span class="user-status is-online"></span> <em>Nicholas R. Walker</em></a>
            <a href="#"><span class="user-status is-busy"></span> <em>Susan J. Best</em></a>
            <a href="#"><span class="user-status is-idle"></span> <em>Fernando G. Olson</em></a>
            <a href="#"><span class="user-status is-offline"></span> <em>Brandon S. Young</em></a>
        </div>


        <div class="chat-group">
            <strong>Work</strong>

            <a href="#"><span class="user-status is-busy"></span> <em>Rodrigo E. Lozano</em></a>
            <a href="#"><span class="user-status is-offline"></span> <em>Robert J. Garcia</em></a>
            <a href="#"><span class="user-status is-offline"></span> <em>Daniel A. Pena</em></a>
        </div>


        <div class="chat-group">
            <strong>Other</strong>

            <a href="#"><span class="user-status is-online"></span> <em>Dennis E. Johnson</em></a>
            <a href="#"><span class="user-status is-online"></span> <em>Stuart A. Shire</em></a>
            <a href="#"><span class="user-status is-online"></span> <em>Janet I. Matas</em></a>
            <a href="#"><span class="user-status is-online"></span> <em>Mindy A. Smith</em></a>
            <a href="#"><span class="user-status is-busy"></span> <em>Herman S. Foltz</em></a>
            <a href="#"><span class="user-status is-busy"></span> <em>Gregory E. Robie</em></a>
            <a href="#"><span class="user-status is-busy"></span> <em>Nellie T. Foreman</em></a>
            <a href="#"><span class="user-status is-busy"></span> <em>William R. Miller</em></a>
            <a href="#"><span class="user-status is-idle"></span> <em>Vivian J. Hall</em></a>
            <a href="#"><span class="user-status is-offline"></span> <em>Melinda A. Anderson</em></a>
            <a href="#"><span class="user-status is-offline"></span> <em>Gary M. Mooneyham</em></a>
            <a href="#"><span class="user-status is-offline"></span> <em>Robert C. Medina</em></a>
            <a href="#"><span class="user-status is-offline"></span> <em>Dylan C. Bernal</em></a>
            <a href="#"><span class="user-status is-offline"></span> <em>Marc P. Sanborn</em></a>
            <a href="#"><span class="user-status is-offline"></span> <em>Kenneth M. Rochester</em></a>
            <a href="#"><span class="user-status is-offline"></span> <em>Rachael D. Carpenter</em></a>
        </div>

    </div>

    <!-- conversation template -->
    <div class="chat-conversation">

        <div class="conversation-header">
            <a href="#" class="conversation-close">
                &times;
            </a>

            <span class="user-status is-online"></span>
            <span class="display-name">Arlind Nushi</span>
            <small>Online</small>
        </div>

        <ul class="conversation-body">
            <li>
                <span class="user">Arlind Nushi</span>
                <span class="time">09:00</span>
                <p>Are you here?</p>
            </li>
            <li class="odd">
                <span class="user">Brandon S. Young</span>
                <span class="time">09:25</span>
                <p>This message is pre-queued.</p>
            </li>
            <li>
                <span class="user">Brandon S. Young</span>
                <span class="time">09:26</span>
                <p>Whohoo!</p>
            </li>
            <li class="odd">
                <span class="user">Arlind Nushi</span>
                <span class="time">09:27</span>
                <p>Do you like it?</p>
            </li>
        </ul>

        <div class="chat-textarea">
            <textarea class="form-control autogrow" placeholder="Type your message"></textarea>
        </div>

    </div>

    <!-- end: Chat Section -->
</div>

</div>

<div class="footer-sticked-chat"><!-- Start: Footer Sticked Chat -->

<script type="text/javascript">
    function toggleSampleChatWindow()
    {
        var $chat_win = jQuery("#sample-chat-window");

        $chat_win.toggleClass('open');

        if($chat_win.hasClass('open'))
        {
            var $messages = $chat_win.find('.ps-scrollbar');

            if($.isFunction($.fn.perfectScrollbar))
            {
                $messages.perfectScrollbar('destroy');

                setTimeout(function(){
                    $messages.perfectScrollbar();
                    $chat_win.find('.form-control').focus();
                }, 300);
            }
        }

        jQuery("#sample-chat-window form").on('submit', function(ev)
        {
            ev.preventDefault();
        });
    }

    jQuery(document).ready(function($)
    {
        $(".footer-sticked-chat .chat-user, .other-conversations-list a").on('click', function(ev)
        {
            ev.preventDefault();
            toggleSampleChatWindow();
        });

        $(".mobile-chat-toggle").on('click', function(ev)
        {
            ev.preventDefault();

            $(".footer-sticked-chat").toggleClass('mobile-is-visible');
        });
    });
</script>

<ul class="chat-conversations list-unstyled">

    <!-- Extra Chat Conversations collected not to exceed window width -->
    <li class="browse-more">
        <a href="#" class="chat-user">
            <i class="linecons-comment"></i>
            <span>3</span>
        </a>

        <!-- These conversations are hidden in screen -->
        <ul class="other-conversations-list">
            <li>
                <!-- Minimal User Info Link -->
                <a href="#" >
                    Catherine J. Watkins
                    <span>&times;</span>
                </a>
            </li>
            <li>
                <!-- Minimal User Info Link -->
                <a href="#" >
                    Nicholas R. Walker
                    <span>&times;</span>
                </a>
            </li>
            <li>
                <!-- Minimal User Info Link -->
                <a href="#" >
                    Susan J. Best
                    <span>&times;</span>
                </a>
            </li>
        </ul>
    </li>

    <li id="sample-chat-window">
        <!-- User Info Link -->
        <a href="#"  class="chat-user">
            <span class="user-status is-online"></span>
            Art Ramadani
        </a>

        <span class="badge badge-purple">4</span>

        <!-- Conversation Window -->
        <div class="conversation-window">
            <!-- User Info Link in header (used to close the chat bar) -->
            <a href="#"  class="chat-user">
                <span class="close">&times;</span>

                <span class="user-status is-online"></span>
                Art Ramadani
            </a>

            <ul class="conversation-messages ps-scrollbar ps-scroll-down">

                <!-- Will indicate time -->
                <li class="time">Thursday 04, December '14</li>

                <li>
                    <div class="user-info">
                        <a href="#">
                            <img src="/resources/commons/images/user-1.png" width="30" height="30" alt="user-image" />
                        </a>
                    </div>
                    <div class="message-entry">
                        <p>Hello John, how are you?</p>
                    </div>
                </li>

                <li class="me"><!-- adding class="me" will indicate that "you" are sending a message -->
                    <div class="message-entry">
                        <p>Hi Art, I am fine :) How about you?</p>
                    </div>
                    <div class="user-info">
                        <a href="#">
                            <img src="/resources/commons/images/user-4.png" width="30" height="30" alt="user-image" />
                        </a>
                    </div>
                </li>

                <li>
                    <div class="user-info">
                        <a href="#">
                            <img src="/resources/commons/images/user-1.png" width="30" height="30" alt="user-image" />
                        </a>
                    </div>
                    <div class="message-entry">
                        <p>Warmth his law design say are person. Pronounce suspected in belonging conveying ye repulsive.</p>
                    </div>
                </li>

                <li class="me"><!-- adding class="me" will indicate that "you" are sending a message -->
                    <div class="message-entry">
                        <p>Comfort reached gay perhaps chamber his six detract besides add. Moonlight newspaper.</p>
                        <p>Timed voice share led his widen noisy young.</p>
                        <p>His six detract besides add moonlight newspaper.</p>
                    </div>
                    <div class="user-info">
                        <a href="#">
                            <img src="/resources/commons/images/user-4.png" width="30" height="30" alt="user-image" />
                        </a>
                    </div>
                </li>

                <li>
                    <div class="user-info">
                        <a href="#">
                            <img src="/resources/commons/images/user-1.png" width="30" height="30" alt="user-image" />
                        </a>
                    </div>
                    <div class="message-entry">
                        <p>Hello John, how are you?</p>
                    </div>
                </li>

                <li class="me"><!-- adding class="me" will indicate that "you" are sending a message -->
                    <div class="message-entry">
                        <p>Hi Art, I am fine :) How about you?</p>
                    </div>
                    <div class="user-info">
                        <a href="#">
                            <img src="/resources/commons/images/user-4.png" width="30" height="30" alt="user-image" />
                        </a>
                    </div>
                </li>

                <li>
                    <div class="user-info">
                        <a href="#">
                            <img src="/resources/commons/images/user-1.png" width="30" height="30" alt="user-image" />
                        </a>
                    </div>
                    <div class="message-entry">
                        <p>Hello John, how are you?</p>
                    </div>
                </li>

                <!-- Will indicate time -->
                <li class="time">Today 17:12</li>

                <li class="me"><!-- adding class="me" will indicate that "you" are sending a message -->
                    <div class="message-entry">
                        <p>Hi Art, I am fine :) How about you?</p>

                    </div>
                    <div class="user-info">
                        <a href="#">
                            <img src="/resources/commons/images/user-4.png" width="30" height="30" alt="user-image" />
                        </a>
                    </div>
                </li>

            </ul>

            <form method="post" class="chat-form">
                <input type="text" class="form-control"  placeholder="Enter your message..." />
            </form>
        </div>
    </li>

    <li>
        <!-- User Info Link -->
        <a href="#"  class="chat-user">
            <span class="user-status is-idle"></span>
            Ylli Pylla
        </a>
    </li>

    <li>
        <!-- User Info Link -->
        <a href="#"  class="chat-user">
            <span class="user-status is-busy"></span>
            Arlind Nushi
        </a>
    </li>

</ul>

<a href="#" class="mobile-chat-toggle">
    <i class="linecons-comment"></i>
    <span class="num">6</span>
    <span class="badge badge-purple">4</span>
</a>

<!-- End: Footer Sticked Chat -->
</div>





<!-- Bottom Scripts -->
<script src="/resources/commons/js/bootstrap.min.js"></script>
<script src="/resources/commons/js/TweenMax.min.js"></script>
<script src="/resources/commons/js/resizeable.js"></script>
<script src="/resources/commons/js/joinable.js"></script>
<script src="/resources/commons/js/xenon-api.js"></script>
<script src="/resources/commons/js/xenon-toggles.js"></script>


<!-- JavaScripts initializations and stuff -->
<script src="/resources/commons/js/xenon-custom.js"></script>

</body>
</html>