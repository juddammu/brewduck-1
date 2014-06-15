<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<section id="main" class="page">
    <header class="page-header">
        <div class="container">
            <h3>기타 재료 데이터베이스 - <span class="semi-bold">MISC DATABASE</span></h3>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <article class="content col-sm-12 col-md-12">
                <div class="bs-docs-section">
                    <form:form class="form-no-horizontal-spacing" id="searchForm"  name="searchForm" modelAttribute="paramMisc">
                        <input name="type" type ="hidden" id="type" type="text"  class="form-control" value="">
                        <div>
                            <h5>이름으로 찾기</h5>
                            <div class="input-group col-sm-6">
                                <input name="name" id="name" type="text"  class="form-control" placeholder="기타 재료 이름" onkeypress="javascript:if(event.keyCode == 13){search();}">
                                   <span class="input-group-addon primary">
                                       <span class="arrow"></span>
                                        <i class="fa fa-align-justify"></i>
                                   </span>
                            </div>
                            <br>
                            <h5>타입으로 찾기</h5>
                            <div>
                                <button id="spiceButton" type="button" class="btn btn-xs btn-primary" value="2"> </button>
                                <button id="flavorButton" type="button" class="btn btn-xs btn-primary" value="3"> </button>
                                <button id="waterAgentButton" type="button" class="btn btn-xs btn-primary" value="4"> </button>
                                <button id="finingButton" type="button" class="btn btn-xs btn-primary" value="5"> </button>
                                <button id="herbButton" type="button" class="btn btn-xs btn-primary" value="6"> </button>
                                <button id="otherButton" type="button" class="btn btn-xs btn-primary" value="1"> </button>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="form-actions">
                                <div class="pull-right">
                                    <div id="search" class="btn btn-primary" ><i class="icon-ok"></i> 조회</div>
                                    <div id="fullSearch" class="btn btn-default" ><i class="icon-ok"></i> 전체 조회</div>
                                </div>
                            </div>
                        </div>
                    </form:form>
                    <br>
                    <table class="table table-striped">
                        <tr>
                            <th class="small-cell">NO.</th>
                            <th>이름</th>
                            <th>영문명</th>
                            <th>타입</th>
                            <th>용도</th>
                        </tr>
                        <tbody id="result" name="result">
                        </tbody>
                    </table>
                </div>
            </article>
        </div>
    </div>
</section><!-- #main -->
<%--
<div class="content">
<div class="page-title"> <i class="icon-custom-left"></i>
    <h3>기타 재료 데이터베이스 - <span class="semi-bold">MISC DATABASE</span></h3>
</div>
<div class="row-fluid">
<div class="span12">
<div class="grid simple ">
<div class="grid-title">
    <form:form class="form-no-horizontal-spacing" id="searchForm"  name="searchForm" modelAttribute="paramMisc">
        <input name="type" type ="hidden" id="type" type="text"  class="form-control" value=""> &lt;%&ndash;타입별&ndash;%&gt;

        <div class="row column-seperation">
            <div class="col-md-6">
                <h4>이름으로 찾기</h4>
                <div class="row form-row">
                    <div class="col-md-11 input-group">
                        <input name="name" id="name" type="text"  class="form-control" placeholder="기타 재료 이름" onkeypress="javascript:if(event.keyCode == 13){search();}">
                            <span class="input-group-addon primary">
                            <span class="arrow"></span>
                        <i class="fa fa-align-justify"></i>
                       </span>
                    </div>
                </div>
                <h4>타입으로 찾기</h4>
                <div class="row form-row">
                    <br>
                    <div class="col-md-12">
                        <button id="spiceButton" type="button" class="btn btn-white btn-xs btn-mini" value="2"> </button>
                        <button id="flavorButton" type="button" class="btn btn-white btn-xs btn-mini" value="3"> </button>
                        <button id="waterAgentButton" type="button" class="btn btn-white btn-xs btn-mini" value="4"> </button>
                        <button id="finingButton" type="button" class="btn btn-white btn-xs btn-mini" value="5"> </button>
                        <button id="herbButton" type="button" class="btn btn-white btn-xs btn-mini" value="6"> </button>
                        <button id="otherButton" type="button" class="btn btn-white btn-xs btn-mini" value="1"> </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-actions">
            <div class="pull-right">
                <div id="search" class="btn btn-danger btn-cons" ><i class="icon-ok"></i> 조회</div>
                <div id="fullSearch" class="btn btn-primary btn-cons" ><i class="icon-ok"></i> 전체 조회</div>
            </div>
        </div>
    </form:form>
</div>
<div class="grid-body ">
    <table class="table table-bordered no-more-tables">

    <thead>
        <tr>
            <th class="small-cell"> </th>
            <th>이름</th>
            <th>영문명</th>
            <th>타입</th>
            <th>용도</th>
        </tr>
        </thead>
        <tbody id="result" name="result">
            <div class="progress progress-striped active progress-large" id="loading">
                <div data-percentage="0%" style="width: 45%;" class="progress-bar progress-bar-success"></div>
            </div>
        </tbody>
    </table>
</div>
</div>
</div>
</div>
</div>
--%>


<content tag="local_script">
<script>
    function getTypeCount(){
        $.get("/misc/countMiscType", function(data, status){
            /*alert("에일 값은 : " + data.aleCntName + "\n" + "de 값은 : " + data.aleCnt + "\n");*/
            $("#spiceButton").html("("+data.spiceCntName +data.spiceCnt+" 건)"); /*향신료*/
            $("#flavorButton").html("("+data.flavorCntName +data.flavorCnt+" 건)"); /*풍미*/
            $("#waterAgentButton").html("("+data.waterAgentCntName +data.waterAgentCnt+" 건)"); /*첨가물*/
            $("#finingButton").html("("+data.finingCntName +data.finingCnt+" 건)"); /*청정제*/
            $("#herbButton").html("("+data.herbCntName +data.herbCnt+" 건)"); /*허브*/
            $("#otherButton").html("("+data.otherCntName +data.otherCnt+" 건)"); /*기타*/
        })
    }

    function search(){
        getLoadingTime();                                                   //로딩 아이콘 호출
        $("#result").html("");
        $("#result").load("/misc/list", $("#searchForm").serialize());
        //getResult();
    }

    function goDetail(seq, titleInUrl){
        location.href = "/misc/"+seq+"/"+titleInUrl;
    }

    function setTypeSearch(){
        $("#type").val(jQuery(this).val());
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
        search();                          //조회
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

        $("#spiceButton").click(setTypeSearch);
        $("#flavorButton").click(setTypeSearch);
        $("#waterAgentButton").click(setTypeSearch);
        $("#finingButton").click(setTypeSearch);
        $("#herbButton").click(setTypeSearch);
        $("#otherButton").click(setTypeSearch);
    });
</script>
</content>