<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<title>발효재료 - FERMENTABLES</title>

<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>발효재료
                <small>FERMENTABLES</small>
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
                        <form:form class="form-horizontal" action="/fermentable/" id="searchForm"
                                   name="searchForm" modelAttribute="paramFermentable">
                            <input name="originCode" id="originCode" type ="hidden" value="" placeholder="발효재료 이름">

                            <div class="form-group">
                                <div class="col-md-2">
                                    <label class="control-label">이름</label>
                                </div>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <input class="form-control" placeholder="검색어를 입력하세요."
                                               name="name" id="name"
                                               value="${paramFermentable.name}">
                                        <span class="input-group-addon"><i id="search" name="search"
                                                                           class="fa fa-search"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-2">
                                    <label class="control-label">원산지</label>
                                </div>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <div>
                                            <div>
                                                <button id="usButton" type="button"
                                                        class="btn btn btn-default btn-sm"
                                                        value="US"
                                                        onclick="setOriginSearch('US')"></button>
                                                <button id="deButton" type="button"
                                                        class="btn btn btn-default btn-sm"
                                                        value="DE"
                                                        onclick="setOriginSearch('DE')"></button>
                                                <button id="ukButton" type="button"
                                                        class="btn btn btn-default btn-sm"
                                                        value="UK"
                                                        onclick="setOriginSearch('UK')"></button>
                                                <button id="beButton" type="button"
                                                        class="btn btn btn-default btn-sm"
                                                        value="BE"
                                                        onclick="setOriginSearch('BE')"></button>
                                                <button id="caButton" type="button"
                                                        class="btn btn btn-default btn-sm"
                                                        value="CA"
                                                        onclick="setOriginSearch('CA')"></button>
                                                <button id="etcButton" type="button"
                                                        class="btn btn btn-default btn-sm"
                                                        value="ETC"
                                                        onclick="setOriginSearch('ETC')"></button>
                                                <button id="allButton" type="button"
                                                        class="btn btn btn-default btn-sm"
                                                        onclick="setOriginSearch()"> 전체
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
                                    <th data-hide="phone" data-priority="2">재료명</th>
                                    <th data-hide="phone" data-priority="4">타입</th>
                                    <th data-hide="phone" data-priority="5">원산지</th>
                                    <th data-hide="phone" data-priority="6">SG</th>
                                    <th data-hide="phone" colspan="2" data-priority="7">색상</th>

                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="list">
                                    <tr>
                                        <td>
                                            <a href="/fermentable/${list.id}/${list.titleInUrl}">${list.name}</a>
                                        </td>
                                        <td> ${list.koreanName}</td>
                                        <td> ${list.typeKorean}</td>
                                        <td> ${list.originKorean}</td>
                                        <td><fmt:formatNumber value="${list.specificGravity}"/>
                                        </td>
                                        <td><div class='input-group'>
                                            <ul class='icheck-colors'>
                                                <li class='purple' style='background:${list.colorCode}'>
                                            </ul>
                                        </div></td>
                                        <td> ${list.color} °L</td>

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
        function goDetail(id, titleInUrl) {
            location.href = "/style/" + id + "/" + titleInUrl;
        }

        function getNationCount() {
            $.get("/fermentable/countFermentableOrigin", function (data, status) {
                //alert("US 값은 : " + data.usCnt + "\n" + "de 값은 : " + data.deCnt + "\n");
                $("#usButton").html("(" + data.usCntName + data.usCnt + " 건)");
                /*미국*/
                $("#deButton").html("(" + data.deCntName + data.deCnt + " 건)");
                /*독일*/
                $("#ukButton").html("(" + data.ukCntName + data.ukCnt + " 건)");
                /*영국*/
                $("#beButton").html("(" + data.beCntName + data.beCnt + " 건)");
                /*벨기에*/
                $("#caButton").html("(" + data.caCntName + data.caCnt + " 건)");
                /*캐나다*/
                $("#etcButton").html("(" + data.etcCntName + data.etcCnt + " 건)");
                /*기타*/
            })
        }

        function setOriginSearch(){
            $("#originCode").val(jQuery(this).val());
            search();
        }

        function search(){

/*            $("#result").html("");
            $("#result").load("/fermentable/", */
            $("#searchForm").submit();
        }

        $("#usButton").click(setOriginSearch);
        $("#deButton").click(setOriginSearch);
        $("#ukButton").click(setOriginSearch);
        $("#beButton").click(setOriginSearch);
        $("#caButton").click(setOriginSearch);
        $("#etcButton").click(setOriginSearch);
        $("#allButton").click(setOriginSearch);

        // This JavaScript Will Replace Checkboxes in dropdown toggles
        jQuery(document).ready(function ($) {

            getNationCount();                  //원산지별 카운트 (조회영역)

            $("#name").focus();

            $("#search").click(function () {
                search();
            })
        });
    </script>
</content>
