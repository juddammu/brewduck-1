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
<tr>
    <div id="tm-blog" class="tm-container tm-wrap tm-blog-style-magazine1">
    <div class="page-content">
    <div class="entry-content">
    <div class="tm-content page-content-inner">
    <div class="tm-main-content">
    <div class="tm-main-content-inner">
    <article>
        <div class="tm-content-inner">
            <div class="entry-thumbnail">
                <a href="single-blog.html">
                    <img src="http://placehold.it/150x150" alt="Thumb">
                </a>
            </div>
            <div class="entry-container">
                <div class="time">${list.insertDate}</div>
                <h3>
                    <a href="/board/detail/${list.nttId}">${list.nttSj}</a>
                </h3>
                <div class="meta">
                    by
                    <a href="#" class="author">${list.insertId}</a>
                    <a class="tm-icon-comment" href="single-blog.html#tm-comment">${list.rdcnt}</a>
                </div>
                <p>
                    ${list.nttCnSub}...
                    <a class="more-link" href="/board/detail/${list.nttId}">Read more</a>
                </p>
            </div>
        </div>
    </article>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
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
