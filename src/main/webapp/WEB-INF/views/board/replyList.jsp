<%--
  Created by IntelliJ IDEA.
  User: ChaJunYoung
  Date: 14. 7. 9
  Time: 오후 6:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.brewduck.web.domain.Board" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:useBean id="boardController" class="com.brewduck.web.common.controller.BoardController" scope="session" />
<%
    Board board = new Board();
    Integer bbsId = Integer.parseInt(request.getParameter("bbsId"));
    Integer nttId = Integer.parseInt(request.getParameter("nttId"));
    pageContext.setAttribute("replyList",boardController.replyList(board, bbsId, nttId));
%>

    <c:forEach items="${replyList}" var="replyList">
        <tr>
            <ul class="latest-posts">
                <li class="text-left text">
                    <img class="image img-circle" src="http://template.progressive.itembridge.com/2.1.8/img/content/product-1.png" alt="" title="" width="84" height="84" data-appear-animation="rotateIn">
                    <div class="meta">
                        <span>${replyList.insertId}</span>,
                        <span class="time">${replyList.insertDate}</span>
                    </div>
                    <div class="description" style="height: auto;">
                        <h8>${replyList.answer}</h8>
                    </div>
                </li>
            </ul>
        </tr>
    </c:forEach>
<content tag="local_script">
    <script>
        $(document).ready(function() {
            alert("List:!!!!!!!!!!!!!!!!!!!!!!!!!!!");
            var selectedItems=0;

            $("a").click(function(){
                var url = $(this).attr("url");
                if(url == null) return;
                $.post(url,null,refresh);
            });
        });
    </script>
</content>
