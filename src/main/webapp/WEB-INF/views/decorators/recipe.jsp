<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title><decorator:title /> | BREWDUCK</title>
    <%@ include file="/WEB-INF/views/common/include/expert_header.jsp" %>
</head>

<body role="document">

<div id="preloader">
    <div id="status">&nbsp;</div>
</div>

<!-- TOPNAV -->
<%@ include file="/WEB-INF/views/common/include/expert_top_nav.jsp" %>
<!-- END OF TOPNAV -->
<!-- Comtainer -->
<div class="container-fluid paper-wrap bevel tlbr">
<%@ include file="/WEB-INF/views/common/include/expert_top_menu.jsp" %>


<!-- SIDE MENU -->
<div class="wrap-sidebar-content">
<div id="skin-select">
<a id="toggle">
    <span class="fa icon-menu"></span>
</a>

<div class="skin-part">
    <%@ include file="/WEB-INF/views/common/include/expert_left_menu.jsp" %>
</div>
</div>
<!-- #/skin-select -->
<!-- END OF SIDE MENU -->

<!-- Breadcrumb -->
<div class="sub-board">
                <span class="header-icon"><i class="fontello-home"></i>
                </span>
    <ol class="breadcrumb newcrumb ng-scope">
        <li>
            <a href="#">
                            <span>
                            </span>Table</a>
        </li>
        <li><a href="#">Table Dynamic</a>
        </li>
    </ol>
    <div class="dark" style="visibility: visible;">
        <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
                <input type="text" class="form-control search rounded id_search" placeholder="Search">
            </div>
        </form>
    </div>
</div>
<!-- End of Breadcrumb -->






<!-- CONTENT -->
<div class="wrap-fluid" id="paper-bg">

    <decorator:body />

</div>
    <!-- #/paper bg -->
</div>
    <!-- ./wrap-sidebar-content -->

    <!-- / END OF CONTENT -->







<!-- FOOTER -->
<div id="footer">
    <div class="devider-footer-left"></div>
    <div class="time">
        <p id="spanDate"></p>
        <p id="clock"></p>
    </div>
    <div class="copyright">Copyright &copy; 2014 <a href="http://ndesaintheme.com/">Themesmile</a> Made with <i class="fontello-heart-filled text-red"></i>
    </div>
    <div class="devider-footer"></div>
    <ul>
        <li><i class="fa fa-facebook-square"></i>
        </li>
        <li><i class="fa fa-twitter-square"></i>
        </li>
        <li><i class="fa fa-instagram"></i>
        </li>
    </ul>
</div>
<!-- / FOOTER -->
</div>
<!-- Container -->



<!--
================================================== -->
<!-- Main jQuery Plugins -->
<script type='text/javascript' src="/resources/brewing/js/jquery.js"></script>

<script type='text/javascript' src='/resources/brewing/js/bootstrap.js'></script>
<script type='text/javascript' src='/resources/brewing/js/date.js'></script>
<script type='text/javascript' src='/resources/brewing/js/slimscroll/jquery.slimscroll.js'></script>
<script type='text/javascript' src='/resources/brewing/js/jquery.nicescroll.min.js'></script>
<script type='text/javascript' src='/resources/brewing/js/sliding-menu.js'></script>
<script type='text/javascript' src='/resources/brewing/js/scriptbreaker-multiple-accordion-1.js'></script>
<script type='text/javascript' src='/resources/brewing/js/tip/jquery.tooltipster.min.js'></script>
<script type='text/javascript' src="/resources/brewing/js/donut-chart/jquery.drawDoughnutChart.js"></script>
<script type='text/javascript' src="/resources/brewing/js/tab/jquery.newsTicker.js"></script>
<script type='text/javascript' src="/resources/brewing/js/tab/app.ticker.js"></script>
<script type='text/javascript' src='/resources/brewing/js/app.js'></script>


<script type='text/javascript' src='/resources/brewing/js/vegas/jquery.vegas.js'></script>
<script type='text/javascript' src='/resources/brewing/js/image-background.js'></script>
<script type="text/javascript" src="/resources/brewing/js/jquery.tabSlideOut.v1.3.js"></script>
<script type="text/javascript" src="/resources/brewing/js/bg-changer.js"></script>

<script src="/resources/brewing/js/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="/resources/brewing/js/datatables/dataTables.bootstrap.js" type="text/javascript"></script>

<script src="/resources/brewing/js/footable/js/footable.js?v=2-0-1" type="text/javascript"></script>
<script src="/resources/brewing/js/footable/js/footable.sort.js?v=2-0-1" type="text/javascript"></script>
<script src="/resources/brewing/js/footable/js/footable.filter.js?v=2-0-1" type="text/javascript"></script>
<script src="/resources/brewing/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>
<script src="/resources/brewing/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>

<script type="text/javascript" src="/resources/brewing/select2/select2.js"></script>


<!-- page script -->
<decorator:getProperty property="page.local_script"></decorator:getProperty>


</body>

</html>
