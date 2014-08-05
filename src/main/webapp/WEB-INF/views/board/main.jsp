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
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ page import="com.brewduck.web.domain.Account" %>
<%@ page import="com.brewduck.web.domain.Board" %>


<title>${boardList.bbsNm} - ${boardList.bbsEnNm}</title>

<section>
    <ol class="breadcrumb">
        <li><a href="#">홈</a></li>
        <li class="active"><a href="#">${boardList.bbsNm} - ${boardList.bbsEnNm}</a></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i>${boardList.bbsNm} - ${boardList.bbsEnNm}</h3>
    </div>
    <div class="section-body">
        <!-- BEGIN BASIC FORM INPUTS -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined">
                    <div class="box-body">
                        <form:form class="form-horizontal" id="searchForm"  name="searchForm" modelAttribute="board">
                            <input name="bbsId"  id="bbsId" type="hidden"  class="form-control" value="${boardList.bbsId}">
                            <div class="form-group">
                                <input name="sort" id="sort" type="hidden"  class="form-control" value="">
                                <div class="col-md-2">
                                    <select class="form-control select2-active" name = "select2" id = "select2">
                                        <option value="">-- 전체 --</option>
                                        <option value="subject">제목</option>
                                        <option value="content">내용</option>
                                        <option value="userId">작성자</option>
                                    </select>
                                </div>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <input class="form-control" placeholder="검색어를 입력하세요." name="searchVal" id="searchVal" onkeypress="if(event.keyCode==13){return false;};"  >
                                        <span class="input-group-addon"><i id="search" name="search" class="fa fa-search"></i></span>
                                    </div>
                                </div>
                            </div>
                        </form:form>
                        <form:form class="form-horizontal" method="post" action="/board/write">
                            <input name="bbsId"  id="bbsId" type="hidden"  class="form-control" value="${boardList.bbsId}">
                            <div class="form-group">
                                <div class="col-md-2">
                                    <%
                                        if (AuthenticationUtils.isAuthenticated() == true) {
                                    %>
                                    <button type="submit" class="btn btn-primary" id="write" name="write">게시물 작성</button>
                                    <%
                                        }
                                    %>
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
                                <th style="width:300px">제목</th>
                                <th style="width:40px">작성자</th>
                                <th style="width:40px">작성일</th>
                                <th style="width:30px">조회</th>
                            </tr>
                            </thead>
                            <tbody id="result">
                            </tbody>
                        </table>
                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->
    <!-- END FORM TOOLS -->
    </div><!--end .section-body -->
</section><!-- #main -->

<content tag="local_script">
    <script>

        function search(){

            $("#result").html("");
            $("#result").load("/board/list", $("#searchForm").serialize());
        }

        function goDetail(nttId){
            location.href = "/board/detail/"+nttId;
        }

        function setSortSearch(){

            $("#sort").val(jQuery(this).val());
        }

        $(document).ready(function() {

            search();                                                       //조회
            $("#searchVal").focus();                                        //이름칸으로 포커스

        });

        $("#search").click(function(){
            search();
        });

        $("#select2").click(setSortSearch);

    </script>
</content>