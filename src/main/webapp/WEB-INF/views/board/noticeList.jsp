<%--
  Created by IntelliJ IDEA.
  User: ChaJunYoung
  Date: 14. 7. 10
  Time: 오전 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:forEach items="${noticeList}" var="noticeList">
    <tr onclick="goDetail('${noticeList.nttId}');">
        <td>${noticeList.nttId}</td>
        <td class="text-left"><a onclick="goDetail('${noticeList.nttId}');">${noticeList.nttSj}</a></td>
        <td>${noticeList.insertId}</td>
        <td>${noticeList.insertDate}</td>
        <td>${noticeList.rdcnt}</td>
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
