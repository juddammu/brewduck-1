<%--
  Created by IntelliJ IDEA.
  User: ChaJunYoung
  Date: 14. 5. 28
  Time: 오전 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:forEach items="${categoryList}" var="list">
    <tr>
        <td>${list.seq}<!--span class="label label-success">공개</span--></td>
        <td><a href="/recipe/detail/${list.seq}/${list.name}">${list.name}</a></td>
        <td>${list.styleName}</td>
        <td>${list.batchSize}리터</td>
        <td>
            <c:choose>
                <c:when test="${list.completeness=='0'}">
                    <div class="progress no-margin"><div class="progress-bar progress-bar-danger" style="width: 25%"></div></div>
                </c:when>
                <c:when test="${list.completeness=='1'}">
                    <div class="progress no-margin"><div class="progress-bar progress-bar-warning" style="width: 50%"></div></div>
                </c:when>
                <c:when test="${list.completeness=='2'}">
                    <div class="progress no-margin"><div class="progress-bar progress-bar-success" style="width: 75%"></div></div>
                </c:when>
                <c:when test="${list.completeness=='3'}">
                    <div class="progress no-margin"><div class="progress-bar progress-bar-info" style="width: 100%"></div></div>
                </c:when>
                <c:otherwise>
                    -
                </c:otherwise>
            </c:choose>
        </td>
    </tr>
</c:forEach>

<content tag="local_script">
    <script>
        $(document).ready(function() {
            var selectedItems=0;

        });
    </script>
</content>
