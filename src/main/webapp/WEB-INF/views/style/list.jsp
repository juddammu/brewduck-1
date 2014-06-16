<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:forEach items="${list}" var="list">
    <tr onclick="goDetail('${list.seq}', '${list.titleInUrl}');">
        <td>
        </td>
        <td > ${list.koreanName}</td>
        <td> ${list.name}</td>
        <td>
             ${list.ogMax}
        </td>
        <td>
             ${list.fgMax}
        </td>
        <td>
             ${list.ibuMax}
        </td>
        <td>
             ${list.colorMax} °L
        </td>
        <td>
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