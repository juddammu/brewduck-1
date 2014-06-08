<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8" />
    <title>Webarch - Responsive Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <!-- BEGIN PLUGIN CSS -->
    <link href="/resources/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="/resources/assets/plugins/jquery-slider/css/jquery.sidr.light.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="/resources/assets/plugins/boostrap-checkbox/css/bootstrap-checkbox.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="/resources/assets/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" type="text/css"/>
    <!-- END PLUGIN CSS -->

    <!-- BEGIN CORE CSS FRAMEWORK -->
    <link href="/resources/assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/plugins/boostrapv3/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
    <!-- END CORE CSS FRAMEWORK -->

    <!-- BEGIN CSS TEMPLATE -->
    <link href="/resources/assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/css/responsive.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/css/custom-icon-set.css" rel="stylesheet" type="text/css"/>

</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class="inner-menu-always-open">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse ">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="navbar-inner">
        <div class="header-seperation">
            <ul class="nav pull-left notifcation-center" id="main-menu-toggle-wrapper" style="display:none">
                <li class="dropdown"> <a id="main-menu-toggle" href="#main-menu"  class="" > <div class="iconset top-menu-toggle-white"></div> </a> </li>
            </ul>
            <!-- BEGIN LOGO -->
            <a href="index.html"><img src="/resources/assets/img/logo.png" class="logo" alt=""  data-src="/resources/assets/img/logo.png" data-src-retina="/resources/assets/img/logo2x.png" width="106" height="21"/></a>
            <!-- END LOGO -->
            <ul class="nav pull-right notifcation-center">
                <li class="dropdown" id="header_task_bar"> <a href="index.html" class="dropdown-toggle active" data-toggle=""> <div class="iconset top-home"></div> </a> </li>
                <li class="dropdown" id="header_inbox_bar" > <a href="email.html" class="dropdown-toggle" > <div class="iconset top-messages"></div>  <span class="badge" id="msgs-badge">2</span> </a></li>
                <li class="dropdown" id="portrait-chat-toggler" style="display:none"> <a href="#sidr" class="chat-menu-toggle"> <div class="iconset top-chat-white "></div> </a> </li>
            </ul>
        </div>
        <!-- END RESPONSIVE MENU TOGGLER -->
        <div class="header-quick-nav" >
            <!-- BEGIN TOP NAVIGATION MENU -->
            <div class="pull-left">
                <ul class="nav quick-section">
                    <li class="quicklinks"> <a href="#" class="" id="layout-condensed-toggle" >
                        <div class="iconset top-menu-toggle-dark"></div>
                    </a> </li>
                </ul>
                <ul class="nav quick-section">
                    <li class="quicklinks"> <a href="#" class="" >
                        <div class="iconset top-reload"></div>
                    </a> </li>
                    <li class="quicklinks"> <span class="h-seperate"></span></li>
                    <li class="quicklinks"> <a href="#" class="" >
                        <div class="iconset top-tiles"></div>
                    </a> </li>
                    <li class="m-r-10 input-prepend inside search-form no-boarder">
                        <span class="add-on"> <span class="iconset top-search"></span></span>
                        <input name="" type="text"  class="no-boarder " placeholder="Search Dashboard" style="width:250px;">
                    </li>
                </ul>
            </div>
            <!-- END TOP NAVIGATION MENU -->
            <!-- BEGIN CHAT TOGGLER -->
            <div class="pull-right">
                <div class="chat-toggler">
                    <a href="#" class="dropdown-toggle" id="my-task-list" data-placement="bottom"  data-content='' data-toggle="dropdown" data-original-title="Notifications">
                        <div class="user-details">
                            <div class="username">
                                <span class="badge badge-important">3</span>
                                John <span class="bold">Smith</span>
                            </div>
                        </div>
                        <div class="iconset top-down-arrow"></div>
                    </a>
                    <div id="notification-list" style="display:none">
                        <div style="width:300px">
                            <div class="notification-messages info">
                                <div class="user-profile">
                                    <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35">
                                </div>
                                <div class="message-wrapper">
                                    <div class="heading">
                                        David Nester - Commented on your wall
                                    </div>
                                    <div class="description">
                                        Meeting postponed to tomorrow
                                    </div>
                                    <div class="date pull-left">
                                        A min ago
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="notification-messages danger">
                                <div class="iconholder">
                                    <i class="icon-warning-sign"></i>
                                </div>
                                <div class="message-wrapper">
                                    <div class="heading">
                                        Server load limited
                                    </div>
                                    <div class="description">
                                        Database server has reached its daily capicity
                                    </div>
                                    <div class="date pull-left">
                                        2 mins ago
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="notification-messages success">
                                <div class="user-profile">
                                    <img src="/resources/assets/img/profiles/h.jpg"  alt="" data-src="/resources/assets/img/profiles/h.jpg" data-src-retina="/resources/assets/img/profiles/h2x.jpg" width="35" height="35">
                                </div>
                                <div class="message-wrapper">
                                    <div class="heading">
                                        You haveve got 150 messages
                                    </div>
                                    <div class="description">
                                        150 newly unread messages in your inbox
                                    </div>
                                    <div class="date pull-left">
                                        An hour ago
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="profile-pic">
                        <img src="/resources/assets/img/profiles/avatar_small.jpg"  alt="" data-src="/resources/assets/img/profiles/avatar_small.jpg" data-src-retina="/resources/assets/img/profiles/avatar_small2x.jpg" width="35" height="35" />
                    </div>
                </div>
                <ul class="nav quick-section ">
                    <li class="quicklinks">
                        <a data-toggle="dropdown" class="dropdown-toggle  pull-right " href="#" id="user-options">
                            <div class="iconset top-settings-dark "></div>
                        </a>
                        <ul class="dropdown-menu  pull-right" role="menu" aria-labelledby="user-options">
                            <li><a href="user-profile.html"> My Account</a>
                            </li>
                            <li><a href="calender.html">My Calendar</a>
                            </li>
                            <li><a href="email.html"> My Inbox&nbsp;&nbsp;<span class="badge badge-important animated bounceIn">2</span></a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="login.html"><i class="fa fa-power-off"></i>&nbsp;&nbsp;Log Out</a></li>
                        </ul>
                    </li>
                    <li class="quicklinks"> <span class="h-seperate"></span></li>
                    <li class="quicklinks">
                        <a id="chat-menu-toggle" href="#sidr" class="chat-menu-toggle" ><div class="iconset top-chat-dark "><span class="badge badge-important hide" id="chat-message-count">1</span></div>
                        </a>
                        <div class="simple-chat-popup chat-menu-toggle hide" >
                            <div class="simple-chat-popup-arrow"></div><div class="simple-chat-popup-inner">
                            <div style="width:100px">
                                <div class="semi-bold">David Nester</div>
                                <div class="message">Hey you there </div>
                            </div>
                        </div>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- END CHAT TOGGLER -->
        </div>
        <!-- END TOP NAVIGATION MENU -->

    </div>
    <!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->
