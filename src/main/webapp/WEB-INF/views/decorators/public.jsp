<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
    <title><decorator:title /> | BREWDUCK - 맥주의 모든것</title>
    <%@ include file="/WEB-INF/views/common/include/home_header.jsp" %>
</head>




<body>
<header>
    <%@ include file="/WEB-INF/views/common/include/home_top_menu.jsp" %>
<!--tm-header-nav-->
</header>

<decorator:body />
<!--tm-page-body-->
<!--tm-page-page-footer-->
<footer>
    <div class="tm-wrap tm-table">
        <div class="copyright">
            <p>© Copyright - 브루덕 오픈프로젝트 팀</p>
        </div>
        <div class="tm-social-icons">
            <a class="tm-icon-facebook" href="www.facebook.com/brewduck">
                <i class="fa fa-facebook"></i>
            </a>
        </div>
    </div>
</footer>

<div id="loginmodal" style="display:none;">
    <div class="header-line-bottom">
        <h3 class="tm-title">User Login</h3>
    </div>
    <form id="loginform" name="loginform" method="post">
        <p>
            <label for="user_login">Username<br>
                <input type="text" size="20" value="" class="input" id="user_login" name="log"></label>
        </p>
        <p>
            <label for="user_pass">Password<br>
                <input type="password" size="20" value="" class="input" id="user_pass" name="pwd"></label>
        </p>

        <p class="submit">
            <input type="submit" value="Log In" class="tm-btn hidemodal" id="wp-submit" name="wp-submit">
        </p>
    </form>
</div>

<!-- Go to top -->
<a href="#" id="tm-gotop">
    <i class="fa fa-chevron-up"></i>
</a>

<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-core.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-ui.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-tinynav.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-isotope.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-flexslider.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-countdown.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-masonry.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-leanModal.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-validate.js"></script>
<script type="text/javascript" src="/resources/front/3rd/pretty-photo/pretty-photo.js"></script>
<script type="text/javascript" src="/resources/front/3rd/layerslider/js/greensock.js"></script>
<script type="text/javascript" src="/resources/front/3rd/layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
<script type="text/javascript" src="/resources/front/3rd/layerslider/js/layerslider.transitions.js"></script>
<script type="text/javascript" src="/resources/front/js/theme.js"></script>
</body>
</html>