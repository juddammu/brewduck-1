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
        <h3>자유게시판 - <span class="semi-bold">Free Board</span></h3>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <div class="grid simple ">
                <div class="grid-title">
                    <form:form class="form-no-horizontal-spacing" id="searchForm"  name="searchForm" modelAttribute="paramFermentable">
                    <div class="col-md-12">
                        <input name="sort" id="sort" type="text"  class="form-control" value=""> <%--타입별--%>
                            <div class="row column-seperation ">
                                <div class="col-md-6">
                                    <div class="row column-seperation">
                                        <h4><i class="fa fa-desktop"></i>게시판 <span class="semi-bold">검색</span></h4>
                                        <div class="control-group">
                                            <div class ="controls">
                                                <div class ="row form-row">
                                                    <div class="col-md-3">
                                                        <select name = "select2" id = "select2" class="styled" >
                                                            <option id = "titleSort" value="1">제목</option>
                                                            <option id = "contentSort"value="2">내용</option>
                                                            <option id = "userIdSort" value="3">작성자</option>
                                                        </select>
                                                    </div>
                                                    <div class="input-group col-md-9">
                                                        <input id="searchVal" name ="searchVal" type="text" class="form-control" placeholder="검색어 입력" onkeypress="javascript:if(event.keyCode == 13){search();}">
                                                        <span class="input-group-addon primary">
                                                      <span class="arrow"></span>
                                                        <i class="fa fa-align-justify"></i>
                                                      </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-row">
                                <div class="form-actions">
                                    <div class="pull-right">
                                        <div id="search" class="btn btn-danger btn-cons" ><i class="icon-ok"></i>조회</div>
                                        <div id="write" class="btn btn-primary btn-cons" ><i class="icon-ok"></i>작성</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form:form>
                </div>
                <div class="grid-body ">
                    <table class="table table-striped table-fixed-layout table-hover" >
                    <thead>
                        <tr>
                            <th class="small-cell">No.</th>
                            <th class="big-cell">제목</th>
                            <th class="small-cell">작성자</th>
                            <th class="small-cell">작성일</th>
                            <th class="small-cell">조회</th>
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
                <!-- /media datatable -->
            </div>
        </div>
    </div>
</div>




<content tag="local_script">
    <script>

        function search(){
            getLoadingTime();                                                   //로딩 아이콘 호출
            $("#result").html("");
            $("#result").load("/board/list", $("#searchForm").serialize());
            alert(($("#searchForm").serialize()));
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