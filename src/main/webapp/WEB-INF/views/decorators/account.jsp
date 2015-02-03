<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<!--[if IE 8]> <html class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title><decorator:title/> | BREWDUCK</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="/resources/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="/resources/assets/global/plugins/select2/select2.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/admin/pages/css/login-soft.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL SCRIPTS -->
    <!-- BEGIN THEME STYLES -->
    <link href="/resources/assets/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
    <link id="style_color" href="/resources/assets/admin/layout/css/themes/default.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
<!-- BEGIN LOGO -->
<div class="logo">
    <a href="/">
        <img src="/resources/assets/admin/layout3/img/logo-default.png" alt="logo" class="logo-default">

    </a>
</div>
<!-- END LOGO -->
<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
<div class="menu-toggler sidebar-toggler">
</div>
<!-- END SIDEBAR TOGGLER BUTTON -->
<!-- BEGIN LOGIN -->
<div class="content">
    <decorator:body/>
    <!-- END REGISTRATION FORM -->
</div>
<!-- END LOGIN -->
<!-- BEGIN COPYRIGHT -->
<div class="copyright">
    2014 &copy; Brewduck. Open Project Team
</div>
<!-- END COPYRIGHT -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="/resources/assets/global/plugins/respond.min.js"></script>
<script src="/resources/assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="/resources/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="/resources/assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/resources/assets/global/plugins/select2/select2.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="/resources/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="/resources/assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="/resources/assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="/resources/assets/admin/pages/scripts/login-soft.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function() {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Login.init();
        Demo.init();
        // init background slide images
        $.backstretch([
            "/resources/assets/admin/pages/media/bg/1.jpg",
            "/resources/assets/admin/pages/media/bg/2.jpg",
            "/resources/assets/admin/pages/media/bg/3.jpg",
            "/resources/assets/admin/pages/media/bg/4.jpg"
        ], {
                    fade: 1000,
                    duration: 8000
                }
        );
    });
</script>
<decorator:getProperty property="page.local_script"></decorator:getProperty>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
