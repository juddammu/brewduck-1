<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<section>
<ol class="breadcrumb">
    <li><a href="#">홈</a></li>
    <li class="active"><a href="#">재료 데이터베이스</a></li>
</ol>
<div class="section-header">
    <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i> 스타일 데이터베이스 - STYLE DATABASE</h3>
</div>
<div class="section-body">

<!-- BEGIN BASIC FORM INPUTS -->
<div class="row">
    <div class="col-lg-12">
    <div class="box box-outlined">
    <div class="box-body no-padding">
    <form:form class="form-horizontal form-banded form-bordered" action="/style/list" id="searchForm"  name="searchForm" modelAttribute="paramStyle">
    <div class="form-group">
        <div class="col-md-2">
            <label class="control-label">이름</label>
        </div>
        <div class="col-md-10">
                <input class="search-string form-control" placeholder="검색어를 입력하세요." name="name" id="name" onkeypress="if(event.keyCode==13){return false;};"  >
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
            <div class="box box-outlined">
                <div class="box-body no-padding style-white">
                    <table class="table table-hover no-margin">
                        <thead>
                        <tr>
                            <th style="width:30px" >#</th>
                            <th style="width:150px">스타일명</th>
                            <th style="width:150px">영문명</th>
                            <th style="width:70px">초기비중</th>
                            <th style="width:70px">최종비중</th>
                            <th style="width:70px">IBU</th>
                            <th style="width:70px">SRM</th>
                            <th style="width:70px">ABV</th>
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



</section>

<content tag="local_script">
    <script>


        function search(){
            //getLoadingTime();
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