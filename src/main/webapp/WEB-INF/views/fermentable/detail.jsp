<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="breadcrumb-box">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/">홈</a> </li>
            <li><a href="/">기초재료</a> </li>
            <li class="active">발효재료 데이터베이스 - FERMENTABLE DATABASE</li>
        </ul>
    </div>
</div><!-- .breadcrumb-box -->


<section id="main" class="page">
    <header class="page-header">
        <div class="container">
            <div class="page-title"> <a href="/fermentable/"><i class="icon-custom-left"></i></a>
                <h3>${FermentableDetail.koreanName} - <span class="semi-bold">${FermentableDetail.name}</span></h3>
            </div>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-6">
                <div class="title-box">
                    <h5>발효재료<span class="semi-bold"> 정보</span></h5 >
                </div>
                <div class="row-fluid">
                    <div class="col-md-12">
                        <div class="row pull-left">
                            <h6>원산지 / <span class="semi-bold">타입</span></h6>
                            <div>
                                <button type="button" class="btn btn-warning btn-sm" onclick="goIndex('${FermentableDetail.origin}')">${FermentableDetail.originKorean} ( ${FermentableDetail.origin} )</button>
                                <button type="button" class="btn btn-primary btn-sm">${FermentableDetail.typeKorean}</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-6">
                <div class="title-box">
                    <h5>발효재료<span class="semi-bold"> 내용</span></h5 >
                </div>
                <div class="row-fluid">
                    <div class="col-md-12">
                        <div class="row-fluid">
                            <div class="col-md-12">
                                <p> ${FermentableDetail.notes}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <article class="content">
                <div class="col-md-12 content-block bottom-padding text-center bg">
                    <div>
                        <textarea rows="3"  class="form-control user-status-box post-input"  placeholder="Whats on your mind?"></textarea>
                    </div>
                    <div>
                        <div class="pull-left">
                            <button class="btn btn-default btn-sm" type="button"><i class="fa fa-camera"></i></button>
                            <button class="btn btn-default btn-sm" type="button"><i class="fa fa-map-marker"></i></button>
                        </div>
                        <div class="pull-right">
                            <button class="btn btn-primary btn-sm btn-small" type="button">POST</button>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </article>

            <div class="col-md-12 text-center">
                <a href="javascript:;" class="semi-bold  small-text">전체 보기</a>
            </div>
            <div class="table-responsive" >
                <table class="table">
                    <thead>
                    <tr>
                        <th style="width:30px" >#</th>
                        <th>발효재료명</th>
                        <th style="width:120px">영문명</th>
                        <th style="width:70px">타입</th>
                        <th style="width:70px">원산지</th>
                        <th style="width:70px">수율(%)</th>
                        <th style="width:100px">색상(SRM)</th>
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
        </div>
    </div>
</section>


<content tag="local_script">
    <script>
        function loadAnimatedWidget_pure_white(){
            var icons = new Skycons({"color": "white"});
            icons.play();
        }

        function goDetail(seq, titleInUrl){
            location.href = "/fermentable/"+seq+"/"+titleInUrl;
        }

        function goIndex(origin){
            $("#origin").val(origin);
            search();
            //location.href = "/hop/"+origin;
        }

        function search(){
            //   getLoadingTime();                                                   //로딩 아이콘 호출
            $("#result").html("");
            $("#result").load("/fermentable/list", $("#searchForm").serialize());
            //getResult();
        }


        $(document).ready(function() {
            $('.slider-element').slider();  //슬라이더 초기화
            $('#popover').popover();
            $('.tip').tooltip();
            loadAnimatedWidget_pure_white();
            search();                          //조회
        });

    </script>
</content>