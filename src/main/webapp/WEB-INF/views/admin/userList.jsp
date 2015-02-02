<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:forEach items="${list}" var="list">
    <tr onclick="">
        <td>${list.id}</td>
        <td>${list.name}</td>
        <td>${list.email}</td>
        <td>${list.authority}</td>
        <td>${list.activation}</td>
        <td>${list.insertDate}</td>
    </tr>
</c:forEach>

<content tag="local_script">
    <script>
        $(document).ready(function () {
            var selectedItems = 0;
        });

    </script>
</content>
