<%--
  Created by IntelliJ IDEA.
  User: ChaJunYoung
  Date: 14. 6. 23
  Time: 오전 1:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ page import="com.brewduck.web.domain.Account" %>
<%@ page import="com.brewduck.web.domain.Board" %>

<title>${BoardDetail.bbsNm} - ${BoardDetail.bbsEnNm}</title>

<div id="tm-page-title">
    <div class="tm-wrap tm-table">
        <div class="tm-title-captions">
            <a href="/board/detail/${BoardDetail.nttId}"><h2 class="tm-entry-title">${BoardDetail.nttSj}</h2></a>
        </div>
        <ul class="tm-breadcrumbs">
            <li>
                <a href="/">홈</a>
            </li>
            <li>
                <a href="/board/main/${BoardDetail.bbsId}">${BoardDetail.bbsNm}</a>
            </li>
            <li>
                <a href="#">게시물</a>
            </li>
        </ul>
    </div>
</div>
<div id="tm-page-body">
    <div id="tm-single-blog" class="tm-container tm-wrap tm-sidebar-right">
        <div class="page-content">
            <div class="page-content-inner">
                <!--entry-thumb-->
                <div class="entry-header">
                    <a href="/board/detail/${BoardDetail.nttId}" ><h2>${BoardDetail.nttSj}</h2></a>
                    <div class="meta">
                        Post by
                        <a href="/list/recipe/${BoardDetail.boardId}/${BoardDetail.insertId}" ><span>${BoardDetail.insertId} </span></a>
                        in
                        <a href="/board/main/${BoardDetail.bbsId}"><span>${BoardDetail.bbsNm}</span></a>
                    </div>
                    <div class="time">
                        <h6><span class="meta">${BoardDetail.insertDate}  |  읽음 : ${BoardDetail.rdcnt} </span></h6>
                    </div>
                </div>
                <!--entry-header-->
                <div class="entry-container">
                    <div class="entry-content">
                        <hr>
                        <p>
                            ${BoardDetail.nttCn}
                        </p>
                        <p>
                            <div>
                                <strong>첨부파일</strong>
                            </div>
                            <div>
                                <input type="file" id="exampleInputFile">
                            </div>
                        </p>
                    </div>
                    <section class="about-author">
                        <h3 class="tm-title">작성자 :
                            <a href="/list/recipe/${BoardDetail.boardId}/${BoardDetail.insertId}">${BoardDetail.insertId}</a> 님
                        </h3>
                        <div class="about-author-conteainer">
                            <div class="avatar">
                                <img alt="img" src="http://placehold.it/60x60">
                            </div>
                            <div class="description">
                                <p>
                                    클론레시피 전문... lol
                                </p>
                            </div>
                        </div>
                    </section>
                    <p>
                        <div class="form-group">
                            <div class="col-md-12 form-actions">
                                <div class="pull-right">
                                    <%
                                        Object regiId = request.getAttribute("regiId");
                                        Object loginId = request.getAttribute("loginId");

                                        if(loginId.equals(regiId)){
                                    %>
                                    <button type="button" id ="edit" class="tm-btn red" style="width: 90px;"> 수정 </button>

                                    <%
                                        }
                                    %>
                                    <button type="button" id = "list" class="tm-btn blue" style="width: 90px;"> 목록 </button>
                                </div>
                            </div>
                        </div>
                    </p>
                    <section id="tm-comment">
                        <h4><label onclick="scroll()">${BoardDetail.countNum} Commnets</label></h4>
                        <ul class="list-comments">
                            <%
                                if (AuthenticationUtils.isAuthenticated() == true) {
                            %>
                            <li>
                                <div class="box style-white" id="reply_list">
                                </div>
                            </li>
                            <%
                            }else {
                            %>
                            <%
                                }
                            %>
                        </ul>
                    </section>
                    <section id="respond">
                        <form:form id="commentform" onsubmit="return false">
                            <%
                                if (AuthenticationUtils.isAuthenticated() == true) {
                            %>
                            <p class="comments-form-comment">
                                <textarea name="answer" id="answer" placeholder="Leave a comment"></textarea>
                            </p>
                            <p>
                                <button type="submit" id="insertReply" name="insertReply" class="tm-btn">댓글 등록</button>
                            </p>
                            <%
                            }else {
                            %>
                            <div class="tm-alert error">
                                <strong>로그인 후에 댓글을 작성 할 수 있습니다.</strong>
                                <a class="close" href="javascript:void(0)">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                            <%
                                }
                            %>
                        </form:form>
                    </section>
                </div>
            </div>
        </div>
        <div class="page-sidebar">
            <aside class="widget tm-tabs">
                <ul class="tm-filter tabs tm-style1">
                    <li>
                        <a href="#tab1">신규 레시피들</a>
                    </li>
                    <li>
                        <a href="#tab2">최근 게시글</a>
                    </li>
                </ul>
                <div class="tab-container">
                    <aside id="tab1" class="widget tm-list-style2 widget_recent_entries tab-content">
                        <ul>
                            <c:forEach items="${newRecipeList}" var="newRecipeList" varStatus="status">
                                <li>
                                    <a href="/public/recipe/${newRecipeList.brewer}/${newRecipeList.seq}/${newRecipeList.titleInUrl}">
                        <span class="thumb">
                        <img src="/resources/upload/${newRecipeList.atchCoverFileName}" width="60" alt="thumb">
                        </span>
                                        <h3>${newRecipeList.name}</h3>
                        <span class="time">
                            ${newRecipeList.styleName} / ${newRecipeList.batchSize}리터 / ${newRecipeList.efficiency}%
                        </span>
                        <span class="time">
                            </br>${newRecipeList.brewerNm}
                        </span>
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </aside>
                    <aside id="tab2" class="widget tm-list-style2 widget_recent_comments tab-content">
                        <ul id="recentcomments">
                            <c:forEach items="${newPostList}" var="newPostList" varStatus="status">
                                <li class="recentcomments">
                                        ${newPostList.insertId} -
                                    <a href="/board/detail/${newPostList.nttId}">
                                            ${newPostList.nttSj}
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </aside>
                </div>
            </aside>
            <aside class="widget widget_text box-dark">
                <div class="textwidget">
                    <div class="tm-testimonial tm-style2">
                        <div style="" class="testimonial-content">
                            <p>
                                맥주만들기 이제 커피보다 쉬워요..
                            </p>
                        </div>
                        <div class="info">
                            <div class="name">
                                <h3>- XX비어 -</h3>
                                <p>  - <span>XX 비어</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </aside>
        </div>
    </div>
