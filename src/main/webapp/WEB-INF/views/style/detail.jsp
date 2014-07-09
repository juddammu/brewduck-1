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
                                            <a class="btn btn-xs btn-support1">${StyleDetail.examples}</a>
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
                                                <p>향: 몰트향(곡물 향, 달콤하거나 옥수수같은 향 일 수 있음)은 없음~거의없음. 없거나~낮은 홉 향은 스파이시 혹은 플로랄 향. 낮은 수준(풋사과, DMS, 과일향)의 효모특성은 허용됨. 디아세틸 없음 </p>
                                                <p>외관: 매우 옅은 연노랑~옅은 노란색. 거의 지속되지 않는 희고 조밀한 상부거품. 매우 투명. </p>
                                                <p>풍미: 곡물맛 혹은 옥수수 단맛이 살짝나는 크리스피하고 드라이한 풍미. 없거나 낮은 홉 풍미. 약한 홉의 쓴맛. 밸런스는 약간 몰티하거나 약간 쌉싸름한 편이나 상대적으로 균등에 가까움. 탄산화수준이 높을 수 있어서 약한 산미 혹은 드라이한 톡쏘는 맛. 디아세틸 없음. 과일맛 없음. </p>
                                                <p>마우스필: 매우 가벼운 바디감(쌀이나 옥수수 같은 부재료의 높은 비율 때문). 혀에 가벼운 탄산 조임을 동반하는 매우 높은 탄산화. 물맛 같을수 있음 </p>
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
