<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="breadcrumb-box">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/">홈</a> </li>
            <li><a href="/">기초재료</a> </li>
            <li class="active">스타일 데이터베이스 - STYLE DATABASE</li>
        </ul>
    </div>
</div><!-- .breadcrumb-box -->

<section id="main" class="page">
    <header class="page-header">
        <div class="container">
            <h1 class="title">스타일 데이터베이스 - <span class="semi-bold">STYLE DATABASE</span></h1>
        </div>
    </header>

    <div class="container">
    <div class="row">
    <div class="content search-result list col-sm-12 col-md-12">
    <form:form class="search-form" type="search" id="searchForm"  name="searchForm" modelAttribute="paramStyle">
        <input class="search-string form-control" placeholder="검색어를 입력하세요." name="name" id="name"   onkeypress="if(event.keyCode==13){return false;};"  >
        <button class="search-submit">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
			  <path fill="#231F20" d="M12.001,10l-0.5,0.5l-0.79-0.79c0.806-1.021,1.29-2.308,1.29-3.71c0-3.313-2.687-6-6-6C2.687,0,0,2.687,0,6
			  s2.687,6,6,6c1.402,0,2.688-0.484,3.71-1.29l0.79,0.79l-0.5,0.5l4,4l2-2L12.001,10z M6,10c-2.206,0-4-1.794-4-4s1.794-4,4-4
			  s4,1.794,4,4S8.206,10,6,10z"></path>
			</svg>
        </button>

    </form:form>



    <div class="filter-box">
    <div class="row">
        <div class="col-sm-7 col-md-7 btn-group filter-buttons filter-list">
            <div class="clearfix"></div>
        </div><!-- .filter-buttons -->

        <div class="text-results col-sm-5 col-md-5">
            <i>Results 1-10 of 100 for 'Sony'</i>
        </div>
    </div>

    <div class="clearfix"></div>

    <div class="table-responsive" >
        <table class="table">
            <thead>
            <tr>
                <th>#</th>
                <th>스타일명</th>
                <th>영문명</th>
                <th>초기비중</th>
                <th>최종비중</th>
                <th>IBU</th>
                <th>SRM</th>
                <th>ABV</th>
            </tr>
            </thead>
            <tbody id="result">


            </tbody>
        </table>
    </div>

    <div class="pagination-box">
        <ul class="pagination">
            <li class="disabled"><a href="#"><i class="fa fa-angle-left"></i></a></li>
            <li class="active"><span>1</span></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li class="disabled"><a href="#">...</a></li>
            <li><a href="#">9</a></li>
            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
        </ul>
        <i class="pagination-text">Displaying 1 to 10 (of 100 posts)</i>
    </div><!-- .pagination-box -->
    </div><!-- .content -->
    </div>
    </div><!-- .container -->
</section><!-- #main -->

</section><!-- #main -->

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