<!-- BEGIN CONTAINER -->
<div class="page-container row-fluid">
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar mini mini-mobile" id="main-menu" data-inner-menu="1">
    <div class="page-sidebar-wrapper" id="main-menu-wrappers">
        <!-- BEGIN MINI-PROFILE -->
        <div class="user-info-wrapper">
            <div class="profile-wrapper">
                <img src="/resources/assets/img/profiles/avatar.jpg"  alt="" data-src="/resources/assets/img/profiles/avatar.jpg" data-src-retina="/resources/assets/img/profiles/avatar2x.jpg" width="69" height="69" />
            </div>
            <div class="user-info">
                <div class="greeting">Welcome</div>
                <div class="username">John <span class="semi-bold">Smith</span></div>
                <div class="status">Status<a href="#"><div class="status-icon green"></div>Online</a></div>
            </div>
        </div>
        <!-- END MINI-PROFILE -->

        <!-- BEGIN MINI-WIGETS -->

        <!-- END MINI-WIGETS -->

        <!-- BEGIN SIDEBAR MENU -->
        <p class="menu-title">BROWSE <span class="pull-right"><a href="javascript:;"><i class="fa fa-refresh"></i></a></span></p>
        <ul>
            <li class="start "> <a href="index.html"> <i class="icon-custom-home"></i> <span class="title">Dashboard</span> <span class="selected"></span> <span class="arrow "></span> </a>
                <ul class="sub-menu">
                    <li > <a href="dashboard_v1.html"> Dashboard v1 </a> </li>
                    <li class=""> <a href="index.html "> Dashboard v2 <span class=" label label-info pull-right m-r-30">NEW</span></a></li>
                </ul>
            </li>
            <li class=""> <a href="widgets.html"> <i class="fa fa-th"></i> <span class="title">Widgets</span> <span class="label label-important pull-right ">HOT</span></a> </li>
            <li class=""> <a href="email.html"> <i class="fa fa-envelope"></i> <span class="title">Email</span> <span class="badge badge-disable pull-right ">203</span></a> </li>
            <li class=""> <a href="../../frontend/index.html"> <i class="fa fa-flag"></i>  <span class="title">Frontend</span></a></li>
            <li class=""> <a href="javascript:;"> <i class="fa fa-file-text"></i> <span class="title">Layouts</span> <span class="arrow "></span> </a>
                <ul class="sub-menu">
                    <li > <a href="layout_options.html"> Layout Options </a> </li>
                    <li > <a href="boxed_layout.html">Boxed Layout </a> </li>
                    <li > <a href="extended_layout.html">Extended Layout</a> </li>
                </ul>
            </li>
            <li class=""> <a href="javascript:;"> <i class="icon-custom-ui"></i> <span class="title">UI Elements</span> <span class="arrow "></span> </a>
                <ul class="sub-menu">
                    <li > <a href="typography.html"> Typography </a> </li>
                    <li > <a href="messages_notifications.html"> Messages & Notifications </a> </li>
                    <li > <a href="notifications.html"> Notifications </a> </li>
                    <li > <a href="icons.html">Icons</a> </li>
                    <li > <a href="buttons.html">Buttons</a> </li>
                    <li > <a href="tabs_accordian.html"> Tabs & Accordions </a> </li>
                    <li > <a href="sliders.html">Sliders</a> </li>
                    <li > <a href="group_list.html">Group list </a> </li>
                </ul>
            </li>
            <li class=""> <a href="javascript:;"> <i class="icon-custom-form"></i> <span class="title">Forms</span> <span class="arrow "></span> </a>
                <ul class="sub-menu">
                    <li > <a href="form_elements.html">Form Elements </a> </li>
                    <li > <a href="form_validations.html">Form Validations</a> </li>
                </ul>
            </li>
            <li class=""> <a href="javascript:;"> <i class="icon-custom-portlets"></i> <span class="title">Grids</span> <span class="arrow "></span> </a>
                <ul class="sub-menu">
                    <li > <a href="grids_simple.html">Simple Grids</a> </li>
                    <li > <a href="grids_draggable.html">Draggable Grids </a> </li>
                </ul>
            </li>
            <li class=""> <a href="javascript:;"> <i class="icon-custom-thumb"></i> <span class="title">Tables</span> <span class="arrow "></span> </a>
                <ul class="sub-menu">
                    <li > <a href="tables.html"> Basic Tables </a> </li>
                    <li > <a href="datatables.html"> Data Tables </a> </li>
                </ul>
            </li>
            <li class=""> <a href="javascript:;"> <i class="icon-custom-map"></i> <span class="title">Maps</span> <span class="arrow "></span> </a>
                <ul class="sub-menu">
                    <li > <a href="google_map.html"> Google Maps </a> </li>
                    <li > <a href="vector_map.html"> Vector Maps </a> </li>
                </ul>
            </li>
            <li class=""> <a href="charts.html"> <i class="icon-custom-chart"></i> <span class="title">Charts</span> </a> </li>
            <li class=""> <a href="javascript:;"> <i class="icon-custom-extra"></i> <span class="title">Extra</span> <span class="arrow "></span> </a>
                <ul class="sub-menu">
                    <li > <a href="user-profile.html"> User Profile </a> </li>
                    <li > <a href="time_line.html"> Time line </a> </li>
                    <li > <a href="support_ticket.html"> Support Ticket </a> </li>
                    <li > <a href="gallery.html"> Gallery</a> </li>
                    <li class=""><a href="calender.html"> Calendar</a> </li>
                    <li > <a href="search_results.html"> Search Results </a> </li>
                    <li > <a href="invoice.html"> Invoice </a> </li>
                    <li > <a href="404.html"> 404 Page </a> </li>
                    <li > <a href="500.html"> 500 Page </a> </li>
                    <li > <a href="blank_template.html"> Blank Page </a> </li>
                    <li > <a href="login.html"> Login </a> </li>
                    <li > <a href="login_v2.html">Login v2</a> </li>
                    <li > <a href="lockscreen.html"> Lockscreen </a> </li>
                </ul>
            </li>
            <li class=""> <a href="javascript:;"> <i class="fa fa-folder-open"></i> <span class="title">Menu Levels</span> <span class="arrow "></span> </a>
                <ul class="sub-menu">
                    <li > <a href="javascript:;"> Level 1 </a> </li>
                    <li > <a href="javascript:;"> <span class="title">Level 2</span> <span class="arrow "></span> </a>
                        <ul class="sub-menu">
                            <li > <a href="javascript:;"> Sub Menu </a> </li>
                            <li > <a href="ujavascript:;"> Sub Menu </a> </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="hidden-lg hidden-md hidden-xs" id="more-widgets" > <a href="javascript:;"> <i class="fa fa-plus"></i></a>
                <ul class="sub-menu">
                    <li class="side-bar-widgets">
                        <p class="menu-title">FOLDER <span class="pull-right"><a href="#" class="create-folder"><i class="icon-plus"></i></a></span></p>
                        <ul class="folders" >
                            <li><a href="#">
                                <div class="status-icon green"></div>
                                My quick tasks </a> </li>
                            <li><a href="#">
                                <div class="status-icon red"></div>
                                To do list </a> </li>
                            <li><a href="#">
                                <div class="status-icon blue"></div>
                                Projects </a> </li>
                            <li class="folder-input" style="display:none">
                                <input type="text" placeholder="Name of folder" class="no-boarder folder-name" name="" id="folder-name">
                            </li>
                        </ul>
                        <p class="menu-title">PROJECTS </p>
                        <div class="status-widget">
                            <div class="status-widget-wrapper">
                                <div class="title">Freelancer<a href="#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
                                <p>Redesign home page</p>
                            </div>
                        </div>
                        <div class="status-widget">
                            <div class="status-widget-wrapper">
                                <div class="title">envato<a href="#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
                                <p>Statistical report</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="side-bar-widgets">
            <p class="menu-title">FOLDER <span class="pull-right"><a href="#" class="create-folder"> <i class="fa fa-plus"></i></a></span></p>
            <ul class="folders" >
                <li><a href="#"><div class="status-icon green"></div> My quick tasks </a> </li>
                <li><a href="#"><div class="status-icon red"></div> To do list </a> </li>
                <li><a href="#"><div class="status-icon blue"></div> Projects </a> </li>
                <li class="folder-input" style="display:none"><input type="text" placeholder="Name of folder" class="no-boarder folder-name" name="" ></li>
            </ul>
            <p class="menu-title">PROJECTS </p>
            <div class="status-widget">
                <div class="status-widget-wrapper">
                    <div class="title">Freelancer<a href="#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
                    <p>Redesign home page</p>
                </div>
            </div>
            <div class="status-widget">
                <div class="status-widget-wrapper">
                    <div class="title">envato<a href="#" class="remove-widget"><i class="icon-custom-cross"></i></a></div>
                    <p>Statistical report</p>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>
        <!-- END SIDEBAR MENU -->
    </div>

    <div class="inner-menu nav-collapse">
        <div class="inner-wrapper" >
            <a href="send_email.html" class="btn btn-block btn-primary" ><span class="bold">COMPOSE</span></a>

        </div>
        <div class="inner-menu-content">
            <p class="menu-title">FOLDER <span class="pull-right"><i class="icon-refresh"></i></span></p>
        </div>
        <ul class="big-items">
            <li class="active"><span class="badge badge-important">2</span><a href="email.html" > Inbox</a></li>
            <li><a href="sent.html">Sent</a></li>
            <li><a href="draft.html">Draft</a></li>
            <li><a href="trash.html">Trash</a></li>
        </ul>
        <ul class="small-items">
            <li class=""><a href="#" > Home</a></li>
            <li><span class="badge badge-important">2</span><a href="#"> Work</a></li>
        </ul>
        <div class="inner-wrapper" >
            <p class="menu-title">QUICK VIEW</p>
        </div>
        <ul class="small-items">
            <li class=""><a href="#"> Documents</a></li>
            <li class=""><span class=" badge badge-disable ">203</span><a href="#"> Images</a></li>
            <li class=""><a href="#"> Flagged</a></li>
        </ul>
    </div>
