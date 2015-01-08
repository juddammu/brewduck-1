<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.1
Version: 3.2.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>Metronic | Coming Soon</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css">
    <link href="/resources/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="/resources/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
    <link href="/resources/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/resources/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="/resources/assets/admin/pages/css/coming-soon.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="/resources/assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css">
    <link href="/resources/assets/global/css/plugins.css" rel="stylesheet" type="text/css">
    <link href="/resources/assets/admin/layout3/css/layout.css" rel="stylesheet" type="text/css">
    <link href="/resources/assets/admin/layout3/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color">
    <link href="/resources/assets/admin/layout3/css/custom.css" rel="stylesheet" type="text/css">
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12 coming-soon-header">
            <a class="brand" href="index.html">
                <!--img src="/resources/assets/admin/layout3/img/logo-big.png" alt="logo"/-->
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 coming-soon-content">
            <h1>Coming Soon</h1>
            <p>
                클로즈베타테스트에 참여해주셔서 감사드립니다.    </br>         </br>

                오픈베타테스트까지 조금만 기다려주세요!
            </p>
            <br>
            <!--form class="form-inline" action="javascript:;">
                <div class="input-group input-large">
                    <input type="text" class="form-control">
					<span class="input-group-btn">
					<button class="btn blue" type="button">
					<!--span>
					Subscribe </span>
                        <i class="m-icon-swapright m-icon-white"></i></button>
					</span>
                </div>
            </form-->
            <ul class="social-icons margin-top-20">
                <li>
                    <a href="www.facebook.com/brewduck" data-original-title="Facebook" class="facebook">
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-md-6 coming-soon-countdown">
            <div id="defaultCountdown">
            </div>
        </div>
    </div>
    <!--/end row-->
    <div class="row">
        <div class="col-md-12 coming-soon-footer">
            2014 &copy; Brewduck. Open Project Team
        </div>
    </div>
</div>
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="/resources/assets/global/plugins/respond.min.js"></script>
<script src="/resources/assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="/resources/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="/resources/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="/resources/assets/global/plugins/countdown/jquery.countdown.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="/resources/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="/resources/assets/admin/layout3/scripts/layout.js" type="text/javascript"></script>
<script src="/resources/assets/admin/layout3/scripts/demo.js" type="text/javascript"></script>
<script src="/resources/assets/admin/pages/scripts/coming-soon.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function() {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Demo.init(); // init demo features
        ComingSoon.init();
        // init background slide images
        $.backstretch([
            "/resources/assets/admin/pages/media/bg/1.jpg",
            "/resources/assets/admin/pages/media/bg/2.jpg",
            "/resources/assets/admin/pages/media/bg/3.jpg",
            "/resources/assets/admin/pages/media/bg/4.jpg"
        ], {
            fade: 1000,
            duration: 10000
        });
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>