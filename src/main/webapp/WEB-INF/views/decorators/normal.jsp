<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<!--[if IE 8]> <html class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html class="no-js">
<!--<![endif]-->
<!-- 헤드 시작 -->
<head>
    <meta charset="utf-8">
    <title><decorator:title/> | BREWDUCK</title>
    <%@ include file="/WEB-INF/views/common/include/normal_header.jsp" %>
</head>
<!-- 헤드 끝 -->

<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body class="page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo page-header-fixed-mobile page-footer-fixed1 page-header-menu-fixed">
<div id="spot-im-root"></div>
<div id="spot-im-root"></div>
<script type="text/javascript">!function (t, o, p) {
    function e() {
        var t = o.createElement("script");
        t.type = "text/javascript", t.async = !0, t.src = ("https:" == o.location.protocol ? "https" : "http") + ":" + p, o.body.appendChild(t)
    }

    t.spotId = "b19bb651adaa4d34941f348fd8329ff1", t.spotName = "", t.allowDesktop = !0, t.allowMobile = !1, t.containerId = "spot-im-root", e()
}(window.SPOTIM = {}, document, "//www.spot.im/embed/scripts/launcher.js");</script>
<!-- BEGIN HEADER -->
<%@ include file="/WEB-INF/views/common/include/normal_top_menu.jsp" %>

<!-- END HEADER -->
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
    <!-- BEGIN PAGE HEAD -->
    <decorator:body/>
    <!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->
<!-- BEGIN PRE-FOOTER -->
<%@ include file="/WEB-INF/views/common/include/normal_footer.jsp" %>


<div class="scroll-to-top">
    <i class="icon-arrow-up"></i>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS (Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="/resources/assets/global/plugins/respond.min.js"></script>
<script src="/resources/assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="/resources/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jquery-migrate.min.js"
        type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="/resources/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"
        type="text/javascript"></script>
<script src="/resources/assets/global/plugins/bootstrap/js/bootstrap.min.js"
        type="text/javascript"></script>
<script src="/resources/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
        type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jquery.blockui.min.js"
        type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/uniform/jquery.uniform.min.js"
        type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="/resources/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js"
        type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js"
        type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js"
        type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js"
        type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js"
        type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js"
        type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"
        type="text/javascript"></script>
<!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js for drag & drop support -->
<script src="/resources/assets/global/plugins/morris/morris.min.js" type="text/javascript"></script>
<script src="/resources/assets/global/plugins/morris/raphael-min.js"
        type="text/javascript"></script>
<script src="/resources/assets/global/plugins/jquery.sparkline.min.js"
        type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="/resources/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="/resources/assets/admin/layout3/scripts/layout.js" type="text/javascript"></script>
<script src="/resources/assets/admin/layout3/scripts/demo.js" type="text/javascript"></script>
<script src="/resources/assets/admin/pages/scripts/index3.js" type="text/javascript"></script>
<script src="/resources/assets/admin/pages/scripts/tasks.js" type="text/javascript"></script>

<script type="text/javascript" src="/resources/assets/global/plugins/select2/select2.min.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function () {
        Metronic.init(); // init metronic core componets
        Layout.init(); // init layout
        Demo.init(); // init demo(theme settings page)
        // Index.init(); // init index page
        Tasks.initDashboardWidget(); // init tash dashboard widget
    });
</script>
<decorator:getProperty property="page.local_script"></decorator:getProperty>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
