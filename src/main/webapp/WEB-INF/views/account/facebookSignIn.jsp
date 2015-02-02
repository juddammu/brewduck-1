<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="oauthUrl" value="${oauthUrl}"></c:set>


<title>facebook 로그인 하기 Sample</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript">
    <c:if test="${!empty oauthUrl and empty sessionScope.ACCESS_TOKEN}">
    window.open('${oauthUrl}', "facebookLogin", "width=1000, height=500, scrollbars=yes, resizable=yes");
    </c:if>
</script>
