<%--
  Created by IntelliJ IDEA.
  User: ChaJunYoung
  Date: 14. 5. 28
  Time: 오전 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:forEach items="${list}" var="list">
    <article>
        <div class="tm-content-inner">
            <div class="entry-thumbnail">
                <a href="#">
                    <img src="http://placehold.it/150x150" alt="Thumb">
                </a>
            </div>
            <div class="entry-container">
                <div class="time">${list.insertDate}</div>
                <h3>
                    <a href="/board/detail/${list.nttId}">${list.nttSj}<label class="text-danger">
                        ( ${list.rdcnt} )</label></a>
                </h3>

                <div class="meta">
                    by
                    <a href="/list/recipe/${list.boardId}/${list.insertId}"
                       class="author">${list.insertId}</a>
                    <a class="tm-icon-comment" href="#">${list.countNum}</a>
                </div>
                <div>
                        ${list.nttCnSub}...<a class="more-link" href="/board/detail/${list.nttId}">Read
                    more</a>
                </div>
            </div>
        </div>
    </article>
</c:forEach>

<content tag="local_script">
    <script>

        $(document).ready(function () {
            var selectedItems = 0;
        });
    </script>
</content>
