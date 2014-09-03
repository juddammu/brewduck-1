<%--
  Created by IntelliJ IDEA.
  User: ChaJunYoung
  Date: 14. 5. 27
  Time: 오후 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ page import="com.brewduck.web.domain.Account" %>
<%@ page import="com.brewduck.web.domain.Board" %>


<title>${boardList.bbsNm} - ${boardList.bbsEnNm}</title>
<div id="tm-page-title">
    <div class="tm-wrap tm-table">
        <div class="tm-title-captions">
            <a href="/board/main/${boardList.bbsId}"><h2 class="tm-entry-title">${boardList.bbsNm} - ${boardList.bbsEnNm}</h2></a>
        </div>
        <ul class="tm-breadcrumbs">
            <li>
                <a href="/">홈</a>
            </li>
            <li>
                <a href="/board/main/${boardList.bbsId}">${boardList.bbsNm}</a>
            </li>
        </ul>
    </div>
</div>
<!--tm-page-title-->
<div id="tm-page-body">
    <div id="tm-single-blog" class="tm-container tm-wrap tm-sidebar-right">
        <div class="page-content">
            <div class="page-content-inner">
                <div class="entry-header">
                    <p>
                        <div class="tm-row">
                            <form:form id="searchForm"  name="searchForm" modelAttribute="board">
                                <input name="bbsId"  id="bbsId" type="hidden"  class="form-control" value="${boardList.bbsId}">
                                <input name="sort" id="sort" type="hidden"  class="form-control" value="">
                                <div class="tm-search">
                                    <select name = "select2" id = "select2" style="width: 20%;">
                                        <option value="">-- 전체 --</option>
                                        <option value="subject">제목</option>
                                        <option value="content">내용</option>
                                        <option value="userId">작성자</option>
                                    </select>
                                    <input class="tm-input" style="width: 60%;" placeholder="검색어를 입력하세요." name="searchVal" id="searchVal" onkeypress="if(event.keyCode==13){return false;};"  >
                                    <button type="button" class="tm-btn" id="search" name="search">검색</button>
                                </div>
                            </form:form>
                        </div>
                        <div class="tm-row tm-right">
                            <form:form method="post" action="/board/write">
                                <input name="bbsId"  id="bbsId" type="hidden"  class="form-control" value="${boardList.bbsId}">
                                <%
                                    if (AuthenticationUtils.isAuthenticated() == true) {
                                %>
                                <button type="submit" class="tm-btn blue" id="write" name="write">게시물 작성</button>
                                <%
                                    }
                                %>
                            </form:form>
                        </div>
                    </p>
                    <br>
                    <hr>
                </div>
                <table class="tm-table tm-style2">
                    <tbody id="result">
                    </tbody>
                </table>
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
                                    <a href="single-blog.html#tm-comment">
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

        function search(){

            $("#result").html("");
            $("#result").load("/board/list", $("#searchForm").serialize());

        }

        function goDetail(nttId){
            location.href = "/board/detail/"+nttId;
        }

        function setSortSearch(){

            $("#sort").val(jQuery(this).val());
        }

        $(document).ready(function() {

            search();                                                       //조회
            $("#searchVal").focus();                                        //이름칸으로 포커스

        });

        $("#search").click(function(){
            if($("#searchVal").val()=="")
            {
                alert("검색어를 입력하여 주세요.");
                return;
            }
            if($("#select2").val()=="")
            {
                alert("검색구분을 선택하여 주세요.");
                return;
            }
            search();
        });

        $("#select2").click(setSortSearch);

    </script>
</content>