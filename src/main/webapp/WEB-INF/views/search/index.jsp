<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>${name} 에 대한 검색결과입니다.
            </h1>
        </div>
        <!-- END PAGE TITLE -->
    </div>
</div>

<div class="page-content">
<div class="container-fluid">
<!-- BEGIN PAGE CONTENT INNER -->
<div class="row">
<div class="col-md-12">
<div class="tabbable tabbable-custom tabbable-noborder">

<div class="tab-content">
<!--end tab-pane-->
<div id="tab_1_3" class="tab-pane active">
    <div class="row">
        <div class="col-md-12">
            <form action="javascript:;" class="alert alert-warning alert-borderless">
                <div class="input-group">
                    <div class="input-cont">
                        <input type="text" placeholder="Search..." class="form-control"/>
                    </div>
												<span class="input-group-btn">
												<button type="button" class="btn green-haze">
                                                    Search &nbsp; <i class="m-icon-swapright m-icon-white"></i>
                                                </button>
												</span>
                </div>
            </form>
        </div>
    </div>


    <c:forEach items="${recipeList}" var="recipe" varStatus="i">
        <div class="search-classic">
            <h4>
                <a href="/recipe/detail/${recipe.id}/${recipe.name}/${recipe.brewerId}">
                        ${recipe.name} </a>
            </h4>

            <small style="font-size:12px;">
                <c:choose>
                    <c:when test="${recipe.typeCode=='1'}">
                        완전 곡물 - All Grain
                    </c:when>
                    <c:when test="${recipe.typeCode=='2'}">
                        부분곡물 - Partial Mash
                    </c:when>
                    <c:when test="${recipe.typeCode=='3'}">
                        원액 캔 - Extract
                    </c:when>
                </c:choose>
            </small>
            <p>
                ${fn:substring(recipe.notes, 0,100)}...
            </p>
        </div>
        <hr/>
    </c:forEach>

    <!--div class="margin-top-20">
        <ul class="pagination pagination-circle">
            <li>
                <a href="javascript:;">
                    Prev </a>
            </li>
            <li>
                <a href="javascript:;">
                    1 </a>
            </li>
            <li>
                <a href="javascript:;">
                    2 </a>
            </li>
            <li class="active">
                <a href="javascript:;">
                    3 </a>
            </li>
            <li>
                <a href="javascript:;">
                    4 </a>
            </li>
            <li>
                <a href="javascript:;">
                    5 </a>
            </li>
            <li>
                <a href="javascript:;">
                    Next </a>
            </li>
        </ul>
    </div-->
</div>

<!--end tab-pane-->
</div>
</div>
</div>
<!--end tabbable-->
</div>
</div>
</div>
<!--tm-page-title-->
