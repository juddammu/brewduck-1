<%--
  Created by IntelliJ IDEA.
  User: ChaJunYoung
  Date: 14. 5. 27
  Time: 오후 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="content">
    <div class="page-title"> <i class="icon-custom-left"></i>
        <h3>게시판 - <span class="semi-bold">Board</span></h3>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <div class="grid simple ">
                <div class="grid-title">
                    <form:form class="form-no-horizontal-spacing" id="searchForm"  name="searchForm" modelAttribute="paramFermentable">
                        <input name="type" type ="hidden" id="type" type="text"  class="form-control" value=""> <%--타입별--%>
                        <input name="origin" type ="hidden" id="origin" type="text"  class="form-control" value=""><%--원산지별--%>
                        <div class="row column-seperation ">
                            <div class="col-md-12">
                                <h4><i class="fa fa-desktop"></i>게시판 <span class="semi-bold">검색</span></h4>
                                <div class="row form-row">
                                    <div class="control-group">
                                        <div class ="controls col-md-11">
                                            <div class="col-md-2">
                                                <select name="select2" class="styled" >
                                                    <option value="title">제목</option>
                                                    <option value="contents">내용</option>
                                                    <option value="userId">작성자</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <form class="search-fieldt" action="#">
                                                    <div class="autocomplete-append">
                                                        <input name="koreanName" id="koreanName" type="text"  class="form-control" placeholder="검색어 입력" onkeypress="javascript:if(event.keyCode == 13){search();}">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions">
                            <div class="pull-right">
                                <div id="search" class="btn btn-danger btn-cons" ><i class="icon-ok"></i>검색</div>
                                <div id="write" class="btn btn-primary btn-cons" ><i class="icon-ok"></i>작성</div>
                            </div>
                        </div>
                    </form:form>
                </div>
                <div class ="controls col-md-12">
                    <div style="margin-top: 10px;">
                        <ul class="nav nav-tabs" id="tab-01">
                            <li class="active"><a href="#free">자유게시판</a></li>
                            <li><a href="#notice">공지사항</a></li>
                            <li><a href="#question">Q&A</a></li>
                        </ul>
                    </div>
                </div>
                    <div class="grid-body no-border email-body">
                        <div class="row-fluid">
                            <div class="row-fluid dataTables_wrapper">
                                <table class="table table-striped table-fixed-layout table-hover">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
                                            <th>조회</th>
                                        </tr>
                                    </thead>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="free">
                                            <tbody id="result" name="result">
<%--                                                <div class="progress progress-striped active progress-large" id="loading">
                                                    <div data-percentage="0%" style="width: 45%;" class="progress-bar progress-bar-success"></div>
                                                </div>--%>
                                            </tbody>
<%--                                            <div class="pull-right margin-top-20">
                                                <div class="dataTables_paginate paging_bootstrap pagination">
                                                    <ul>
                                                        <li class="prev disabled"><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                                                        <li class="active"><a href="#">1</a></li><li><a href="#">2</a></li>
                                                        <li class="next"><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="dataTables_info hidden-xs" id="example_info">Showing <b>1 to 10</b> of 14 entries</div>
                                            </div>--%>
                                        </div>
                                    </div>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="notice">
                                            <tbody id="notice_result" name="result">
<%--                                            <div class="progress progress-striped active progress-large" id="loading">
                                                <div data-percentage="0%" style="width: 45%;" class="progress-bar progress-bar-success"></div>
                                            </div>--%>
                                            </tbody>
                                        </div>
                                    </div>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="question">
                                            <tbody id="question_result" name="result">
<%--                                            <div class="progress progress-striped active progress-large" id="loading">
                                                <div data-percentage="0%" style="width: 45%;" class="progress-bar progress-bar-success"></div>
                                            </div>--%>
                                            </tbody>
                                        </div>
                                    </div>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /media datatable -->
            </div>
        </div>
    </div>
</div>




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
            getLoadingTime();                                                   //로딩 아이콘 호출
            $("#result").html("");
            $("#result").load("/board/list", $("#searchForm").serialize());
            //getResult();
        }

        function goDetail(seq, titleInUrl){
            location.href = "/board/"+seq+"/"+titleInUrl;
        }

        function getLoadingTime(){
            if($("loading").is("visible")){return;}
            document.getElementById("loading").style.display="block";       //로딩 아이콘 노출
            setTimeout(function(){
                document.getElementById("loading").style.display="none";    //로딩 아이콘 숨김
            },500);
        }


        $(document).ready(function() {

            search();                          //조회
            $("#name").focus();              //이름칸으로 포커스
            document.getElementById("loading").style.display="none"; //로딩 아이콘 숨김

            $("#search").click(function(){
                search();
            });
        });
    </script>
</content>