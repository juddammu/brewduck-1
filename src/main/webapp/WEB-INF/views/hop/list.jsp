<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:forEach items="${list}" var="list">
    <tr onclick="goDetail('${list.seq}', '${list.titleInUrl}');">
        <td>${list.seq}</td>
        <td> ${list.koreanName}</td>
        <td> ${list.name}</td>
        <td> ${list.typeKorean}</td>
        <td> ${list.originKorean}</td>
        <td>
            <button type="button" class="btn btn-primary btn-sm">${list.alpha} %</button>
        </td>
        <td>
            <button type="button" class="btn btn-primary btn-sm">${list.beta} %</button>
        </td>
        <td>
            <button type="button" class="btn btn-primary btn-sm">${list.hsi} %</button>
        </td>
    </tr>
</c:forEach>

<content tag="local_script">
    <script>
        $(document).ready(function () {
            var selectedItems = 0;
            //Table Row Click Event

        });
    </script>
</content>
