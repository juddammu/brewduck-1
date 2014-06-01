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

<c:forEach items="${list}" var="list">
        <tr onclick="goDetail('${list.nttId}');">
            <td  class="small-cell v-align-middle">${list.nttId}</td>
            <td  class="clickable v-align-middle">${list.nttSj}</td>
            <td  class="clickable v-align-middle">${list.insertId}</td>
            <td  class="clickable v-align-middle">${list.insertDate}</td>
            <td class="v-align-middle">
                <button type="button" class="btn btn-danger btn-sm btn-small">10</button>
            </td>
        </tr>
</c:forEach>

<content tag="local_script">
    <script>
        $(document).ready(function() {
            var selectedItems=0;
            //Table Row Click Event
            /*            $('.clickable').click( function() {
             alert();
             });*/
        });
    </script>
</content>
