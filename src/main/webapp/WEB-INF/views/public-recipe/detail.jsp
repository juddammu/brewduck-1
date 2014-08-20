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
        <a href="#">${recipeDetail.brewerNm}</a> 님
        <span class="incategory">
        <a href="/style/${recipeDetail.styleSeq}/">${recipeDetail.styleName}</a>
        </span>
    </div>
    <div class="time">
        ${recipeDetail.insertDate}
        <a href="#tm-comment">0 댓글</a>
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
    <div class="row">
        <div class="col-md-12">
            <label class="medium_text_shadow" id = "replyCount" type ="text"></label>
            <div class="box style-white" id="reply_count">
                <ul class="list-comments">
                    <li>
                        <div class="box style-white" id="reply_list">

                        </div><!--end .box -->
                    </li><!-- end comment -->
                </ul>
            </div><!--end .col-md-9 -->
        </div><!--end .row -->
    </div>
    <div class="box box-tiles style-white">
        <div class="row">
            <div class="col-md-12">
                <article class="style-white">
                    <form:form  class="form-horizontal" role="form" onsubmit="return false">
                        <%
                            if (AuthenticationUtils.isAuthenticated() == false) {
                        %>
                        <div class="form-group">
                            <div class="col-md-12">
                                <textarea name="answer" id="answer" class="form-control" rows="6" placeholder="로그인 후 등록할 수 있습니다." disabled></textarea>
                            </div>
                        </div>
                        <%
                        } else {
                        %>

                        <div class="form-group">
                            <div class="col-md-12">
                                <textarea name="answer" id="answer" class="form-control" rows="6" placeholder="Leave a comment"></textarea>
                            </div>
                        </div>
                        <div class="form-footer">
                            <button type="submit" class="ui-button" id="insertReply" name="insertReply" class="btn btn-primary">댓글 등록</button>
                        </div>
                        <%
                            }
                        %>
                    </form:form>
                </article>
            </div>
            <!-- END BLOG POST TEXT -->
        </div><!--end .row -->
    </div>
<%--

    <h3 class="tm-title">1 Comments</h3>
    <ol class="commentlist">
        <li>
            <div class="comment">
                <div class="avatar">
                    <img alt="img" src="http://placehold.it/50x50">
                </div>
                <div class="comment-container">
                    <div class="comment-author meta">
                        <strong>양조마법사</strong>
                        Jan 11, 2013
                        <a class="comment-reply-link" href=""> - Reply</a>
                    </div>
                    <div class="text">
                        레시피 댓글 테스트중
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="comment">
                <div class="avatar">
                    <img alt="img" src="http://placehold.it/50x50">
                </div>
                <div class="comment-container">
                    <div class="comment-author meta">
                        <strong>양조마법사</strong>
                        Jan 11, 2013
                        <a class="comment-reply-link" href=""> - 댓글달기</a>
                    </div>
                    <div class="text">
                        여기서 이거하나면 SOUR로 변경가능요.
                    </div>
                </div>
            </div>
            <ul class="children">
                <li>
                    <div class="comment">
                        <div class="avatar">
                            <img alt="img" src="http://placehold.it/50x50">
                        </div>
                        <div class="comment-container">
                            <div class="comment-author meta">
                                <strong>티라노-SOURS</strong>
                                Jan 11, 2013
                                <a class="comment-reply-link" href=""> - Reply</a>
                            </div>
                            <div class="text">
                                와우..
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </li>
    </ol>--%>
</section>
<section id="respond">
    <h3 class="tm-title">Leave A Comment</h3>
    <form id="commentform">
        <p class="comment-form-author">
            <label for="author">
                Name
                <span class="required">*</span>
            </label>
            <input id="author" type="text" value="" name="author">
        </p>
        <p class="comment-form-email">
            <label for="email">
                Email
                <span class="required">*</span>
            </label>
            <input id="email" type="text" value="" name="email">
        </p>
        <p class="comment-form-url">
            <label for="url">Website</label>
            <input id="url" type="text" value="" name="url">
        </p>
        <p class="comment-form-comment">
            <label for="url">Comment</label>
            <textarea id="comment" name="comment"></textarea>
        </p>
        <p class="form-submit">
            <input id="submit" class="tm-btn" type="submit" value="Post Comment" name="submit">
        </p>
    </form>
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

        var bbsId = '4';
        var nttId = ${StyleDetail.seq};

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
                        getReplyCount();
                        $('#answer').val('');
                    }
                }
            });
        });

        function getReplyCount(){

            $.get("/community/countReply/"+nttId+"/"+bbsId, function(data, status){
                $("#replyCount").html(data.countNum+" Comments"); /*미국*/
            })
        }

        function replyList(){
            //getLoadingTime();
            //$("#reply_list").html("");
            var replyListHtml = "";

            $.get("/recipe/replyList/"${recipeDetail.brewer}/${recipeDetail.seq}, function(data, status){
                $.each(data, function(i){

                    replyListHtml = replyListHtml + "<div class='comment'>";
                    replyListHtml = replyListHtml + "<div class='avatar'>";
                    replyListHtml = replyListHtml + "<img alt='img' src='http://placehold.it/50x50'>";
                    replyListHtml = replyListHtml + "</div>'
                    replyListHtml = replyListHtml + "<div class='comment-container'>"
                    replyListHtml = replyListHtml + "<div class='comment-author meta'>"
                    replyListHtml = replyListHtml + "<h4 class='comment-title'>"+data[i].insertId+" <small>"+data[i].insertDate+"</small></h4>";
                    replyListHtml = replyListHtml + "<a class='comment-reply-link' href=''> - 댓글달기</a>";
                    replyListHtml = replyListHtml + "</div>";
                    replyListHtml = replyListHtml + "<p>"+data[i].answer+"</p>";
                    replyListHtml = replyListHtml + "</div>";
                    replyListHtml = replyListHtml + "</div>";
                });
                $("#reply_list").append(replyListHtml);
                boostbox.App.removeBoxLoader(box);
            })
        }


        $(document).ready(function() {
            alert();
            getReplyCount();
            replyList();
        });

    </script>
</content>