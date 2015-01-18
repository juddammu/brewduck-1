<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<title>기타재료 - MISC</title>

<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>기타재료 <small>MISC</small></h1>
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
                        <form:form class="form-horizontal form-banded form-bordered" id="searchForm"  name="searchForm" modelAttribute="paramMisc">
                            <input name="type"  id="type" type="hidden"  class="form-control" value="">
                            <div class="form-group">
                                <div class="col-md-2">
                                    <label class="control-label">이름</label>
                                </div>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <input class="form-control" placeholder="검색어를 입력하세요." name="name" id="name" onkeypress="if(event.keyCode==13){return false;};"  >
                                        <span class="input-group-addon"><i id="search" name="search" class="fa fa-search"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-2">
                                    <label class="control-label">타입</label>
                                </div>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <div>
                                            <button id="spiceButton" type="button" class="btn btn btn-default btn-sm" onclick="setTypeSearch(2)" value="2"> </button>
                                            <button id="flavorButton" type="button" class="btn btn btn-default btn-sm" onclick="setTypeSearch(3)" value="3"> </button>
                                            <button id="waterAgentButton" type="button" class="btn btn btn-default btn-sm" onclick="setTypeSearch(4)" value="4"> </button>
                                            <button id="finingButton" type="button" class="btn btn btn-default btn-sm" onclick="setTypeSearch(5)" value="5"> </button>
                                            <button id="herbButton" type="button" class="btn btn btn-default btn-sm" onclick="setTypeSearch(6)" value="6"> </button>
                                            <button id="otherButton" type="button" class="btn btn btn-default btn-sm" onclick="setTypeSearch(1)" value="1"> </button>
                                            <button id="allButton" type="button" class="btn btn btn-default btn-sm" onclick="setTypeSearch()">  전체  </button>
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


                        <div class="table-responsive" data-pattern="priority-columns" data-focus-btn-icon="fa-asterisk" data-sticky-table-header="true" data-add-display-all-btn="true" data-add-focus-btn="true">


                            <table cellspacing="0" class="table table-small-font table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th data-hide="phone" data-priority="1">영문명</th>
                                    <th data-hide="phone" data-priority="2">재료명</th>
                                    <th data-hide="phone" data-priority="4">타입</th>
                                    <th data-hide="phone" data-priority="5">용도</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="list">
                                    <tr>
                                        <td><a href="/misc/${list.id}/${list.titleInUrl}">${list.name}</a></td>
                                        <td> ${list.name}</td>
                                        <td> ${list.typeKorean}</td>
                                        <td><span class="badge badge-success">${list.useForKorean}</span></td>
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
    function getTypeCount(){
        $.get("/misc/countMiscType", function(data, status){
            $("#spiceButton").html("("+data.spiceCntName +data.spiceCnt+" 건)"); /*향신료*/
            $("#flavorButton").html("("+data.flavorCntName +data.flavorCnt+" 건)"); /*풍미*/
            $("#waterAgentButton").html("("+data.waterAgentCntName +data.waterAgentCnt+" 건)"); /*첨가물*/
            $("#finingButton").html("("+data.finingCntName +data.finingCnt+" 건)"); /*청정제*/
            $("#herbButton").html("("+data.herbCntName +data.herbCnt+" 건)"); /*허브*/
            $("#otherButton").html("("+data.otherCntName +data.otherCnt+" 건)"); /*기타*/
        })
    }

    function search(){

        var box = $("#result_list");
        boostbox.App.addBoxLoader(box);

        $("#result").html("");
        $("#result").load("/misc/list", $("#searchForm").serialize(), function( response, status, xhr ) {

            if ( status == "success" ) {
                boostbox.App.removeBoxLoader(box);
            }
        });
    }

    function goDetail(seq, titleInUrl){
        location.href = "/misc/"+seq+"/"+titleInUrl;
    }

    function setTypeSearch(data){
        $("#type").val(data);
        search();
    }

    jQuery(document).ready(function($) {

        $("#type").val("");
        $("#name").val("");
        $("#name").focus();              //이름칸으로 포커스
        getTypeCount();                  //타입별 카운트 (조회영역)
        search();                        //조회

        $("#search").click(function(){
        search();
        })

        $('#name').on('keyup', function(){
            if(($('#name').val()).length > 2){
                search();
            }

        })
    });
</script>
</content>