</div>
<a href="#" class="scrollup">Scroll</a>
<!-- BEGIN PAGE -->
<div class="page-content">
    <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
    <div id="portlet-config" class="modal hide">
        <div class="modal-header">
            <button data-dismiss="modal" class="close" type="button"></button>
            <h3>Widget Settings</h3>
        </div>
        <div class="modal-body"> Widget settings form goes here </div>
    </div>
    <div class="clearfix"></div>
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12">
                        <div class="grid simple" >
                            <div class="grid-body no-border" style="min-height: 850px;" >
                                <br>
                                <div class="row-fluid " >
                                    <h2>New Message </h2>
                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <label class="form-label">Sender</label>
                                            <span class="help">e.g. "someone@example.com"</span>
                                            <div class="controls">
                                                <input type="text" class="form-control ">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <label class="form-label">Subject</label>
                                            <span class="help">e.g. "Meeting Agenda"</span>
                                            <div class="controls">
                                                <input type="text" class="form-control ">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <textarea id="text-editor" placeholder="Enter text ..." class="form-control" rows="25"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="admin-bar" id="quick-access" style="display:">
        <div class="admin-bar-inner">
            <div class="form-horizontal">
            </div>
            <button class="btn btn-danger btn-cons btn-add" type="button"><i class="icon-envelope"></i> Send</button>
            <button class="btn btn-white btn-cons btn-cancel" type="button">Save</button>
        </div>
    </div>
    <div class="clearfix"></div>
