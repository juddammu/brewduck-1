<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>${recipeDetail.name}</title>
<div id="tm-page-title">
    <div class="tm-wrap tm-table">
        <div class="tm-title-captions">
            <h2 class="tm-entry-title">${recipeDetail.name}</h2>
        </div>
        <ul class="tm-breadcrumbs">
            <li>
                <a href="#">${recipeDetail.styleName}</a>
            </li>
        </ul>
    </div>
</div>
<!--tm-page-title-->
<div id="tm-page-body">
<div id="tm-single-blog" class="tm-container tm-wrap tm-sidebar-right">
<div class="page-content">
<div class="page-content-inner">
<!--div class="entry-thumbnail">
    <img src="http://placehold.it/815x495" alt="Thumb">
</div>
<!--entry-thumb-->
<div class="entry-header">
    <h2>${recipeDetail.name}</h2>
    <div class="meta">
        <a href="/list/recipe/${recipeDetail.brewer}/${recipeDetail.brewerNm}">${recipeDetail.brewerNm}</a> 님
        <span class="incategory">
        <a href="/style/${recipeDetail.styleSeq}/">${recipeDetail.styleName}</a>
        </span>
    </div>
    <div class="time">
        ${recipeDetail.insertDate}
        <a href="#commentform"><label id = "replyCount" type ="text"></label></a>
    </div>
</div>
<!--entry-header-->
<div class="entry-container">
<div class="entry-content">
    <div class="tm-row">
        <div class="tm-promobox no-button">
            <div class="tm-promocontent">
                <p>
                    ${recipeDetail.notes}
                </p>
            </div>
            <div class="tm-promobutton">
                <a href="#" class="tm-btn">Purchase Now</a>
            </div>
        </div>
    </div>
</div>
<div class="tm-row">
    <h2 class="tm-title">발효 재료 <small>Fermentables</small></h2>

    <table class="tm-table tm-style1">
        <thead>
        <tr class="header">
            <th>재료명</th>
            <th>수량</th>
            <th>사용방법</th>
            <th>색상</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${recipeDetail.fermentables}" var="fermentables" varStatus="i">
        <tr>
            <td>${fermentables.koreanName }</td>
            <td class="text-right">${fermentables.amount} kg</td>
            <td class="text-right">
                <c:choose>
                    <c:when test="${fermentables.fermentableUse=='1'}">
                        당화 - Mash
                    </c:when>
                    <c:when test="${fermentables.fermentableUse=='2'}">
                        우려내기 - Steep
                    </c:when>
                    <c:when test="${fermentables.fermentableUse=='3'}">
                        끊임 - Boil
                    </c:when>
                    <c:when test="${fermentables.fermentableUse=='4'}">
                        후반 끓임 - Late Boil
                    </c:when>
                    <c:otherwise>
                        -
                    </c:otherwise>
                </c:choose>
            </td>
            <td class="text-right">${fermentables.color} °L</td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    </br> </br>
    <h2 class="tm-title">홉 - <small>hops  ${recipeDetail.boilTime} 분</small></h2>
    <table class="tm-table tm-style1">
        <thead>
        <tr class="header">
            <th>재료명</th>
            <th>수량</th>
            <th>용도</th>
            <th>시간</th>
            <th>형태</th>
            <th>Alpha</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${recipeDetail.hops}" var="hops" varStatus="i">
            <tr>
                <td>${hops.koreanName } (${hops.name })</td>
                <td class="text-right">${hops.amount} g</td>
                <td class="text-right">
                    <c:choose>
                        <c:when test="${hops.hopsUse=='1'}">
                            당화 - Mash
                        </c:when>
                        <c:when test="${hops.hopsUse=='3'}">
                            끓임 - Boil
                        </c:when>
                        <c:when test="${hops.hopsUse=='5'}">
                            드라이 홉 - Dry Hop
                        </c:when>
                        <c:when test="${hops.hopsUse=='6'}">
                            월풀 - Whirlpool
                        </c:when>
                        <c:otherwise>
                            -
                        </c:otherwise>
                    </c:choose>
                </td>
                <td class="text-right">${hops.time} min</td>
                <td class="text-right">
                    <c:choose>
                        <c:when test="${hops.form=='1'}">
                            Plug
                        </c:when>
                        <c:when test="${hops.form=='2'}">
                            -
                        </c:when>
                        <c:when test="${hops.form=='3'}">
                            Leaf
                        </c:when>
                        <c:when test="${hops.form=='4'}">
                            Pellet
                        </c:when>
                        <c:otherwise>
                            -
                        </c:otherwise>
                    </c:choose>
                </td>
                <td class="text-right">${hops.alpha} %</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    </br> </br>
    <h2 class="tm-title">효모 - <small>Yeasts</small></h2>
    <table class="tm-table tm-style1">
        <thead>
        <tr class="header">
            <th>재료명</th>
            <th>제조사</th>
            <th>ID</th>
            <th>발효온도</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${recipeDetail.yeasts}" var="yeasts" varStatus="i">
            <tr>
                <td>${yeasts.koreanName }</td>
                <td class="text-right">${yeasts.laboratory }</td>
                <td class="text-right">${yeasts.productId }</td>
                <td class="text-right">${yeasts.minTemperature} ~ ${yeasts.maxTemperature}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<section class="about-author">
    <h3 class="tm-title">양조자 :
        <a href="#">${recipeDetail.brewerNm}</a>님
    </h3>
    <div class="about-author-conteainer">
        <div class="avatar">
            <img alt="img" src="http://placehold.it/50x50">
        </div>
        <div class="description">
            <p>
                클론레시피 전문... lol
            </p>
        </div>
    </div>
