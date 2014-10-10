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
<div id="tm-page-title">
    <div class="tm-wrap tm-table">
        <div class="tm-title-captions">
            <h2 class="tm-entry-title">Off Flavor(이취) 가이드</h2>
        </div>
        <ul class="tm-breadcrumbs">
            <li>
                <a href="/">홈</a>
            </li>
            <li>
                Off Flavor(이취) 가이드
            </li>
        </ul>
    </div>
</div>
<!--tm-page-title-->
<div id="tm-page-body">
<div id="tm-template-default-fullwidth" class="tm-container">
<div class="page-content">
<div class="page-content-inner tm-content">
<div class="tm-row" style="padding:50px 0; background:#eee">
<div class="tm-wrap">
<div class="one-third">
    <ul class="tm-iconlist tm-style2">
        <li>
            <div class="iconlist-icon">
                <i class="fa fa-info-circle"></i>
            </div>
            <div class="iconlist-entry">
                <div class="iconlist-container">
                    <h3>원하는 맥주가 안나오고 이상한 풍미를 느끼셨나요?</h3>
                    <div class="iconlist-content">
                        <p>
                            이 페이지에서 이취의 원인과 해결방법을 찾아보세요.
                        </p>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="iconlist-icon">
                <i class="fa fa-comments-o"></i>
            </div>
            <div class="iconlist-entry">
                <div class="iconlist-container">
                    <h3>질문과 답변 게시판을 활용해보세요.</h3>
                    <div class="iconlist-content">
                        <p>
                            질문과 답변 게시판에 질문을 올리고, 답변을 받아보세요.
                        </p>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="iconlist-icon">
                <i class="fa fa-location-arrow"></i>
            </div>
            <div class="iconlist-entry">
                <div class="iconlist-container">
                    <h3>가장 중요한것은 소독입니다..</h3>
                    <div class="iconlist-content">
                        <p>
                            홈브루잉에서 가장 중요한것은 소독입니다. 맥주와 접촉하는 모든 기기를 소독하세요!
                        </p>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</div>
<div class="two-third last">
    <div class="tm-accordion tm-style3">
        <c:forEach items="${list}" var="list">
            <div class="accordion-title">
                <h3><a href="#">${list.nttSj}</a></h3>
            </div>
            <div class="accordion-container">
                <p>
                    <a href="#">${list.nttCn}</a>
                </p>
            </div>
        </c:forEach>

    </div>
</div>
</div>
</div>
</div>
</div>
<!--page-content-->
</div>
<!--tm-template-->
</div>
<!--tm-page-body-default-box-->

<content tag="local_script">
    <script>

        $(document).ready(function() {

        });
    </script>
</content>