</div>
<div class="clearfix"></div>
<!-- END PAGE -->
</div>

<!-- BEGIN CHAT -->
<div id="sidr" class="chat-window-wrapper">
<div id="main-chat-wrapper" >
<div class="chat-window-wrapper fadeIn" id="chat-users" >
    <div class="chat-header">
        <div class="pull-left">
            <input type="text" placeholder="search">
        </div>
        <div class="pull-right">
            <a href="#" class="" ><div class="iconset top-settings-dark "></div> </a>
        </div>
    </div>
    <div class="side-widget">
        <div class="side-widget-title">group chats</div>
        <div class="side-widget-content">
            <div id="groups-list">
                <ul class="groups" >
                    <li><a href="#"><div class="status-icon green"></div>Office work</a></li>
                    <li><a href="#"><div class="status-icon green"></div>Personal vibes</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="side-widget fadeIn">
        <div class="side-widget-title">favourites</div>
        <div id="favourites-list">
            <div class="side-widget-content" >
                <div class="user-details-wrapper active" data-chat-status="online" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="Jane Smith">
                    <div class="user-profile">
                        <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35">
                    </div>
                    <div class="user-details">
                        <div class="user-name">
                            Jane Smith
                        </div>
                        <div class="user-more">
                            Hello you there?
                        </div>
                    </div>
                    <div class="user-details-status-wrapper">
                        <span class="badge badge-important">3</span>
                    </div>
                    <div class="user-details-count-wrapper">
                        <div class="status-icon green"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="user-details-wrapper" data-chat-status="busy" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="David Nester">
                    <div class="user-profile">
                        <img src="/resources/assets/img/profiles/c.jpg"  alt="" data-src="/resources/assets/img/profiles/c.jpg" data-src-retina="/resources/assets/img/profiles/c2x.jpg" width="35" height="35">
                    </div>
                    <div class="user-details">
                        <div class="user-name">
                            David Nester
                        </div>
                        <div class="user-more">
                            Busy, Do not disturb
                        </div>
                    </div>
                    <div class="user-details-status-wrapper">
                        <div class="clearfix"></div>
                    </div>
                    <div class="user-details-count-wrapper">
                        <div class="status-icon red"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="side-widget">
        <div class="side-widget-title">more friends</div>
        <div class="side-widget-content" id="friends-list">
            <div class="user-details-wrapper" data-chat-status="online" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="Jane Smith">
                <div class="user-profile">
                    <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35">
                </div>
                <div class="user-details">
                    <div class="user-name">
                        Jane Smith
                    </div>
                    <div class="user-more">
                        Hello you there?
                    </div>
                </div>
                <div class="user-details-status-wrapper">

                </div>
                <div class="user-details-count-wrapper">
                    <div class="status-icon green"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="user-details-wrapper" data-chat-status="busy" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="David Nester">
                <div class="user-profile">
                    <img src="/resources/assets/img/profiles/h.jpg"  alt="" data-src="/resources/assets/img/profiles/h.jpg" data-src-retina="/resources/assets/img/profiles/h2x.jpg" width="35" height="35">
                </div>
                <div class="user-details">
                    <div class="user-name">
                        David Nester
                    </div>
                    <div class="user-more">
                        Busy, Do not disturb
                    </div>
                </div>
                <div class="user-details-status-wrapper">
                    <div class="clearfix"></div>
                </div>
                <div class="user-details-count-wrapper">
                    <div class="status-icon red"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="user-details-wrapper" data-chat-status="online" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="Jane Smith">
                <div class="user-profile">
                    <img src="/resources/assets/img/profiles/c.jpg"  alt="" data-src="/resources/assets/img/profiles/c.jpg" data-src-retina="/resources/assets/img/profiles/c2x.jpg" width="35" height="35">
                </div>
                <div class="user-details">
                    <div class="user-name">
                        Jane Smith
                    </div>
                    <div class="user-more">
                        Hello you there?
                    </div>
                </div>
                <div class="user-details-status-wrapper">

                </div>
                <div class="user-details-count-wrapper">
                    <div class="status-icon green"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="user-details-wrapper" data-chat-status="busy" data-chat-user-pic="/resources/assets/img/profiles/d.jpg" data-chat-user-pic-retina="/resources/assets/img/profiles/d2x.jpg" data-user-name="David Nester">
                <div class="user-profile">
                    <img src="/resources/assets/img/profiles/h.jpg"  alt="" data-src="/resources/assets/img/profiles/h.jpg" data-src-retina="/resources/assets/img/profiles/h2x.jpg" width="35" height="35">
                </div>
                <div class="user-details">
                    <div class="user-name">
                        David Nester
                    </div>
                    <div class="user-more">
                        Busy, Do not disturb
                    </div>
                </div>
                <div class="user-details-status-wrapper">
                    <div class="clearfix"></div>
                </div>
                <div class="user-details-count-wrapper">
                    <div class="status-icon red"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>

