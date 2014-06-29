<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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