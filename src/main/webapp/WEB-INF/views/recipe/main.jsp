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
<%@ page import="com.brewduck.web.domain.Recipe" %>


<title>${recipeMain.category}</title>

<section>
    <ol class="breadcrumb">
        <li><a href="#">홈</a></li>
        <li class="active"><a href="#">${recipeMain.category} 스타일</a></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i>${recipeMain.category} 스타일 레시피</h3>
    </div>
    <div class="section-body">
        <!-- BEGIN BASIC FORM INPUTS -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined">
                    <div class="box-body">
                        <form:form class="form-horizontal" id="searchForm"  name="searchForm" modelAttribute="recipe">
                            <input name="styleCategory"  id="styleCategory" type="hidden"  class="form-control" value="${recipeMain.categoryNumber}">
                            <input name="brewer"  id="brewer" type="hidden"  class="form-control" value="${recipeMain.brewer}">
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
                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->
        <!-- END BASIC FORM INPUTS -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined" id="result_list">
                    <div class="box-head">
                        <header><h4 class="text-light">레시피 <strong>목록</strong></h4></header>
                    </div>
                    <div class="box-body">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>일련번호</th>
                                <th>레시피명</th>
                                <th>스타일</th>
                                <th>배치용량</th>
                                <th>레시피 완성도</th>
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
            $("#result").load("/recipe/categoryList", $("#searchForm").serialize());
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