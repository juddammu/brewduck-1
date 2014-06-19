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

<div class="breadcrumb-box">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/">홈</a> </li>
            <li><a href="/">커뮤니티</a> </li>
            <li class="active">자유 게시판 - FREE BOARD</li>
        </ul>
    </div>
</div><!-- .breadcrumb-box -->

<section id="main" class="page">
    <header class="page-header">
        <div class="container">
            <h3>자유 게시판 - <span class="semi-bold">FREE BOARD</span></h3>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="content search-result list col-sm-12 col-md-12">
                    <form:form class="search-form" id="searchForm"  name="searchForm" modelAttribute="paramFermentable">
                    <div class="col-md-12">
                        <input name="sort" id="sort" type="hidden"  class="form-control" value=""> <%--타입별--%>
                        <div class="title-box">
                            <h5>게시판<span class="semi-bold"> 검색</span></h5 >
                        </div>
                            <div class="control-group">
                                <div class ="controls">
                                    <div class ="row">
                                        <div class="col-md-3">
                                            <select name = "select2" id = "select2">
                                                <option id = "titleSort" value="1">제목</option>
                                                <option id = "contentSort"value="2">내용</option>
                                                <option id = "userIdSort" value="3">작성자</option>
                                            </select>
                                        </div>
                                        <div class="input-group col-md-9">
                                            <input id="searchVal" name ="searchVal" type="text" class="form-control" placeholder="검색어 입력" onkeypress="javascript:if(event.keyCode == 13){search();}">
                                                <span class="input-group-addon primary">
                                              <span class="arrow"></span>
                                                <i class="fa fa-search"></i>
                                              </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="form-actions">
                                    <div class="pull-right">
                                        <div id="search" class="btn btn-danger" ><i class="icon-ok"></i>조회</div>
                                        <div id="write" class="btn btn-primary" ><i class="icon-ok"></i>작성</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form:form>
                    <br>
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
                                    <th style="width:150px">제목</th>
                                    <th style="width:70px">작성자</th>
                                    <th style="width:100px">작성일</th>
                                    <th style="width:70px">조회</th>
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
                    </div><%--filter-box--%>
            </div>
        </div>
    </div>
</section>

<content tag="local_script">
    <script>

        function search(){
            $("#result").html("");
            $("#result").load("/board/list", $("#searchForm").serialize());
            alert(($("#searchForm").serialize()));
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

        function setSortSearch(){
            $("#sort").val(jQuery(this).val());
            /*search();*/
        }


        $(document).ready(function() {

            search();                                                      //조회
            $("#serchBar").focus();                                      //이름칸으로 포커스
            document.getElementById("loading").style.display="none"; //로딩 아이콘 숨김

            $("#search").click(function(){
                search();
         });
            $("#select2").click(setSortSearch);
        });
    </script>
</content>