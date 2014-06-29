<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Boostbox - Form components</title>

    <!-- BEGIN META -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="your,keywords">
    <meta name="description" content="Short explanation about this website">
    <!-- END META -->

    <!-- BEGIN STYLESHEETS -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,300,400,600,700,800' rel='stylesheet' type='text/css'/>
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/bootstrap.css?1400695306" />
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/boostbox.css?1401297311" />
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/boostbox_responsive.css?1400695309" />
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/font-awesome.min.css?1400333030" />
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/libs/select2/select2.css?1401216370" />
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/libs/multi-select/multi-select.css?1401216371" />
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/libs/bootstrap-datetimepicker/bootstrap-datetimepicker.css?1400398165" />
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/libs/jquery-ui/jquery-ui-boostbox.css?1400695311" />
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/libs/bootstrap-colorpicker/bootstrap-colorpicker.css?1401216371" />
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/libs/bootstrap-tagsinput/bootstrap-tagsinput.css?1401216372" />
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/libs/typeahead/typeahead.css?1401216372" />
    <!-- END STYLESHEETS -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/resources/expert/js/libs/utils/html5shiv.js?1400333019"></script>
    <script type="text/javascript" src="/resources/expert/js/libs/utils/respond.min.js?1400333017"></script>
    <![endif]-->
</head>
<body >

<!-- BEGIN HEADER-->
<header id="header">

    <!-- BEGIN NAVBAR -->
    <nav class="navbar navbar-default" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="btn btn-transparent btn-equal btn-menu" href="javascript:void(0);"><i class="fa fa-bars fa-lg"></i></a>
            <div class="navbar-brand">
                <a class="main-brand" href="../../html/dashboards/dashboard.html">
                    <h3 class="text-light text-white"><span>Boost<strong>Box</strong> </span><i class="fa fa-rocket fa-fw"></i></h3>
                </a>
            </div><!--end .navbar-brand -->
            <a class="btn btn-transparent btn-equal navbar-toggle" data-toggle="collapse" data-target="#header-navbar-collapse"><i class="fa fa-wrench fa-lg"></i></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="header-navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="../../html/dashboards/dashboard.html"><i class="fa fa-home fa-lg"></i></a></li>
            </ul><!--end .nav -->
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-lg fa-flask"></i></a>
                    <ul class="dropdown-menu animation-slide theme-selector">
                        <li class="dropdown-header">Themes</li>
                        <li><a href="theme-default">Theme default</a></li>
                        <li><a href="theme-1">Theme 1</a></li>
                        <li><a href="theme-2">Theme 2</a></li>
                        <li><a href="theme-3">Theme 3</a></li>
                        <li><a href="theme-4">Theme 4</a></li>
                        <li><a href="theme-5">Theme 5</a></li>
                    </ul><!--end .dropdown-menu -->
                </li><!--end .dropdown -->
                <li><span class="navbar-devider"></span></li>
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-lg fa-envelope"></i><sup class="badge badge-support2">2</sup></a>
                    <ul class="dropdown-menu animation-zoom">
                        <li class="dropdown-header">Today's messages</li>
                        <li>
                            <a class="alert alert-warning" href="javascript:void(0);">
                                <img class="pull-right img-circle dropdown-avatar" src="/resources/expert/img/avatar2.jpg?1400333014" alt="" />
                                <strong>Alex Anistor</strong><br/>
                                <small>Testing functionality...</small>
                            </a>
                        </li>
                        <li>
                            <a class="alert alert-info" href="javascript:void(0);">
                                <img class="pull-right img-circle dropdown-avatar" src="/resources/expert/img/avatar3.jpg?1400333021" alt="" />
                                <strong>Alicia Adell</strong><br/>
                                <small>Reviewing last changes...</small>
                            </a>
                        </li>
                        <li class="dropdown-header">Options</li>
                        <li><a href="../../html/pages/login.html">View all messages <span class="pull-right"><i class="fa fa-arrow-right"></i></span></a></li>
                        <li><a href="../../html/pages/login.html">Mark as read <span class="pull-right"><i class="fa fa-arrow-right"></i></span></a></li>
                    </ul><!--end .dropdown-menu -->
                </li><!--end .dropdown -->
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-lg fa-dashboard"></i></a>
                    <ul class="dropdown-menu animation-dock">
                        <li class="dropdown-header">Server load</li>
                        <li class="dropdown-progress">
                            <a href="javascript:void(0);">
                                <div class="dropdown-label">
                                    <span class="text-light">Server load <strong>Today</strong></span>
                                    <strong class="pull-right">93%</strong>
                                </div>
                                <div class="progress"><div class="progress-bar progress-bar-danger" style="width: 93%"></div></div>
                            </a>
                        </li><!--end .dropdown-progress -->
                        <li class="dropdown-progress">
                            <a href="javascript:void(0);">
                                <div class="dropdown-label">
                                    <span class="text-light">Server load <strong>Yesterday</strong></span>
                                    <strong class="pull-right">30%</strong>
                                </div>
                                <div class="progress"><div class="progress-bar progress-bar-success" style="width: 30%"></div></div>
                            </a>
                        </li><!--end .dropdown-progress -->
                        <li class="dropdown-progress">
                            <a href="javascript:void(0);">
                                <div class="dropdown-label">
                                    <span class="text-light">Server load <strong>Lastweek</strong></span>
                                    <strong class="pull-right">74%</strong>
                                </div>
                                <div class="progress"><div class="progress-bar progress-bar-warning" style="width: 74%"></div></div>
                            </a>
                        </li><!--end .dropdown-progress -->
                    </ul><!--end .dropdown-menu -->
                </li><!--end .dropdown -->
                <li><span class="navbar-devider"></span></li>
                <li class="dropdown">
                    <a href="javascript:void(0);" class="navbar-profile dropdown-toggle text-bold" data-toggle="dropdown">Daniel Johnson <i class="fa fa-fw fa-angle-down"></i> <img class="img-circle" src="/resources/expert/img/avatar1.jpg?1401297311" alt="" /></a>
                    <ul class="dropdown-menu animation-slide">
                        <li class="dropdown-header">Config</li>
                        <li><a href="../../html/pages/profile.html">My profile</a></li>
                        <li><a href="../../html/pages/blog/post.html">My blog <span class="badge badge-danger pull-right">16</span></a></li>
                        <li><a href="../../html/pages/calendar.html">My appointments</a></li>
                        <li class="divider"></li>
                        <li><a href="../../html/pages/login.html"><i class="fa fa-fw fa-power-off text-danger"></i> Logout</a></li>
                    </ul><!--end .dropdown-menu -->
                </li><!--end .dropdown -->
            </ul><!--end .nav -->
        </div><!--end #header-navbar-collapse -->
    </nav>
    <!-- END NAVBAR -->

