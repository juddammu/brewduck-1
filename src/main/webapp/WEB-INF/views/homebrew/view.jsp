<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<section>
    <ol class="breadcrumb">
        <li><a href="../../html/.html">home</a></li>
        <li class="active">Invoice</li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i> ${recipeDetail.name} <small>${recipeDetail.styleName}</small></h3>
    </div>
    <div class="section-body">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-printable style-transparent">
                    <div class="box-head">
                        <div class="tools">
                            <div class="btn-group">
                                <a class="btn btn-primary" href="javascript:void(0);" onclick="javascript:window.print();"><i class="fa fa-print"></i> 출력</a>
                            </div>
                        </div>
                    </div>
                    <div class="box-body style-white">
                        <!-- START INVOICE HEADER -->
                        <div class="row">
                            <div class="col-xs-8">
                                <h1 class="text-light"><strong class="text-support3"> ${recipeDetail.name}</strong></h1>
                            </div>
                            <div class="col-xs-4 text-right">
                                <h1 class="text-light text-gray-light">
                                <c:if test="${recipeDetail.type=='1'}">
                                    <small>완전 곡물 All Grain</small>
                                </c:if>
                                </h1>
                            </div>
                        </div>
                        <!-- END INVOICE HEADER -->

                        <br/>
                        <!-- START INVOICE DESCRIPTION -->
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="well">
                                    <div class="clearfix">
                                        <div class="pull-left"> INVOICE NO : </div>
                                        <div class="pull-right"> 98653624 </div>
                                    </div>
                                    <div class="clearfix">
                                        <div class="pull-left"> INVOICE DATE : </div>
                                        <div class="pull-right"> 10/02/14 </div>
                                    </div>
                                </div>
                            </div><!--end .col-md-4 -->
                        </div><!--end .row -->
                        <!-- END INVOICE DESCRIPTION -->

                        <br/>
                        <!-- START INVOICE PRODUCTS -->
                        <div class="row">
                            <div class="col-md-12">
                                <table class="table table-hover table-striped no-margin">
                                    <thead>
                                    <tr>
                                        <td colspan="5">
                                            <h3 class="text-light opacity-70">발효 재료 <small>Fermentables</small></h3>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th style="width:60px" class="text-center">#</th>
                                        <th class="text-left">재료명</th>
                                        <th style="width:140px" class="text-right">수량</th>
                                        <th style="width:150px" class="text-right">사용방법</th>
                                        <th style="width:90px" class="text-right">색상</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${recipeDetail.fermentables}" var="fermentables" varStatus="i">
                                        <tr>
                                            <td class="text-center">2</td>
                                            <td>${fermentables.koreanName }</td>
                                            <td class="text-right">${fermentables.amount} kg</td>
                                            <td class="text-right">
                                                <c:choose>
                                                    <c:when test="${fermentables.fermentableUse=='1'}">
                                                        당화 - Mash
                                                    </c:when>
                                                    <c:when test="${fermentables.fermentableUse=='2'}">
                                                        우려내기 - Steep
                                                    </c:when>
                                                    <c:when test="${fermentables.fermentableUse=='3'}">
                                                        끊임 - Boil
                                                    </c:when>
                                                    <c:when test="${fermentables.fermentableUse=='4'}">
                                                        후반 끓임 - Late Boil
                                                    </c:when>
                                                    <c:otherwise>
                                                        -
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td class="text-right">${fermentables.color} °L</td>
                                        </tr>
                                    </c:forEach>
                                    <tr>
                                        <td class="text-right hidden-border"><strong></strong></td>
                                        <td class="text-right hidden-border" colspan="4">
                                            <strong class="text-lg text-support3">SRM : </strong>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div><!--end .row -->
                        <!-- END INVOICE PRODUCTS -->
                        <div class="row">
                            <div class="col-md-12">
                                <table class="table table-hover table-striped no-margin">
                                    <thead>

                                    <tr>
                                        <td colspan="4">
                                            <h3 class="text-light opacity-70">홉 <small>Hops</small></h3>
                                        </td>

                                    </tr>
                                    <tr>
                                        <th class="text-left">재료명</th>
                                        <th style="width:140px" class="text-right">수량</th>
                                        <th style="width:140px" class="text-right">시간</th>
                                        <th style="width:150px" class="text-right">형태</th>
                                        <th style="width:90px" class="text-right">Alpha</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${recipeDetail.hops}" var="hops" varStatus="i">
                                        <tr>
                                            <td>${hops.koreanName }</td>
                                            <td class="text-right">${hops.amount} g</td>
                                            <td class="text-right">${hops.time} min</td>
                                            <td class="text-right">
                                                <c:choose>
                                                    <c:when test="${hops.form=='1'}">
                                                        Plug
                                                    </c:when>
                                                    <c:when test="${hops.form=='2'}">
                                                        -
                                                    </c:when>
                                                    <c:when test="${hops.form=='3'}">
                                                        Leaf
                                                    </c:when>
                                                    <c:when test="${hops.form=='4'}">
                                                        Pellet
                                                    </c:when>
                                                    <c:otherwise>
                                                        -
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td class="text-right">${hops.alpha} %</td>
                                        </tr>
                                    </c:forEach>
                                    <tr>
                                        <td class="text-right hidden-border"><strong></strong></td>
                                        <td class="text-right hidden-border" colspan="4">
                                            <strong class="text-lg text-support3">IBU : </strong>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div><!--end .col-md-12 -->
                        </div><!--end .row -->

                        <div class="row">
                            <div class="col-md-12">
                                <table class="table table-hover border table-striped no-margin">
                                    <thead>

                                    <tr>
                                        <td colspan="4">
                                            <h3 class="text-light opacity-70">효모 <small>Yeasts</small></h3>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>재료명</th>
                                        <th class="text-right" style="width:140px" class="text-center">제조사</th>
                                        <th class="text-right" style="width:100px" class="text-center">ID</th>
                                        <th class="text-right" style="width:140px" class="text-center">발효온도</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${recipeDetail.yeasts}" var="yeasts" varStatus="i">
                                        <tr>
                                            <td>${yeasts.koreanName }</td>
                                            <td class="text-right">${yeasts.laboratory }</td>
                                            <td class="text-right">${yeasts.productId }</td>
                                            <td class="text-right">${yeasts.minTemperature} ~ ${yeasts.maxTemperature}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div><!--end .col-md-12 -->
                        </div><!--end .row -->

                        <div class="row">
                            <div class="col-md-12">
                                <table class="table table-hover border table-striped no-margin">
                                    <thead>

                                    <tr>
                                        <td colspan="4">
                                            <h3 class="text-light opacity-70">첨가물 <small>Extras</small></h3>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>재료명</th>
                                        <th style="width:140px" class="text-right">용량 g</th>
                                        <th style="width:140px" class="text-right">시간 min</th>
                                        <th style="width:90px" class="text-right">용도</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${recipeDetail.miscs}" var="miscs" varStatus="i">
                                        <tr>
                                            <td>${miscs.koreanName}</td>
                                            <td class="text-right">${miscs.amount}</td>
                                            <td class="text-right">${miscs.time}</td>
                                            <td class="text-right">
                                                <c:choose>
                                                    <c:when test="${miscs.miscUse=='1'}">
                                                        Mash
                                                    </c:when>
                                                    <c:when test="${miscs.miscUse=='2'}">
                                                        Boil
                                                    </c:when>
                                                    <c:when test="${miscs.miscUse=='3'}">
                                                        Primary
                                                    </c:when>
                                                    <c:when test="${miscs.miscUse=='4'}">
                                                        Secondary
                                                    </c:when>
                                                    <c:when test="${miscs.miscUse=='5'}">
                                                        Bottle
                                                    </c:when>
                                                    <c:when test="${miscs.miscUse=='6'}">
                                                        Keg
                                                    </c:when>
                                                    <c:otherwise>
                                                        -
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div><!--end .col-md-12 -->
                        </div><!--end .row -->
                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->
    </div><!--end .section-body -->
</section>
<content tag="local_script">
    <script>
        $(document).ready(function() {
          //  alert(${recipeDetail.batchSize});
        });
    </script>
</content>