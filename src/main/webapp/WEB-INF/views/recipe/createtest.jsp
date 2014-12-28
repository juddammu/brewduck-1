<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="row">
<div class="col-lg-12">
    <div class="box">
        <!-- /.box-header -->
        <div class="box-body">



            <form class="bs-example bs-example-form" role="form">
                <div class="row">
                    <div class="col-lg-12">
                        <input class="form-control input-lg" type="text" placeholder="레시피 이름">
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <div class="radio">
                                <label class="radio-inline btn-radio-primary-inverse active">
                                    <input type="radio" id="type" name="type" value="1" checked> 완전 곡물 - All Grain
                                </label>
                                <label class="radio-inline btn-radio-primary-inverse">
                                    <input type="radio" id="type" name="type" value="2"> 부분곡물 - Partial Mash
                                </label>
                                <label class="radio-inline btn-radio-primary-inverse">
                                    <input type="radio" id="type" name="type" value="3"> 원액 캔 - Extract
                                </label>
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-8">
                    </div>
                    <!-- /.col-lg-6 -->
                </div>
                <!-- /.row -->
            </form>
            <div class="row">
            <div class="col-lg-12">

            </div>
                <div class="col-lg-5">
                        <div class="box">
                            <ul class="timeline">
                                <!-- timeline item -->
                                <li>
                                    <i class="fa fontello-sunrise bg-green"></i>

                                    <div class="timeline-item bg-green">
                                        <h3 style="padding: 15px 20px 0 20px;" class="timeline-header text-green  no-border">
                                            <span class="text-white"><i class="fontello-pen"></i>&nbsp;&nbsp;스타일 마법사</span>
                                            <span class="text-white pull-right fontello-wrench-outline"></span>
                                        </h3>

                                        <div class="timeline-body ">
                                        <span>
                                            <br>* 발효재료를 더 넣어보세요.
                                            <br>* 효모를 넣어보세요.

                                            <small>4.0/10.0</small>
                                        </span>

                                        </div>
                                        <div class='timeline-footer'>
                                            <a class="btn btn-app">
                                                <span class="badge bg-blue">PASS</span>
                                                <i class="fa fa-flask"></i> OG / FG
                                            </a>
                                            <a class="btn btn-app">
                                                <span class="badge bg-red">FAIL</span>
                                                <i class="fa fontello-beer-1"></i> SRM
                                            </a>
                                            <a class="btn btn-app">
                                                <span class="badge bg-blue">PASS</span>
                                                <i class="fa fontello-bell"></i> IBU
                                            </a>
                                            <a class="btn btn-app">
                                                <span class="badge bg-red">FAIL</span>
                                                <i class="fa fontello-beer"></i> ABV
                                            </a>
                                            <a class="btn btn-app">
                                                <i class="fa  fa-book"></i> 가이드
                                            </a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>


                </div>
                <div class="col-sm-7 invoice-col">
                    <p class="lead">SPEC</p>
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <th style="width:20%">OG:</th>
                                <td>1.048 ~ 1.056</td>
                            </tr>
                            <tr>
                                <th>FG:</th>
                                <td>1.048 ~ 1.056</td>
                            </tr>
                            <tr>
                                <th>SRM:</th>
                                <td>4 ~ 6</td>
                            </tr>
                            <tr>
                                <th>IBU:</th>
                                <td>4 ~ 6</td>
                            </tr>
                            <tr>
                                <th>ABV:</th>
                                <td>2.8 ~ 4.2</td>
                            </tr>
                        </table>
                    </div>
                </div>


            </div>
            <div class="row invoice-info">

            <ul class="nav nav-tabs">
                    <li class="active"><a href="#home" data-toggle="tab">재료 구성</a></li>
                    <li><a href="#svn" data-toggle="tab">배치 사이즈</a></li>
                    <li><a href="#ios" data-toggle="tab">노트</a></li>
                    <li><a href="#dotnet" data-toggle="tab">제어판</a></li>
                </ul>
                <div class="col-lg-12 tab-content">
                    <div class="box-header tab-pane fade in active" id="home">
                        <!-- tools box -->
                        <h3 class="page-header">
                            발효 재료 <small>Fermentables</small>
                            <button class="btn pull-right bg-red"  data-toggle="modal" data-target="#myModal" style="margin-right: 5px;"><i class="fa fa-lemon-o"></i> :: 발효재료 추가</button>
                        </h3>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>재료명</th>
                                    <th>수량</th>
                                    <th>사용방법</th>
                                    <th>색상</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${recipeDetail.fermentables}" var="fermentables" varStatus="i">
                                    <tr class="bg-white">
                                        <td>${fermentables.koreanName }</td>
                                        <td>${fermentables.amount} kg</td>
                                        <td>
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
                                        <td>${fermentables.color} °L</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">
                                            <span aria-hidden="true">&times;</span>
                                            <span class="sr-only">닫기</span>
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel">발효재료 Fermentables</h4>
                                    </div>
                                    <div class="modal-body">


                                        <div class="table-responsive">
                                            <table class="table">
                                                <tr>
                                                    <th style="width:20%">OG:</th>
                                                    <td>1.048 ~ 1.056</td>
                                                </tr>
                                                <tr>
                                                    <th>FG:</th>
                                                    <td>1.048 ~ 1.056</td>
                                                </tr>
                                                <tr>
                                                    <th>SRM:</th>
                                                    <td>4 ~ 6</td>
                                                </tr>
                                                <tr>
                                                    <th>IBU:</th>
                                                    <td>4 ~ 6</td>
                                                </tr>
                                                <tr>
                                                    <th>ABV:</th>
                                                    <td>2.8 ~ 4.2</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Save changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="box-header tab-pane fade" id="svn">
                        <!-- tools box -->
                        <h3 class="page-header">
                            발효 재료 <small>Fermentables</small>
                            <button class="btn pull-right bg-red"  data-toggle="modal" data-target="#myModal" style="margin-right: 5px;"><i class="fa fa-lemon-o"></i> :: 발효재료 추가</button>
                        </h3>
                        <div class="table-responsive">
                            <table class="table">

                                <thead>
                                <tr>
                                    <th>재료명</th>
                                    <th>수량</th>
                                    <th>사용방법</th>
                                    <th>색상</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${recipeDetail.fermentables}" var="fermentables" varStatus="i">
                                    <tr class="bg-white">
                                        <td>${fermentables.koreanName }</td>
                                        <td>${fermentables.amount} kg</td>
                                        <td>
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
                                        <td>${fermentables.color} °L</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">
                                            <span aria-hidden="true">&times;</span>
                                            <span class="sr-only">닫기</span>
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel">발효재료 Fermentables</h4>
                                    </div>
                                    <div class="modal-body">


                                        <div class="table-responsive">
                                            <table class="table">
                                                <tr>
                                                    <th style="width:20%">OG:</th>
                                                    <td>1.048 ~ 1.056</td>
                                                </tr>
                                                <tr>
                                                    <th>FG:</th>
                                                    <td>1.048 ~ 1.056</td>
                                                </tr>
                                                <tr>
                                                    <th>SRM:</th>
                                                    <td>4 ~ 6</td>
                                                </tr>
                                                <tr>
                                                    <th>IBU:</th>
                                                    <td>4 ~ 6</td>
                                                </tr>
                                                <tr>
                                                    <th>ABV:</th>
                                                    <td>2.8 ~ 4.2</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Save changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- /.col -->
            </div>
        </div>
        <!-- /.box-body -->
    </div>
       <!-- /.box -->
</div>
</div>



<content tag="local_script">
    <script type="text/javascript">
        $(document).ready(function() {

            $("#styleSeq").select2({
                placeholder: "Select a State",
                allowClear: true
            });

        });

        $(function(){
            $(".dropdown-menu li a").click(function(){

                $(".btn:first-child").text($(this).text());
                $(".btn:first-child").val($(this).text());

            });

        });
    </script>
</content>