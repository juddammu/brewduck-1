<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<title>기타재료 데이터베이스 - MISC DATABASE</title>

<section>
    <ol class="breadcrumb">
        <li><a href="#">홈</a></li>
        <li class="active"><a href="#">재료 데이터베이스</a></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i> 기타재료 데이터베이스 - MISC DATABASE</h3>
    </div>
    <div class="section-body">
        <!-- BEGIN BASIC FORM INPUTS -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined">
                    <div class="box-body no-padding">
                        <form:form class="form-horizontal form-banded form-bordered" action="/misc/list" id="searchForm"  name="searchForm" modelAttribute="paramStyle">
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
                                            <button id="spiceButton" type="button" class="btn btn-xs btn-primary" onclick="setTypeSearch(2)" value="2"> </button>
                                            <button id="flavorButton" type="button" class="btn btn-xs btn-primary" onclick="setTypeSearch(3)" value="3"> </button>
                                            <button id="waterAgentButton" type="button" class="btn btn-xs btn-primary" onclick="setTypeSearch(4)" value="4"> </button>
                                            <button id="finingButton" type="button" class="btn btn-xs btn-primary" onclick="setTypeSearch(5)" value="5"> </button>
                                            <button id="herbButton" type="button" class="btn btn-xs btn-primary" onclick="setTypeSearch(6)" value="6"> </button>
                                            <button id="otherButton" type="button" class="btn btn-xs btn-primary" onclick="setTypeSearch(1)" value="1"> </button>
                                            <button id="allButton" type="button" class="btn btn-xs btn-primary" onclick="setTypeSearch()">  전체  </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form:form>
                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->
        <!-- END BASIC FORM INPUTS -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined" id="result_list">
                    <div class="box-body no-padding style-white">
                        <table class="table table-hover no-margin">
                            <thead>
                                <tr>
                                    <th class="small-cell"> </th>
                                    <th>재료명</th>
                                    <th>영문명</th>
                                    <th>타입</th>
                                    <th>용도</th>
                                </tr>
                            </thead>
                            <tbody id="result">
                            </tbody>
                        </table>
                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->
            <!-- END FORM TOOLS -->
    </div><!--end .section-body -->
</section><!-- #main -->


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

    $(document).ready(function() {

        $("#type").val("");
        $("#name").val("");
        $("#name").focus();              //이름칸으로 포커스
        getTypeCount();                  //타입별 카운트 (조회영역)
        search();                        //조회

        $("#search").onClick(function(){
        search();
        });

        $('#name').on('keyup', function(){
            if(($('#name').val()).length > 2){
                search();
            }

        });
    });
</script>
</content>