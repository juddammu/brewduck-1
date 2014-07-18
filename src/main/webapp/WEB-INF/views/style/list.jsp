<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:forEach items="${list}" var="list">
    <tr onclick="goDetail('${list.seq}', '${list.titleInUrl}');">
        <td>${list.categoryNumber}${list.styleLetter}</td>
        <td> ${list.koreanName}</td>
        <td class="hidden"> ${list.name}</td>
        <td class="hidden">
             <span class="badge">${list.ogMax}</span>
        </td>
        <td class="hidden">
            <span class="badge">${list.fgMax}</span>
        </td>
        <td class="hidden">
            <span class="badge">${list.ogMax}</span>
        </td>
        <td>
             ${list.colorMax} °L
        </td>
        <td class="hidden">
            ${list.abvMax} %
        </td>
    </tr>
</c:forEach>

<content tag="local_script">
    <script>
        $(document).ready(function() {
            var selectedItems=0;
            //Table Row Click Event

        });
    </script>
</content>