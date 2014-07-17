<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<section>
    <ol class="breadcrumb">
        <li><a href="#">홈</a></li>
        <li class="active"><a href="#">효모 데이터베이스</a></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i> 효모 데이터베이스 - YESAT DATABASE</h3>
    </div>
    <div class="section-body">
        <!-- BEGIN BASIC FORM INPUTS -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined">
                    <div class="box-body no-padding">
                        <form:form class="form-horizontal form-banded form-bordered" action="/yeast/list" id="searchForm"  name="searchForm" modelAttribute="paramYeast">
                        <input name="type" type ="hidden" id="type" value="">
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
                                <h5>타입</h5>
                            </div>
                            <div class="col-md-10">
                                <div class="input-group">
                                    <div>
                                        <div>
                                            <button id="aleButton" type="button" class="btn btn-xs btn-primary" onclick="setTypeSearch(1)" value="1"> </button>
                                            <button id="lagerButton" type="button" class="btn btn-xs btn-primary" onclick="setTypeSearch(3)" value="3"> </button>
                                            <button id="wheatButton" type="button" class="btn btn-xs btn-primary" onclick="setTypeSearch(4)" value="4"> </button>
                                            <button id="wineButton" type="button" class="btn btn-xs btn-primary" onclick="setTypeSearch(5)" value="5"> </button>
                                            <button id="champagneButton" type="button" class="btn btn-xs btn-primary" onclick="setTypeSearch(2)" value="2"> </button>
                                            <button id="allButton" type="button" class="btn btn-xs btn-primary" onclick="setTypeSearch()">  전체   </button>
                                        </div>
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
                                    <th style="width:30px" >#</th>
                                    <th style="width:150px">이스트명</th>
                                    <th style="width:150px">영문명</th>
                                    <th style="width:70px">타입</th>
                                    <th style="width:70px">형태</th>
                                    <th style="width:70px">최대온도</th>
                                    <th style="width:70px">최소온도</th>
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
        $.get("/yeast/countYeastType", function(data, status){
            /*alert("에일 값은 : " + data.aleCntName + "\n" + "de 값은 : " + data.aleCnt + "\n");*/
            $("#aleButton").html("("+data.aleCntName +data.aleCnt+" 건)"); /*에일*/
            $("#lagerButton").html("("+data.lagerCntName +data.lagerCnt+" 건)"); /*라거*/
            $("#wheatButton").html("("+data.wheatCntName +data.wheatCnt+" 건)"); /*위트*/
            $("#wineButton").html("("+data.wineCntName +data.wineCnt+" 건)"); /*와인*/
            $("#champagneButton").html("("+data.champagneCntName +data.champagneCnt+" 건)"); /*샴페인*/
        })
    }

    function search(){

        $("#result").html("");
        $("#result").load("/yeast/list", $("#searchForm").serialize());

    }

    function goDetail(seq, titleInUrl){
        location.href = "/yeast/"+seq+"/"+titleInUrl;
    }

    function setTypeSearch(data){
        $("#type").val(data);
        search();
    }

    function getLoadingTime(){
        if($("loading").is("visible")){return;}
        document.getElementById("loading").style.display="block";       //로딩 아이콘 노출
        setTimeout(function(){
            document.getElementById("loading").style.display="none";    //로딩 아이콘 숨김
        },500);
    }


    $(document).ready(function() {

        getTypeCount();                  //타입별 카운트 (조회영역)
        search();                        //조회
        $("#name").focus();              //이름칸으로 포커스
        document.getElementById("loading").style.display="none"; //로딩 아이콘 숨김

        $("#search").click(function(){
        search();
        });

        $("#fullSearch").click(function(){
            $("#type").val('');             //TODO : 초기화 함수로 뺄것
            $("#name").val('');
            search();
        });
    });
</script>
</content>