</section>
<!--section class="tm-recent-post">
    <h3 class="tm-title">유사 레시피 스타일 </h3>
    <ul class="tm-col-3">
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
        <li>
            <a class="thumb" href="single-portfolio.html">
                <img alt="img" src="http://placehold.it/211x155">
            </a>
            <h3>
                <a href="single-portfolio.html">
                    Website Designs Inspired by Landscapes
                </a>
            </h3>
        </li>
    </ul>
    <div class="clear"></div>
</section-->
<section class="tm-share">
    <h3 class="tm-title">공유하기 :</h3>
    <ul class="social-networks">
        <li>
            <a href="" data-title="Facebook">
                <i class="fa fa-facebook"></i>
            </a>
        </li>
        <li>
            <a href="" data-title="Twitter">
                <i class="fa fa-twitter"></i>
            </a>
        </li>
        <li>
            <a href="" data-title="GooglePlus">
                <i class="fa fa-google-plus"></i>
            </a>
        </li>
        <li>
            <a href="" data-title="Tumblr">
                <i class="fa fa-tumblr"></i>
            </a>
        </li>
    </ul>
</section>
<section id="tm-comment">
    <ul class="list-comments">
        <li>
            <div class="box style-white" id="reply_list">

            </div><!--end .box -->
        </li><!-- end comment -->
    </ul>
</section>
<section id="respond">
    <form:form  id="commentform" class="form-horizontal" role="form" onsubmit="return false">
        <p class="comment-form-comment">
            <label>댓글</label>
            <%
                if (AuthenticationUtils.isAuthenticated() == false) {
            %>
            <a href="/account/login"><textarea id="answer" name="answer">로그인 후 등록할 수 있습니다.</textarea></a>
            <%
            } else {
            %>
            <textarea id="answer" name="answer"></textarea>
            <%
                }
            %>
        </p>
        <p class="form-submit">
            <input id="insertReply" name="insertReply" class="tm-btn" type="submit" value="Post Comment" >
        </p>
    </form:form>
</section>
</div>
<!--entry-container-->
</div>
</div>
<!--page-content-->
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
<!--page-sidebar-->
<a href="#" class="tm-single-nav post-prev">
    <i class="fa fa-angle-left"></i>
    <div class="post-entry">
        <div class="post-entry-inner">
            <h3>이전 레시피 보기</h3>
							<span class="img">
								<img src="http://placehold.it/60x60" alt="thumb">
							</span>
        </div>
    </div>
</a>
<a href="#" class="tm-single-nav post-next">
    <i class="fa fa-angle-right"></i>
    <div class="post-entry">
        <div class="post-entry-inner">
            <div class="img">
                <img src="http://placehold.it/60x60" alt="thumb">
            </div>
            <h3>다음 레시피 보기</h3>
        </div>
    </div>
</a>
</div>
<!--tm-single-blog-->
</div>
<!--tm-page-body-->

<content tag="local_script">
    <script>

        var recipeId = ${recipeDetail.seq};
        var userId = ${recipeDetail.brewer};

        $('#insertReply').on('click', function () {
            var json = {"userId" : userId, "recipeId" : recipeId, "amswer" : $('#answer').val().replace(/\n/g, '<br>')};
            $.ajax({
                type: "POST",
                url: "/public/recipe/writeReply",
                contentType: "application/json; charset=utf-8",
                dataType:"json",
                data:  JSON.stringify(json),
                success:function( data ) {
                    if(data.insertFlag == 1){
                        replyList();
                        getReplyCount();
                        $('#answer').val('');
                    }
                }
            });
            $("#answer").focus();
        });

        function getReplyCount(){

            $.get("/public/countReply/"+userId+"/"+recipeId, function(data, status){
                $("#replyCount").html(data.countNum+" 개 댓글");
            })
        }

        function replyList(){
            var replyListHtml = "";

            $.get("/public/recipe/replyList/"+userId+"/"+recipeId, function(data, status){
                $.each(data, function(i){
                    replyListHtml = replyListHtml + "<ol class='commentlist'>";
                    replyListHtml = replyListHtml + "<li>";
                    replyListHtml = replyListHtml + "<div class='comment'>";
                    replyListHtml = replyListHtml + "<div class='avatar'>";
                    replyListHtml = replyListHtml + "<img alt='img' src='http://placehold.it/50x50'>";
                    replyListHtml = replyListHtml + "</div>";
                    replyListHtml = replyListHtml + "<div class='comment-container'>";
                    replyListHtml = replyListHtml + "<div class='comment-author meta'>";
                    replyListHtml = replyListHtml + "<h4 class='comment-title'>"+data[i].insertId+" <small>"+data[i].insertDate+"</small></h4>";
                    replyListHtml = replyListHtml + "<a class='comment-reply-link' href=''> - 댓글달기</a>";
                    replyListHtml = replyListHtml + "</div>";
                    replyListHtml = replyListHtml + "<p>"+data[i].answer+"</p>";
                    replyListHtml = replyListHtml + "</div>";
                    replyListHtml = replyListHtml + "</div>";
                    replyListHtml = replyListHtml + "</li>";
                    replyListHtml = replyListHtml + "</oi>";
                });
                $("#reply_list").html("");
                $("#reply_list").append(replyListHtml);
            })
        }


        $(document).ready(function() {
            getReplyCount();
            replyList();
        });

    </script>
</content>