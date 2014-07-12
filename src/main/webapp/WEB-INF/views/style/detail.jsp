<%--
  Created by IntelliJ IDEA.
  User: ChaJunYoung
  Date: 14. 6. 11
  Time: 오전 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<section>
    <ol class="breadcrumb">
        <li><a href="#">홈</a></li>
        <li><a href="#">재료 데이터베이스</a></li>
        <li class="active">스타일 데이터베이스 <small>STYLE DATABASE</small></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i>${StyleDetail.koreanName} - <strong class="text-support3">${StyleDetail.name}</strong></h3>
    </div>
    <div class="section-body">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-printable style-transparent">
                    <div class="box-body style-white">
                        <!-- START INVOICE HEADER -->
                        <div class="row">
                            <div class="col-xs-8">
                                <h1 class="text-light"><strong class="text-support3">${StyleDetail.categoryNumber}${StyleDetail.styleLetter}.${StyleDetail.koreanName}</strong></h1>
                            </div>
                            <div class="col-xs-4 text-right">
                                <h1 class="text-light text-gray-light">${StyleDetail.styleGuide}</h1>
                            </div>
                        </div>
                        <!-- END INVOICE HEADER -->

                        <br/>
                        <!-- START INVOICE DESCRIPTION -->
                        <div class="box box-tiles style-gray">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="box-body">
                                        <h3 class="text-light">제원</h3>
                                        <ul class="nav nav-pills nav-stacked nav-transparent">
                                            <li><a href="#"><span class="badge pull-right">${StyleDetail.ogMin} ~ ${StyleDetail.ogMax}</span>초기비중(OG)</a></li>
                                            <li><a href="#"><span class="badge pull-right">${StyleDetail.fgMin} ~ ${StyleDetail.fgMax}</span>종료비중(FG)</a></li>
                                            <li><a href="#"><span class="badge pull-right">${StyleDetail.ibuMin} ~ ${StyleDetail.ibuMax}</span>쓴맛(IBU)</a></li>
                                            <li><a href="#"><span class="badge pull-right">${StyleDetail.colorMin}°L ~ ${StyleDetail.colorMax}°L</span>색상(COLOR)</a></li>
                                            <li><a href="#"><span class="badge pull-right">${StyleDetail.abvMin}% ~ ${StyleDetail.abvMax}%</span>도수(ABV)</a></li>
                                        </ul>
                                        <h3 class="text-light">사례</h3>
                                        <div class="list-tags">
                                            <c:forEach items="${examples}" var="examples">
                                                <a class="btn btn-xs btn-support1">${examples}</a>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <article class="style-white">
                                        <div class="box-body">
                                            <br/>
                                            <p class="lead">설명</p>
                                            <p>${StyleDetail.notes}</p>
                                            <br/>
                                            <div class="well clearfix">
                                                <h4>STYLE GUIDE</h4>
                                                <h5><span class="badge">향 - AROMA</span> </h5>
                                                <p>${StyleDetail.smell} </p>
                                                <h5><span class="badge">외관 - LOOK</span></h5>
                                                <p>${StyleDetail.look} </p>
                                                <h5><span class="badge">풍미 - TASTE</span></h5>
                                                <p>${StyleDetail.taste} </p>
                                                <h5><span class="badge">총평 - OVERALL</span></h5>
                                                <p>${StyleDetail.mouthfeel} </p>
                                                <h5><span class="badge">코멘트 - COMMENT</span></h5>
                                                <p>총평: 매우 상쾌하고 갈증 해소용 </p>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                                <!-- END BLOG POST TEXT -->
                            </div><!--end .row -->
                            <!-- END INVOICE DESCRIPTION -->
                        </div>


                        <!-- END COMMENTS -->

                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->

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
                                    <div class="input-group">
                                        <input class="form-control" placeholder="검색어를 입력하세요." name="name" id="name" onkeypress="if(event.keyCode==13){return false;};"  >
                                        <span class="input-group-addon"><i id="search" name="search" class="fa fa-search"></i></span>
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

    </div><!--end .section-body -->
</section>


<content tag="local_script">
    <script>
        function goDetail(seq, titleInUrl){
            location.href = "/style/"+seq+"/"+titleInUrl;
        }

        function search(){

            $("#result").html("");
            $("#result").load("/style/list", $("#searchForm").serialize());

        }


        $(document).ready(function() {
            search();                          //조회
        });

    </script>
</content>
