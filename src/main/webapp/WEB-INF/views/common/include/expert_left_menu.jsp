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
                    <i class="fa fa-puzzle-piece fa-fw"></i><span class="title">재료 데이터베이스</span> <span class="expand-sign">+</span>
                </a>
                <!--start submenu -->
                <ul>
                    <li><a href="/style" >스타일 (BJCP STYLE)</a></li>
                    <li><a href="#" >발효재료 (Fermentable)</a></li>
                    <li><a href="#" >홉 (Hop) <span class="item-new">Hot</span></a></li>
                    <li><a href="#" >효모 (Yeast)</a></li>
                    <li><a href="#" >기타재료</a></li>
                </ul><!--end /submenu -->
            </li><!--end /menu-item -->
            <!-- Menu Levels -->
        </ul><!--end .main-menu -->
        <!-- END MAIN MENU -->

    </div>
</div><!--end #sidebar-->