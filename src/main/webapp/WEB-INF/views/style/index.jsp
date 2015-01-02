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

<div class="panel panel-default">
    <div class="panel-heading">
        <form:form class="form-horizontal" action="/style/" id="searchForm"  name="searchForm" modelAttribute="paramStyle">
            <div class="form-group">
                <div class="col-sm-11">
                        <input type="text" class="form-control" placeholder="검색어를 입력하세요.">
                </div>

                <div class="col-sm-1 pull-right">
                    <button class="btn btn-white btn-single"><i id="search" name="search" class="fa fa-search"></i> 검색</button>
                </div>
            </div>
        </form:form>
    </div>
    <div class="panel-body">
        <div class="pull-right">
        ${list_cnt}건이 검색되었습니다.
        </div>
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
                            <span class="badge badge-success">${list.ogMin} ~ ${list.ogMax}</span>
                        </td>
                        <td>
                            <span class="badge badge-success">${list.fgMin} ~ ${list.fgMax}</span>
                        </td>
                        <td>
                            <span class="badge badge-success">${list.ibuMin} ~ ${list.ibuMax}</span>
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
<!-- Responsive Table -->



<content tag="local_script">

    <script>
        function goDetail(id, titleInUrl){
            location.href = "/style/"+id+"/"+titleInUrl;
        }
        // This JavaScript Will Replace Checkboxes in dropdown toggles
        jQuery(document).ready(function($) {
            $("#name").focus();

            $("#search").click(function(){
                search();
            })
        });
    </script>
</content>