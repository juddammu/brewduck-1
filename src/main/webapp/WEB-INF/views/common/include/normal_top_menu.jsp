<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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