<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="content">
<div class="page-title"> <i class="icon-custom-left"></i>
    <h3>스타일 데이터베이스 - <span class="semi-bold">STYLE DATABASE</span></h3>
</div>
<div class="row-fluid">
<div class="span12">
<div class="grid simple ">
<div class="grid-title">
    <form:form class="form-no-horizontal-spacing" id="searchForm"  name="searchForm" modelAttribute="paramStyle">
        <input name="origin" type ="hidden" id="origin" type="text"  class="form-control" value=""> <%--국가별--%>
        <input name="aroma" type ="hidden" id="aroma" type="text"  class="form-control" value=""> <%--전체/ 향 /쓴맛--%>

        <div class="row column-seperation">
            <div class="col-md-6">
                <h4>이름으로 찾기</h4>
                <div class="row form-row">
                    <div class="col-md-11 input-group">
                        <input name="name" id="name" type="text"  class="form-control" placeholder="스타일 이름" onkeypress="javascript:if(event.keyCode == 13){search();}">
                        <span class="input-group-addon primary">
                            <span class="arrow"></span>
                            <i class="fa fa-align-justify"></i>
                       </span>
                    </div>
                    <!--div class="col-md-1" id="loading">
                        <img style="float: left;" alt="" src="/resources/landing/images/supersized-progress.gif" />
                    </div-->
                </div>
                <div class="row form-row">
                    <br>
                    <div class="col-md-12">

                    </div>
                </div>
                <div class="row form-row">
                    <br>



                </div>
                <div class="row form-row">
                    <br>
                    <br>
                    <div class="col-md-12">

                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <h4>수치로 찾기 (기능 구현중)</h4>
                <div class="row">
                    <div class="slider sucess col-md-4">
                        <span class="semi-bold">비중 (Gravity)</span>
                        <p>어떤 물질의 질량과 이것과 같은 부피를 ... (더보기) </p>
                    </div>
                    <div class="slider warning col-md-8">
                        <input type="text" class="slider-element form-control" value="" data-slider-min="1" data-slider-max="70" data-slider-step="1" data-slider-value="40" data-slider-orientation="horizontal" data-slider-selection="after" data-slider-tooltip="hide">
                    </div>
                </div>
                <div class="row form-row">
                    <div class="slider sucess col-md-4">
                        <span class="semi-bold">쓴맛 (IBU)</span>
                        <p>맥주에 쓴맛을 나타내는 방법의 하나로  ...(더보기) </p>
                    </div>
                    <div class="slider warning col-md-8">
                        <input type="text" class="slider-element form-control" value="" data-slider-min="1" data-slider-max="70" data-slider-step="1" data-slider-value="40" data-slider-orientation="horizontal" data-slider-selection="after" data-slider-tooltip="hide">
                    </div>
                </div>
                <div class="row form-row">
                    <div class="slider col-md-4">
                        <span class="semi-bold">색상 (ABV)</span>
                        <p>ABV 는...(더보기) </p>
                    </div>
                    <div class="slider info col-md-8">
                        <input type="text"  data-slider-value="[10,20]" data-slider-step="5" data-slider-max="100" data-slider-min="10" value="" class="slider-element form-control" data-slider-selection="after">
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
            <th>초기비중(OG)</th>
            <th>종료비중(FG)</th>
            <th>쓴맛(IBU)</th>
            <th>색상(COLOR)</th>
            <th>도수(ABV)</th>
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


<content tag="local_script">
<script>


    function search(){
        getLoadingTime();                                                   //로딩 아이콘 호출

        $("#result").html("");
        $("#result").load("/style/list", $("#searchForm").serialize());
        //getResult();
    }

    function goDetail(seq, titleInUrl){
        location.href = "/style/"+seq+"/"+titleInUrl;
    }


    function getLoadingTime(){
        if($("loading").is("visible")){return;}
        document.getElementById("loading").style.display="block";       //로딩 아이콘 노출
        setTimeout(function(){
            document.getElementById("loading").style.display="none";    //로딩 아이콘 숨김
        },500);
    }

    $(document).ready(function() {

        $('.slider-element').slider();  //슬라이더 초기화
        search();                          //조회
        $("#name").focus();              //이름칸으로 포커스
        document.getElementById("loading").style.display="none"; //로딩 아이콘 숨김

        $("#search").click(function(){
            search();
        });

        $("#fullSearch").click(function(){
            $("#name").val('');             //TODO : 초기화 함수로 뺄것
            $("#origin").val('');
            $("#aroma").val('');
            search();
        });
    });
</script>
</content>