</header>
<!-- END HEADER-->

<!-- BEGIN BASE-->
<div id="base">

<!-- BEGIN SIDEBAR-->
<div id="sidebar">
    <div class="sidebar-back"></div>
    <div class="sidebar-content">
        <div class="nav-brand">
            <a class="main-brand" href="../../html/dashboards/dashboard.html">
                <h3 class="text-light text-white"><span>Boost<strong>Box</strong> </span><i class="fa fa-rocket fa-fw"></i></h3>
            </a>
        </div>

        <!-- BEGIN MENU SEARCH -->
        <form class="sidebar-search" role="search">
            <a href="javascript:void(0);"><i class="fa fa-search fa-fw search-icon"></i><i class="fa fa-angle-left fa-fw close-icon"></i></a>
            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control navbar-input" placeholder="Search...">
								<span class="input-group-btn">
									<button class="btn btn-equal" type="button"><i class="fa fa-search"></i></button>
								</span>
                </div>
            </div>
        </form>
        <!-- END MENU SEARCH -->

        <!-- BEGIN MAIN MENU -->
        <ul class="main-menu">
            <!-- Menu Dashboard -->
            <li>
                <a href="../../html/dashboards/dashboard.html" >
                    <i class="fa fa-home fa-fw"></i><span class="title">Dashboard</span>
                </a>
            </li><!--end /menu-item -->
            <!-- Menu UI -->
            <li>
                <a href="javascript:void(0);">
                    <i class="fa fa-puzzle-piece fa-fw"></i><span class="title">UI features</span> <span class="expand-sign">+</span>
                </a>
                <!--start submenu -->
                <ul>
                    <li><a href="../../html/ui/boxes.html" >Boxes</a></li>
                    <li><a href="../../html/ui/buttons.html" >Buttons</a></li>
                    <li><a href="../../html/ui/grid.html" >Grid</a></li>
                    <li><a href="../../html/ui/lists.html" >Lists</a></li>
                    <li><a href="../../html/ui/tabs-accordions.html" >Tabs & Accordions</a></li>
                    <li><a href="../../html/ui/typography.html" >Typography</a></li>
                    <li><a href="../../html/ui/icons.html" >Icons</a></li>
                    <li><a href="../../html/ui/messages.html" >Messages</a></li>
                </ul><!--end /submenu -->
            </li><!--end /menu-item -->
            <!-- Menu Pages -->
            <li>
                <a href="javascript:void(0);">
                    <i class="fa fa-file fa-fw"></i><span class="title">Pages</span> <span class="expand-sign">+</span>
                </a>
                <!--start submenu -->
                <ul>
                    <li><a href="../../html/pages/profile.html" >User profile<span class="badge">42</span></a></li>
                    <li><a href="../../html/pages/invoice.html" >Invoice</a></li>
                    <li><a href="../../html/pages/calendar.html" >Calendar</a></li>
                    <li><a href="../../html/pages/pricing.html" >Pricing</a></li>
                    <li>
                        <a href="javascript:void(0);">
                            <span class="expand-sign">+</span> <span class="title">Blog</span>
                        </a>
                        <!--start submenu -->
                        <ul>
                            <li><a href="../../html/pages/blog/masonry.html" >Blog masonry</a></li>
                            <li><a href="../../html/pages/blog/list.html" >Blog list</a></li>
                            <li><a href="../../html/pages/blog/post.html" >Blog post</a></li>
                        </ul><!--end /submenu -->
                    </li><!--end /menu-item -->
                    <li><a href="../../html/pages/locked.html" >Lock screen</a></li>
                    <li><a href="../../html/pages/login.html" >Login</a></li>
                    <li>
                        <a href="javascript:void(0);">
                            <span class="expand-sign">+</span> <span class="title">Error pages</span>
                        </a>
                        <!--start submenu -->
                        <ul>
                            <li><a href="../../html/pages/404.html" >404 page</a></li>
                            <li><a href="../../html/pages/500.html" >500 page</a></li>
                        </ul><!--end /submenu -->
                    </li><!--end /menu-item -->
                    <li><a href="../../html/pages/blank.html" >Blank page</a></li>
                </ul><!--end /submenu -->
            </li><!--end /menu-item -->
            <!-- Menu Tables -->
            <li>
                <a href="javascript:void(0);">
                    <i class="fa fa-th fa-fw"></i><span class="title">Tables</span> <span class="expand-sign">+</span>
                </a>
                <!--start submenu -->
                <ul>
                    <li><a href="../../html/tables/static.html" >Static Tables</a></li>
                    <li><a href="../../html/tables/dynamic.html" >Dynamic Tables</a></li>
                    <li><a href="../../html/tables/responsive.html" >Responsive Table</a></li>
                </ul><!--end /submenu -->
            </li><!--end /menu-item -->
            <!-- Menu Forms -->
            <li>
                <a href="javascript:void(0);">
                    <i class="fa fa-list fa-fw"></i><span class="title">Forms</span> <span class="expand-sign">+</span>
                </a>
                <!--start submenu -->
                <ul>
                    <li><a href="../../html/forms/layouts.html" >Form layouts</a></li>
                    <li><a href="../../html/forms/components.html" class="active">Form components</a></li>
                    <li><a href="../../html/forms/editors.html" >Editors</a></li>
                    <li><a href="../../html/forms/fileupload.html" >File upload</a></li>
                    <li><a href="../../html/forms/validation.html" >Form validation</a></li>
                    <li><a href="../../html/forms/wizard.html" >Form wizard</a></li>
                </ul><!--end /submenu -->
            </li><!--end /menu-item -->
            <!-- Menu Charts -->
            <li>
                <a href="../../html/charts/chart.html" >
                    <i class="fa fa-bar-chart-o fa-fw"></i><span class="title">Visual charts</span>
                </a>
            </li><!--end /menu-item -->
            <!-- Menu Levels -->
            <li>
                <a href="javascript:void(0);">
                    <i class="fa fa-folder-open fa-fw"></i><span class="title">Menu levels</span> <span class="expand-sign">+</span>
                </a>
                <!--start submenu -->
                <ul>
                    <li><a href="#"><span class="title">Item 1</span></a></li>
                    <li><a href="#"><span class="title">Item 1</span></a></li>
                    <li>
                        <a href="javascript:void(0);">
                            <span class="expand-sign">+</span> <span class="title">Open level 2</span>
                        </a>
                        <!--start submenu -->
                        <ul>
                            <li><a href="#"><span class="title">Item 2</span></a></li>
                            <li>
                                <a href="javascript:void(0);">
                                    <span class="expand-sign">+</span> <span class="title">Open level 3</span>
                                </a>
                                <!--start submenu -->
                                <ul>
                                    <li><a href="#"><span class="title">Item 3</span></a></li>
                                    <li><a href="#"><span class="title">Item 3</span></a></li>
                                    <li>
                                        <a href="javascript:void(0);">
                                            <span class="expand-sign">+</span> <span class="title">Open level 4</span>
                                        </a>
                                        <!--start submenu -->
                                        <ul>
                                            <li><a href="#"><span class="title">Item 4</span></a></li>
                                            <li>
                                                <a href="javascript:void(0);">
                                                    <span class="expand-sign">+</span> <span class="title">Open level 5</span>
                                                </a>
                                                <!--start submenu -->
                                                <ul>
                                                    <li><a href="#"><span class="title">Item 5</span></a></li>
                                                    <li><a href="#"><span class="title">Item 5</span></a></li>
                                                </ul><!--end /submenu -->
                                            </li><!--end /submenu-item -->
                                        </ul><!--end /submenu -->
                                    </li><!--end /submenu-item -->
                                </ul><!--end /submenu -->
                            </li><!--end /submenu-item -->
                        </ul><!--end /submenu -->
                    </li><!--end /submenu-item -->
                </ul><!--end /submenu -->
            </li><!--end /menu-item -->
        </ul><!--end .main-menu -->
        <!-- END MAIN MENU -->

    </div>
