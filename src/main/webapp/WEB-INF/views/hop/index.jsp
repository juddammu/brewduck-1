<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<title>홉 - HOPS</title>

<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>홉 <small>HOPS</small></h1>
        </div>
        <!-- END PAGE TITLE -->
    </div>
</div>
<!-- END PAGE HEAD -->
<!-- BEGIN PAGE CONTENT -->
<div class="page-content">
    <div class="container-fluid">
        <!-- /.modal -->
        <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM--><%--
        <!-- BEGIN PAGE BREADCRUMB -->
        <ul class="page-breadcrumb breadcrumb">
            <li>
                <a href="#">홈</a><i class="fa fa-circle"></i>
            </li>
            <li>
                <a href="#">재료 데이터베이스</a>
                <i class="fa fa-circle"></i>
            </li>
            <li class="active">
                스타일
            </li>
        </ul>
        <!-- END PAGE BREADCRUMB -->--%>
        <!-- BEGIN PAGE CONTENT INNER -->
        <div class="row">
            <div class="col-md-12">

                <!-- Begin: life time stats -->
                <div class="portlet light">
                    <div class="portlet-title">
                        <form:form class="form-horizontal" action="/hop/" id="searchForm"  name="searchForm" modelAttribute="paramHop">
                            <div class="form-group">
                                <div class="col-sm-11">
                                    <input type="text" id="name" name="name" class="form-control" placeholder="검색어를 입력하세요." value="${paramStyle.name}">
                                </div>

                                <div class="col-sm-1 pull-right">
                                    <button class="btn btn-white btn-single"><i id="search" name="search" class="fa fa-search"></i> 검색</button>
                                </div>
                            </div>
                        </form:form>

                        <div class="caption pull-right">
                            <span class="caption-subject font-green-sharp bold uppercase">${list_cnt}</span>
                            <span class="caption-helper">건이 조회되었습니다.</span>
                        </div>

                    </div>
                    <div class="portlet-body">


                        <div class="table-responsive" data-pattern="priority-columns" data-focus-btn-icon="fa-asterisk" data-sticky-table-header="true" data-add-display-all-btn="true" data-add-focus-btn="true">


                            <table cellspacing="0" class="table table-small-font table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th data-hide="phone" data-priority="2">이름</th>
                                    <th data-hide="phone" data-priority="3">영문명</th>
                                    <th data-hide="phone" data-priority="4">타입</th>
                                    <th data-hide="phone" data-priority="5">원산지</th>
                                    <th data-hide="phone" data-priority="6">ALPHA</th>
                                    <th data-hide="phone" data-priority="7">BETA</th>
                                    <th data-hide="phone" data-priority="8">HSI</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="list">
                                    <tr>
                                        <td><a href="/hop/${list.id}/${list.titleInUrl}">${list.name}</a></td>
                                        <td><a href="/hop/${list.id}/${list.titleInUrl}">${list.koreanName}</a></td>
                                        <td> ${list.typeKorean}</td>
                                        <td> ${list.originKorean}</td>
                                        <td>
                                            <span class="badge badge-success">${list.alpha} %</span>
                                        </td>
                                        <td>
                                            <span class="badge badge-success">${list.beta} %</span>
                                        </td>
                                        <td>
                                            <span class="badge badge-success">${list.hsi} %</span>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
                <!-- End: life time stats -->


            </div>
        </div>
        <!-- END PAGE CONTENT INNER -->
    </div>
</div>
<!-- END PAGE CONTENT -->



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