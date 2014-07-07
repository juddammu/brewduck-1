<%--
  Created by IntelliJ IDEA.
  User: ChaJunYoung
  Date: 14. 7. 7
  Time: 오후 1:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:forEach items="${list}" var="list">
    <tr>
        <ul class="latest-posts">
            <li class="text-left text">
                <img class="image img-circle" src="http://template.progressive.itembridge.com/2.1.8/img/content/product-1.png" alt="" title="" width="84" height="84" data-appear-animation="rotateIn">
                <div class="meta">
                    <span>${list.insertId}</span>,
                    <span class="time">${list.insertDate}</span>
                </div>
                <div class="description" style="height: 100px">
                    <a href="/board/detail/${list.nttId}">
                            ${list.nttCn}
                    </a>
                </div>
            </li>
        </ul>
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