</div>
<content tag="local_script">
    <script>
        var bbsId = ${BoardDetail.bbsId};
        var nttId = ${BoardDetail.nttId};

        $('#insertReply').on('click', function () {
            var json = { "bbsId" : bbsId, "nttId" : nttId, "amswer" : $('#answer').val().replace(/\n/g, '<br>')};
            $.ajax({
                type: "POST",
                url: "/community/writeReply",
                contentType: "application/json; charset=utf-8",
                dataType:"json",
                data:  JSON.stringify(json),
                success:function( data ) {
                    if(data.insertFlag == 1){
                        replyList();
                        $('#answer').val('');
                    }
                }
            });
        });

        function replyList(){
            var replyListHtml = "";

            $.get("/community/replyList/"+nttId+"/"+bbsId, function(data, status){
                $.each(data, function(i){
                replyListHtml = replyListHtml + "<ol class='commentlist'>";
                replyListHtml = replyListHtml + "<li>";
                replyListHtml = replyListHtml + "<div class='comment'>";
                replyListHtml = replyListHtml + "<div class='avatar'>";
                replyListHtml = replyListHtml + "<img alt='img' src='http://placehold.it/50x50'>";
                replyListHtml = replyListHtml + "</div>";
                replyListHtml = replyListHtml + "<div class='comment-container'>";
                replyListHtml = replyListHtml + "<div class='comment-author meta'>";
                replyListHtml = replyListHtml + "<a href='/list/recipe/"+data[i].boardId+"/"+data[i].insertId+"'><strong>"+data[i].insertId+"</strong></a>"+data[i].insertDate+"<a class='comment-reply-link' href=''> - Reply</a>";
                replyListHtml = replyListHtml + "</div>";
                replyListHtml = replyListHtml + "<p>"+data[i].answer+"</p>";
                replyListHtml = replyListHtml + "</div>";
                replyListHtml = replyListHtml + "</div>";
                replyListHtml = replyListHtml + "</li>";
                replyListHtml = replyListHtml + "</ol>";
                });
                $("#reply_list").html("");
                $("#reply_list").append(replyListHtml);
            })
        }


        function goList(bbsId){
                location.href = "/board/main/"+bbsId;
        }

        function goEdit(nttId){

            location.href = "/board/editBoard/"+nttId;
        }

        function scroll(){
            $("#answer").focus();
        }

        $(document).ready(function() {

            replyList();

        });

        $("#list").click(function(){
            goList(${BoardDetail.bbsId});
        });

        $("#edit").click(function(){
            goEdit(${BoardDetail.nttId});
        });

    </script>
</content>