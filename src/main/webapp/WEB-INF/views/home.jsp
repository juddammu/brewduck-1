<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/common/include/home_header.jsp" %>
</head>

<body>
<header>
    <%@ include file="/WEB-INF/views/common/include/home_top_menu.jsp" %>
</header>
<!--tm-page-title-->
<div id="tm-page-body">
    <div id="tm-blog" class="tm-container tm-wrap personal">
        <div class="page-content">
            <div id="main" class="tm-content page-content-inner masonry">
                <article class="item column-width format-standard">
                    <div class="tm-content-inner">
                        <div class="entry-thumbnail">
                            <a href="#">
                                <img alt="Thumb" src="/resources/front/img/9.jpg">
                            </a>
                        </div>
                        <div class="entry-container">
                            <h3>
                                <a href="">비어 풀리쳐상에 도전해보세요.</a>
                            </h3>
                            <blockquote>
                                <p>맥주사진으로만 펼치는 숨막히는 배틀</p>
                            </blockquote>
                        </div>
                    </div>
                </article>
                <article class="item w2 format-gallery">
                    <div class="tm-content-inner">
                        <div class="entry-thumbnail">
                            <div class="tm-gallery gallery-slide flexslider">
                                <ul class="slides">
                                    <li>
                                        <a href="#">
                                            <img alt="Thumb" src="/resources/front/img/main3.jpg">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img alt="Thumb" src="/resources/front/img/main1.jpg">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/board/off-flavor">
                                            <img alt="Thumb" src="/resources/front/img/main2.jpg">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </article>
                <article class="item column-width format-aside">
                    <div class="tm-content-inner">
                        <div class="entry-container">
                            <div class="time">9월 1일, 2014년</div>
                            <h3>
                                <a href="">브루덕 오픈 이벤트!</a>
                            </h3>
                            <p>
                                간지폭팔! 맥덕들의 심금을 울리는 바이킹 뿔모양 잔을 아낌없이 드립니다.
                            </p>
                        </div>
                    </div>
                </article>
                <article class="item column-width format-quote">
                    <div class="tm-content-inner" style="color:#fff;background:#F7827E">
                        <div class="entry-container">
                            <blockquote>
                                <p>
                                    브루덕 오픈 이벤트!
                                    맥덕들의 심금을 울리는 바이킹 뿔모양 잔을 아낌없이 드립니다.
                                </p>
                            </blockquote>
                        </div>
                    </div>
                </article>
                <article class="item column-width format-standard">
                    <div class="tm-content-inner">
                        <div class="entry-thumbnail">
                            <a href="#">
                                <img alt="Thumb" src="/resources/front/img/hop.jpg">
                            </a>
                        </div>
                        <div class="entry-container">
                            <h3>
                                <a href="#">${hop.koreanName} - ${hop.alpha}% / ${hop.typeKorean}</a>
                            </h3>
                            <blockquote>
                                <p>${hop.koreanNotes}</p>
                            </blockquote>
                        </div>
                    </div>
                </article>
            </div>
        </div>
        <!--page-content-->
    </div>


    <!--tm-blog-->
    <div id="tm-blog" class="tm-container tm-wrap tm-blog-style-grid">
        <div class="tm-row">

            <div class="header-line-bottom">
                <h2 class="tm-title">
                    <span><i class="fa fa-magic"></i></span> 신규 레시피
                </h2>

            </div>


        </div>
        <div class="page-content">
        <div class="tm-content page-content-inner tm-col-4">
            <c:forEach items="${newRecipeList}" var="newRecipeList" varStatus="status">
                <article>
                <div class="tm-content-inner">
                    <div class="entry-thumbnail">
                        <a href="/public/recipe/${newRecipeList.brewer}/${newRecipeList.seq}/${newRecipeList.titleInUrl}">
                            <img src="<c:url value='/download/downloadFile.do?'/>requestedFile=${newRecipeList.atchCoverFileName}" />
                        </a>
                    </div>
                    <div class="entry-container">
                        <div class="time">${newRecipeList.insertDate}</div>
                        <h3>
                            <a href="/public/recipe/${newRecipeList.brewer}/${newRecipeList.seq}/${newRecipeList.titleInUrl}">${newRecipeList.name}</a>
                        </h3>
                        <div class="meta">
                            by
                            <a href="/list/recipe/${newRecipeList.brewer}/${newRecipeList.brewerNm}" class="author">${newRecipeList.brewerNm}</a>
                            -
                            <span class="incategory">
                                <a href="#">${newRecipeList.styleName}</a>
                            </span>
                        </div>
                        <p>
                                ${newRecipeList.shortNotes}
                            <a class="more-link" href="/public/recipe/${newRecipeList.brewer}/${newRecipeList.seq}/${newRecipeList.titleInUrl}">.. 더 보기</a>
                        </p>
                    </div>
                </div>
            </article>
            </c:forEach>
        </div>
        </div>
    </div>


</div>

<!--tm-page-page-footer-->
<footer>
    <div class="tm-wrap tm-table">
        <div class="copyright">
            <p>© Copyright - 브루덕 오픈프로젝트 팀</p>
        </div>
        <div class="tm-social-icons">
            <a class="tm-icon-facebook" href="www.facebook.com/brewduck">
                <i class="fa fa-facebook"></i>
            </a>
        </div>
    </div>
</footer>

<div id="loginmodal" style="display:none;">
    <div class="header-line-bottom">
        <h3 class="tm-title">User Login</h3>
    </div>
    <form id="loginform" name="loginform" method="post">
        <p>
            <label for="user_login">Username<br>
                <input type="text" size="20" value="" class="input" id="user_login" name="log"></label>
        </p>
        <p>
            <label for="user_pass">Password<br>
                <input type="password" size="20" value="" class="input" id="user_pass" name="pwd"></label>
        </p>

        <p class="submit">
            <input type="submit" value="Log In" class="tm-btn hidemodal" id="wp-submit" name="wp-submit">
        </p>
    </form>
</div>

<!-- Go to top -->
<a href="#" id="tm-gotop">
    <i class="fa fa-chevron-up"></i>
</a>

<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-core.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-ui.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-tinynav.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-isotope.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-flexslider.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-countdown.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-masonry.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-leanModal.js"></script>
<script type="text/javascript" src="/resources/front/3rd/jquery/jquery-validate.js"></script>
<script type="text/javascript" src="/resources/front/3rd/pretty-photo/pretty-photo.js"></script>
<script type="text/javascript" src="/resources/front/3rd/layerslider/js/greensock.js"></script>
<script type="text/javascript" src="/resources/front/3rd/layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
<script type="text/javascript" src="/resources/front/3rd/layerslider/js/layerslider.transitions.js"></script>
<script type="text/javascript" src="/resources/front/js/theme.js"></script>
</body>
</html>