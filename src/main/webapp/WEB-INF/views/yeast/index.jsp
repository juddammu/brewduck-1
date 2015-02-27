<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<title>효모 - YEAST</title>

<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>효모
                <small>YEAST</small>
            </h1>
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
                        <form:form class="form-horizontal form-banded form-bordered" id="searchForm"
                                   name="searchForm" modelAttribute="paramYeast">
                            <input id="typeCode" name="typeCode" type="hidden">

                            <div class="form-group">
                                <div class="col-md-2">
                                    <label class="control-label">이름</label>
                                </div>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <input class="form-control" placeholder="검색어를 입력하세요."
                                               name="name" id="name"
                                               onkeypress="if(event.keyCode==13){return false;};">
                                        <span class="input-group-addon"><i id="search" name="search"
                                                                           class="fa fa-search"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-2">
                                    <h5>타입</h5>
                                </div>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <div>
                                            <div>
                                                <button id="aleButton" type="button"
                                                        class="btn btn btn-default btn-sm"
                                                        onclick="setTypeSearch(1)"
                                                        value="1"></button>
                                                <button id="lagerButton" type="button"
                                                        class="btn btn btn-default btn-sm"
                                                        onclick="setTypeSearch(3)"
                                                        value="3"></button>
                                                <button id="wheatButton" type="button"
                                                        class="btn btn btn-default btn-sm"
                                                        onclick="setTypeSearch(4)"
                                                        value="4"></button>
                                                <button id="wineButton" type="button"
                                                        class="btn btn btn-default btn-sm"
                                                        onclick="setTypeSearch(5)"
                                                        value="5"></button>
                                                <button id="champagneButton" type="button"
                                                        class="btn btn btn-default btn-sm"
                                                        onclick="setTypeSearch(2)"
                                                        value="2"></button>
                                                <button id="allButton" type="button"
                                                        class="btn btn btn-default btn-sm"
                                                        onclick="setTypeSearch()"> 전체
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form:form>

                        <div class="caption pull-right">
                            <span class="caption-subject font-green-sharp bold uppercase">${list_cnt}</span>
                            <span class="caption-helper">건이 조회되었습니다.</span>
                        </div>
                    </div>
                    <div class="portlet-body">


                        <div class="table-responsive" data-pattern="priority-columns"
                             data-focus-btn-icon="fa-asterisk" data-sticky-table-header="true"
                             data-add-display-all-btn="true" data-add-focus-btn="true">


                            <table cellspacing="0"
                                   class="table table-small-font table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th data-hide="phone" data-priority="1">영문명</th>
                                    <th data-hide="phone" data-priority="2">이스트명</th>
                                    <th data-hide="phone" data-priority="4">품번</th>
                                    <th data-hide="phone" data-priority="5">형태</th>
                                    <th data-hide="phone" data-priority="5">용도</th>
                                    <th data-hide="phone" data-priority="6">제조사</th>
                                    <th data-hide="phone" data-priority="6">최소발효도</th>
                                    <th data-hide="phone" data-priority="6">최대발효도</th>
                                    <th data-hide="phone" data-priority="6">최대온도</th>
                                    <th data-hide="phone" data-priority="7">최소온도</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="list">
                                    <tr>
                                        <td>
                                            <a href="/yeast/${list.id}/${list.titleInUrl}">${list.name}</a>
                                        </td>
                                        <td> ${list.koreanName}</td>
                                        <td> ${list.productId}</td>
                                        <td> ${list.typeCode}</td>
                                        <td> ${list.formCode}</td>
                                        <td> ${list.laboratory}</td>
                                        <td>
                                            <span class="badge badge-info badge-roundless">${list.minAttenuation}</span> %
                                        </td>
                                        <td>
                                            <span class="badge badge-success badge-roundless">${list.maxAttenuation}</span> %
                                        </td>
                                        <td><span class="badge badge-info badge-roundless">${list.maxTemperature}</span> °C
                                        </td>
                                        <td><span class="badge badge-success badge-roundless">${list.minTemperature}</span> °C
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
        function getTypeCount() {
            $.get("/yeast/countYeastType", function (data, status) {
                /*alert("에일 값은 : " + data.aleCntName + "\n" + "de 값은 : " + data.aleCnt + "\n");*/
                $("#aleButton").html("(" + data.aleCntName + data.aleCnt + " 건)");
                /*에일*/
                $("#lagerButton").html("(" + data.lagerCntName + data.lagerCnt + " 건)");
                /*라거*/
                $("#wheatButton").html("(" + data.wheatCntName + data.wheatCnt + " 건)");
                /*위트*/
                $("#wineButton").html("(" + data.wineCntName + data.wineCnt + " 건)");
                /*와인*/
                $("#champagneButton").html("(" + data.champagneCntName + data.champagneCnt + " 건)");
                /*샴페인*/
            })
        }

        function search() {

/*            $("#result").html("");
            $("#result").load("/yeast/list", $("#searchForm").serialize());*/
            $("#searchForm").submit();

        }

        function goDetail(seq, titleInUrl) {
            location.href = "/yeast/" + seq + "/" + titleInUrl;
        }

        function setTypeSearch(data) {

            $("#typeCode").val(data);

            search();

        }

        jQuery(document).ready(function ($) {

            getTypeCount();                  //타입별 카운트 (조회영역)
            $("#name").focus();              //이름칸으로 포커스

            $("#search").click(function () {
                search();
            })

            $("#fullSearch").click(function () {
                $("#typeCode").val('');             //TODO : 초기화 함수로 뺄것
                $("#name").val('');
                search();
            })

/*            $("#aleButton").click(setTypeSearch);*/
        });
    </script>
</content>
