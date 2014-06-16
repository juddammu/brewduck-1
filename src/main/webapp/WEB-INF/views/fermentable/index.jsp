<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<section id="main" class="page">
    <header class="page-header">
        <div class="container">
            <h3 class="title">발효재료 데이터베이스 - <span class="semi-bold">FERMENTABLE DATABASE</span></h3>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="content search-result list col-sm-12 col-md-12">
                <form:form class="search-form" id="searchForm"  name="searchForm" modelAttribute="paramFermentable">
                    <input name="origin" type ="hidden" id="origin" value="">
                    <input name="aroma" type ="hidden" id="aroma" value="">
                    <div>
                        <h5>이름으로 찾기</h5>
                        <div class="input-group col-sm-6">
                            <input name="name" id="name" type="text"  class="form-control" placeholder="발효재료 이름" onkeypress="javascript:if(event.keyCode == 13){search();}">
                               <span class="input-group-addon primary">
                                   <span class="arrow"></span>
                                    <i class="fa fa-search"></i>
                               </span>
                        </div>
                        <br>
                        <h5>원산지로 찾기</h5>
                        <div>
                            <button id="usButton" type="button" class="btn btn-xs btn-primary" value="US"> </button>
                            <button id="deButton" type="button" class="btn btn-xs btn-primary" value="DE"> </button>
                            <button id="ukButton" type="button" class="btn btn-xs btn-primary" value="UK"> </button>
                            <button id="beButton" type="button" class="btn btn-xs btn-primary" value="BE"> </button>
                            <button id="caButton" type="button" class="btn btn-xs btn-primary" value="CA"> </button>
                            <button id="etcButton" type="button" class="btn btn-xs btn-primary" value="ETC"> </button>
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
                                <th style="width:30px" >#</th>
                                <th style="width:150px">재료명</th>
                                <th style="width:150px">영문명</th>
                                <th style="width:70px">타입</th>
                                <th style="width:70px">원산지</th>
                                <th style="width:70px">수율</th>
                                <th style="width:70px">색상</th>
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
        </div>
    </div>
</section><!-- #main -->
<%--<div class="content">
    <div class="page-title"> <i class="icon-custom-left"></i>
        <h3>발효재료 데이터베이스 - <span class="semi-bold">FERMENTABLE DATABASE</span></h3>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <div class="grid simple ">
                <div class="grid-title">
                    <form:form class="form-no-horizontal-spacing" id="searchForm"  name="searchForm" modelAttribute="paramFermentable">
                        <input name="type" type ="hidden" id="type" type="text"  class="form-control" value=""> &lt;%&ndash;타입별&ndash;%&gt;
                        <input name="origin" type ="hidden" id="origin" type="text"  class="form-control" value="">&lt;%&ndash;원산지별&ndash;%&gt;

                        <div class="row column-seperation">
                            <div class="col-md-6">
                                <h4>이름으로 찾기</h4>
                                <div class="row form-row">
                                    <div class="col-md-11 input-group">
                                        <input name="name" id="name" type="text"  class="form-control" placeholder="발효재료 이름" onkeypress="javascript:if(event.keyCode == 13){search();}">
                                        <span class="input-group-addon primary">
                                            <span class="arrow"></span>
                                            <i class="fa fa-align-justify"></i>
                                        </span>
                                    </div>
                                </div>
                                <h4>원산지로 찾기</h4>
                                <div class="row form-row">
                                    <br>
                                    <div class="col-md-12">
                                        <button id="usButton" type="button" class="btn btn-white btn-xs btn-mini" value="US"> </button>
                                        <button id="deButton" type="button" class="btn btn-white btn-xs btn-mini" value="DE"> </button>
                                        <button id="ukButton" type="button" class="btn btn-white btn-xs btn-mini" value="UK"> </button>
                                        <button id="beButton" type="button" class="btn btn-white btn-xs btn-mini" value="BE"> </button>
                                        <button id="caButton" type="button" class="btn btn-white btn-xs btn-mini" value="CA"> </button>
                                        <button id="etcButton" type="button" class="btn btn-white btn-xs btn-mini" value="ETC"> </button>
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
                            <th>타입</th>
                            <th>원산지</th>
                            <th>수율</th>
                            <th>색상(SRM)</th>
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
</div>--%>


<content tag="local_script">
    <script>
        function getNationCount(){
            $.get("/fermentable/countFermentableOrigin", function(data, status){
                //alert("US 값은 : " + data.usCnt + "\n" + "de 값은 : " + data.deCnt + "\n");
                $("#usButton").html("("+data.usCntName +data.usCnt+" 건)"); /*미국*/
                $("#deButton").html("("+data.deCntName +data.deCnt+" 건)"); /*독일*/
                $("#ukButton").html("("+data.ukCntName +data.ukCnt+" 건)"); /*영국*/
                $("#beButton").html("("+data.beCntName +data.beCnt+" 건)"); /*벨기에*/
                $("#caButton").html("("+data.caCntName +data.caCnt+" 건)"); /*캐나다*/
                $("#etcButton").html("("+data.etcCntName +data.etcCnt+" 건)"); /*기타*/
            })
        }

        function search(){

            $("#result").html("");
            $("#result").load("/fermentable/list", $("#searchForm").serialize());
        }

        function goDetail(seq, titleInUrl){
            location.href = "/fermentable/"+seq+"/"+titleInUrl;
        }

        function setOriginSearch(){
            $("#origin").val(jQuery(this).val());
            search();
        }

        function getLoadingTime(){
            if($("loading").is("visible")){return;}
            document.getElementById("loading").style.display="block";       //로딩 아이콘 노출
            setTimeout(function(){
                document.getElementById("loading").style.display="none";    //로딩 아이콘 숨김
            },500);
        }


        $(document).ready(function() {

            getNationCount();                  //원산지별 카운트 (조회영역)
            search();                          //조회
            $("#name").focus();              //이름칸으로 포커스
            document.getElementById("loading").style.display="none"; //로딩 아이콘 숨김

            $("#search").click(function(){
                search();
            });

            $("#fullSearch").click(function(){
                $("#name").val('');             //TODO : 초기화 함수로 뺄것
                $("#type").val('');
                $("#origin").val('');
                search();
            });
            $("#usButton").click(setOriginSearch);
            $("#deButton").click(setOriginSearch);
            $("#ukButton").click(setOriginSearch);
            $("#beButton").click(setOriginSearch);
            $("#caButton").click(setOriginSearch);
            $("#etcButton").click(setOriginSearch);
        });
    </script>
</content>