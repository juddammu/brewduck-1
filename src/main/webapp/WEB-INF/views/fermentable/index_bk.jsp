<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<title>발효재료 데이터베이스 - FERMENTABLE DATABASE</title>

<section>
    <ol class="breadcrumb">
        <li><a href="/">홈</a></li>
        <li class="active"><a href="#">재료 데이터베이스</a></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i><a
                href="/fermentable/">발효재료 데이터베이스 - FERMENTABLE DATABASE</a></h3>
    </div>
    <div class="section-body">
        <!-- BEGIN BASIC FORM INPUTS -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined">
                    <div class="box-body no-padding">
                        <form:form class="form-horizontal form-banded form-bordered" id="searchForm"
                                   name="searchForm" modelAttribute="paramFermentable">
                            <input name="origin" type="hidden" id="origin" value="">

                            <div class="form-group">
                                <div class="col-md-2">
                                    <label class="control-label">이름</label>
                                </div>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <input class="form-control" placeholder="검색어를 입력하세요."
                                               name="name" id="name"
                                               onkeypress="if(event.keyCode==13){return false;};">
                                        <span class="input-group-addon"><i id="search" name="search"
                                                                           class="fa fa-search"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-2">
                                    <label class="control-label">원산지</label>
                                </div>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <div>
                                            <div>
                                                <button id="usButton" type="button"
                                                        class="btn btn-support1 btn-sm" value="US"
                                                        onclick="setOriginSearch('US')"></button>
                                                <button id="deButton" type="button"
                                                        class="btn btn-support1 btn-sm" value="DE"
                                                        onclick="setOriginSearch('DE')"></button>
                                                <button id="ukButton" type="button"
                                                        class="btn btn-support1 btn-sm" value="UK"
                                                        onclick="setOriginSearch('UK')"></button>
                                                <button id="beButton" type="button"
                                                        class="btn btn-support1 btn-sm" value="BE"
                                                        onclick="setOriginSearch('BE')"></button>
                                                <button id="caButton" type="button"
                                                        class="btn btn-support1 btn-sm" value="CA"
                                                        onclick="setOriginSearch('CA')"></button>
                                                <button id="etcButton" type="button"
                                                        class="btn btn-support1 btn-sm" value="ETC"
                                                        onclick="setOriginSearch('ETC')"></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form:form>
                    </div>
                    <!--end .box-body -->
                </div>
                <!--end .box -->
            </div>
            <!--end .col-lg-12 -->
        </div>
        <!--end .row -->
        <!-- END BASIC FORM INPUTS -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined" id="result_list">
                    <div class="box-body no-padding style-white">
                        <table class="table table-hover no-margin">
                            <thead>
                            <tr>
                                <th style="width:30px">#</th>
                                <th style="width:150px">재료명</th>
                                <th style="width:150px">영문명</th>
                                <th style="width:70px">타입</th>
                                <th style="width:70px">원산지</th>
                                <th style="width:70px">제조사</th>
                                <th style="width:70px">수율</th>
                                <th style="width:70px">색상</th>
                            </tr>
                            </thead>
                            <tbody id="result">
                            </tbody>
                        </table>
                    </div>
                    <!--end .box-body -->
                </div>
                <!--end .box -->
            </div>
            <!--end .col-lg-12 -->
        </div>
        <!--end .row -->
        <!-- END FORM TOOLS -->
    </div>
    <!--end .section-body -->
</section>
<!-- #main -->

<content tag="local_script">
    <script>
        function getNationCount() {
            $.get("/fermentable/countFermentableOrigin", function (data, status) {
                //alert("US 값은 : " + data.usCnt + "\n" + "de 값은 : " + data.deCnt + "\n");
                $("#usButton").html("(" + data.usCntName + data.usCnt + " 건)");
                /*미국*/
                $("#deButton").html("(" + data.deCntName + data.deCnt + " 건)");
                /*독일*/
                $("#ukButton").html("(" + data.ukCntName + data.ukCnt + " 건)");
                /*영국*/
                $("#beButton").html("(" + data.beCntName + data.beCnt + " 건)");
                /*벨기에*/
                $("#caButton").html("(" + data.caCntName + data.caCnt + " 건)");
                /*캐나다*/
                $("#etcButton").html("(" + data.etcCntName + data.etcCnt + " 건)");
                /*기타*/
            })
        }

        function search() {

            $("#result").html("");
            $("#result").load("/fermentable/list", $("#searchForm").serialize());
        }

        function goDetail(seq, titleInUrl) {
            location.href = "/fermentable/" + seq + "/" + titleInUrl;
        }

        function setOriginSearch(data) {

            $("#origin").val(data);
            /*            $("#origin").val(jQuery(this).attr('value'));*/

            search();
        }

        $(document).ready(function () {

            getNationCount();                  //원산지별 카운트 (조회영역)
            search();                          //조회
            $("#name").focus();              //이름칸으로 포커스

            $("#search").click(function () {
                search();
            });

            $("#fullSearch").click(function () {
                $("#name").val('');             //TODO : 초기화 함수로 뺄것
                $("#type").val('');
                $("#origin").val('');
                search();
            });
        });
    </script>
</content>
