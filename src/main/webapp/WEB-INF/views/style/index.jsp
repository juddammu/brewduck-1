<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="page-title">

    <div class="title-env">
        <h1 class="title">스타일</h1>
        <p class="description">STYLE (BJCP-2008)</p>
    </div>

    <div class="breadcrumb-env">

        <ol class="breadcrumb bc-1" >
            <li>
                <a href="dashboard-1.html"><i class="fa-home"></i>홈</a>
            </li>
            <li>
                <a href="tables-basic.html">재료 데이터베이스</a>
            </li>
            <li class="active">

                <strong>스타일</strong>
            </li>
        </ol>

    </div>

</div>

<div class="dx-warning">
    <form:form class="form-horizontal" action="/style/" id="searchForm"  name="searchForm" modelAttribute="paramStyle">
        <div class="form-group">
            <div class="row">
                <label class="col-sm-1 control-label" for="field-1" value="${paramStyle.name}">이름</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="field-1" placeholder="스타일명을 입력하세요."  name="name" id="name" onkeypress="if(event.keyCode==13){return false;};">

                </div>
                <div class="col-sm-1">
                    <button class="btn btn-white btn-single"><i id="search" name="search" class="fa fa-search"></i> 검색</button>
                </div>
            </div>
        </div>
    </form:form>
</div>
<!-- Responsive Table -->
<div class="row">
<div class="col-md-12">

<div class="panel panel-default">
<div class="panel-heading">
    <h3 class="panel-title">28건이 검색되었습니다.</h3>

    <div class="panel-options">
        <a href="#">
            <i class="linecons-cog"></i>
        </a>

        <a href="#" data-toggle="panel">
            <span class="collapse-icon">&ndash;</span>
            <span class="expand-icon">+</span>
        </a>

        <a href="#" data-toggle="reload">
            <i class="fa-rotate-right"></i>
        </a>
    </div>
</div>

<div class="panel-body">

<div class="table-responsive" data-pattern="priority-columns" data-focus-btn-icon="fa-asterisk" data-sticky-table-header="true" data-add-display-all-btn="true" data-add-focus-btn="true">

<table cellspacing="0" class="table table-small-font table-bordered table-striped">
<thead>
<tr>
    <th data-hide="phone" data-priority="1">
        카테고리
    </th>
    <th>
        스타일명
    </th>
    <th data-hide="phone" data-priority="2">
        영문명
    </th>
    <th data-hide="phone" data-priority="3">
        초기비중
    </th>
    <th data-hide="phone,tablet" data-priority="4">
        최종비중
    </th>
    <th>
        IBU
    </th>
    <th data-hide="phone,tablet" data-priority="5">
        SRM
    </th>
    <th data-hide="phone,tablet" data-priority="6">
        ABV
    </th>
</tr>
</thead>
<tbody>
<c:forEach items="${list}" var="list">
<tr>
    <th>${list.categoryNumber}${list.styleLetter}</th>
    <td><a href="/style/${list.id}/${list.titleInUrl}">${list.koreanName}</a></td>
    <td> ${list.name}</td>
    <td>
        <span class="badge">${list.ogMax}</span>
    </td>
    <td>
        <span class="badge">${list.fgMax}</span>
    </td>
    <td>
        <span class="badge">${list.ogMax}</span>
    </td>
    <td>
        ${list.colorMax} °L
    </td>
    <td>
        ${list.abvMax} %
    </td>
</tr>
</c:forEach>

</tbody>
</table>
</div>
</div>
</div>
</div>
</div>


<content tag="local_script">

    <script>
        function goDetail(id, titleInUrl){
            location.href = "/style/"+id+"/"+titleInUrl;
        }
        // This JavaScript Will Replace Checkboxes in dropdown toggles
        jQuery(document).ready(function($)
        {
            $("#search").click(function(){
                search();
            })
            setTimeout(function()
            {
                $(".checkbox-row input").addClass('cbr');
                cbr_replace();
            }, 0);
        });
    </script>
</content>