<div class="chat-window-wrapper fadeIn" id="messages-wrapper" style="display:none">
    <div class="chat-header">
        <div class="pull-left">
            <input type="text" placeholder="search">
        </div>
        <div class="pull-right">
            <a href="#" class="" ><div class="iconset top-settings-dark "></div> </a>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="chat-messages-header">
        <div class="status online"></div><span class="semi-bold">Jane Smith(Typing..)</span>
        <a href="#" class="chat-back"><i class="icon-custom-cross"></i></a>
    </div>
    <div class="chat-messages">
        <div class="sent_time">Yesterday 11:25pm</div>
        <div class="user-details-wrapper " >
            <div class="user-profile">
                <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35">
            </div>
            <div class="user-details">
                <div class="bubble">
                    Hello, You there?
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="sent_time off">Yesterday 11:25pm</div>
        </div>
        <div class="user-details-wrapper ">
            <div class="user-profile">
                <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35">
            </div>
            <div class="user-details">
                <div class="bubble">
                    How was the meeting?
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="sent_time off">Yesterday 11:25pm</div>
        </div>
        <div class="user-details-wrapper ">
            <div class="user-profile">
                <img src="/resources/assets/img/profiles/d.jpg"  alt="" data-src="/resources/assets/img/profiles/d.jpg" data-src-retina="/resources/assets/img/profiles/d2x.jpg" width="35" height="35">
            </div>
            <div class="user-details">
                <div class="bubble">
                    Let me know when you free
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="sent_time off">Yesterday 11:25pm</div>
        </div>
        <div class="sent_time ">Today 11:25pm</div>
        <div class="user-details-wrapper pull-right">
            <div class="user-details">
                <div class="bubble sender">
                    Let me know when you free
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="sent_time off">Sent On Tue, 2:45pm</div>
        </div>
    </div>
</div>
<div class="chat-input-wrapper" style="display:none">
    <textarea id="chat-message-input" rows="1" placeholder="Type your message"></textarea>
</div>
<div class="clearfix"></div>
</div>
</div>
<!-- END CHAT -->
<!-- END CONTAINER -->

<script src="/resources/assets/plugins/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/breakpoints.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script>
<!-- END CORE JS FRAMEWORK -->
<!-- BEGIN PAGE LEVEL JS -->
<script src="/resources/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-slider/jquery.sidr.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-numberAnimate/jquery.animateNumbers.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script>
<script src="/resources/assets/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN CORE TEMPLATE JS -->
<script src="/resources/assets/js/core.js" type="text/javascript"></script>
<script src="/resources/assets/js/chat.js" type="text/javascript"></script>
<script src="/resources/assets/js/demo.js" type="text/javascript"></script>
<!-- END CORE TEMPLATE JS -->
<script>
    $(document).ready(function() {
        $("#quick-access").css("bottom","0px");
    });
</script>

<!-- END JAVASCRIPTS -->
</body>
</html>