<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<section id="main" class="page">
    <header class="page-header">
        <div class="container">
            <h3>스타일 데이터베이스 - <span class="semi-bold">STYLE DATABASE</span></h3>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <article class="content col-sm-12 col-md-12">
                <div class="bs-docs-section">
                    <form class="form-no-horizontal-spacing" id="searchForm"  name="searchForm" modelAttribute="paramStyle">
                        <input name="origin" type ="hidden" id="origin" type="text"  class="form-control" value="">
                        <input name="aroma" type ="hidden" id="aroma" type="text"  class="form-control" value="">
                        <div>
                            <h5>이름으로 찾기</h5>
                            <div class="input-group col-sm-6">
                                <input name="name" id="name" type="text"  class="form-control" placeholder="스타일 이름" onkeypress="javascript:if(event.keyCode == 13){search();}">
                                        <span class="input-group-addon primary">
                                            <span class="arrow"></span>
                                            <i class="fa fa-align-justify"></i>
                                       </span>
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
                    </form>
                    <br>
                    <table class="table table-striped">
                        <tr>
                            <th class="small-cell">NO.</th>
                            <th>이름</th>
                            <th>영문명</th>
                            <th>초기비중(OG)</th>
                            <th>종료비중(FG)</th>
                            <th>쓴맛(IBU)</th>
                            <th>색상(COLOR)</th>
                            <th>도수(ABV)</th>
                        </tr>
                        <tbody id="result" name="result">
                        </tbody>
                    </table>
                </div>
            </article>
        </div>
    </div>
</section><!-- #main -->

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