</div><!--end #sidebar-->
<!-- END SIDEBAR -->

<!-- BEGIN CONTENT-->
<div id="content">
    <decorator:body />
</div><!--end #content-->
<!-- END CONTENT -->

</div><!--end #base-->
<!-- END BASE -->

<!-- BEGIN JAVASCRIPT -->
<script src="/resources/expert/js/libs/jquery/jquery-1.11.0.min.js"></script>
<script src="/resources/expert/js/libs/jquery/jquery-migrate-1.2.1.min.js"></script>
<script src="/resources/expert/js/libs/jquery-ui/jquery-ui-1.10.3.custom.min.js"></script>
<script src="/resources/expert/js/core/BootstrapFixed.js"></script>
<script src="/resources/expert/js/libs/bootstrap/bootstrap.min.js"></script>
<script src="/resources/expert/js/libs/spin.js/spin.min.js"></script>
<script src="/resources/expert/js/libs/select2/select2.min.js"></script>
<script src="/resources/expert/js/libs/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
<script src="/resources/expert/js/libs/multi-select/jquery.multi-select.js"></script>
<script src="/resources/expert/js/libs/inputmask/jquery.inputmask.bundle.min.js"></script>
<script src="/resources/expert/js/libs/moment/moment.min.js"></script>
<script src="/resources/expert/js/libs/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="/resources/expert/js/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="/resources/expert/js/libs/typeahead/typeahead.min.js"></script>
<script src="/resources/expert/js/libs/slimscroll/jquery.slimscroll.min.js"></script>
<script src="/resources/expert/js/core/demo/DemoFormComponents.js"></script>
<script src="/resources/expert/js/core/App.js"></script>
<script src="/resources/expert/js/core/demo/Demo.js"></script>
<!-- END JAVASCRIPT -->

</body>
</html>