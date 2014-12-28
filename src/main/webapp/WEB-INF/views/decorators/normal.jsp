<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <title><decorator:title /> | BREWDUCK - 맥주의 모든것</title>
    <!-- head 태그 설정 -->
    <%@ include file="/WEB-INF/views/common/include/normal_header.jsp" %>
</head>
<body class="page-body">

<!-- 상단 패널 설정 -->
<%@ include file="/WEB-INF/views/common/include/normal_header_panel.jsp" %>
<!-- 상단 메뉴 -->
<%@ include file="/WEB-INF/views/common/include/normal_top_menu.jsp" %>


<div class="page-container"><!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->

    <div class="main-content">
        <decorator:body />
    </div>

</div>





<!-- Bottom Scripts -->
<script src="/resources/commons/js/bootstrap.min.js"></script>
<script src="/resources/commons/js/TweenMax.min.js"></script>
<script src="/resources/commons/js/resizeable.js"></script>
<script src="/resources/commons/js/joinable.js"></script>
<script src="/resources/commons/js/xenon-api.js"></script>
<script src="/resources/commons/js/xenon-toggles.js"></script>


<!-- JavaScripts initializations and stuff -->
<script src="/resources/commons/js/xenon-custom.js"></script>
<decorator:getProperty property="page.local_script"></decorator:getProperty>

</body>
</html>