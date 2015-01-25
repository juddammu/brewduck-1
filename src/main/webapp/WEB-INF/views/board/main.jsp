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
<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>${boardList.bbsNm} <small>${boardList.bbsEnNm}</small></h1>
        </div>
        <!-- END PAGE TITLE -->
    </div>
</div>
<!-- END PAGE HEAD -->
<!-- BEGIN PAGE CONTENT -->
<div class="page-content">
    <div class="container-fluid">
        <!-- /.modal -->
        <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM--><%--
        <!-- BEGIN PAGE BREADCRUMB -->
        <ul class="page-breadcrumb breadcrumb">
            <li>
                <a href="#">홈</a><i class="fa fa-circle"></i>
            </li>
            <li>
                <a href="#">재료 데이터베이스</a>
                <i class="fa fa-circle"></i>
            </li>
            <li class="active">
                스타일
            </li>
        </ul>
        <!-- END PAGE BREADCRUMB -->--%>
        <!-- BEGIN PAGE CONTENT INNER -->
        <div class="row">
            <div class="col-md-12">

                <!-- Begin: life time stats -->
                <div class="portlet light">
                    <div class="portlet-title">
                        <form:form class="form-horizontal" action="/board/" id="boardSerchForm"  name="boardSerchForm" modelAttribute="paramBoard">
                            <input name="bbsId"  id="bbsId" type="hidden"  class="form-control" value="${boardList.bbsId}">
                            <input name="sort" id="sort" type="hidden"  class="form-control" value="">

                            <div class="form-group">
                                <div class="col-sm-11">
                                    <select name = "select2" id = "select2" class="form-control input-small">
                                        <option value="">-- 전체 --</option>
                                        <option value="subject">제목</option>
                                        <option value="content">내용</option>
                                        <option value="userId">작성자</option>
                                    </select>
                                    <input type="text" id="name" name="name" class="form-control" placeholder="검색어를 입력하세요." value="${paramBoard.name}">
                                    <button class="btn btn-white btn-single"><i id="search" name="search" class="fa fa-search"></i> 검색</button>
                                </div>
                            </div>
                        </form:form>

                        <div class="caption pull-right">
                            <span class="caption-subject font-green-sharp bold uppercase">${list_cnt}</span>
                            <span class="caption-helper">건이 조회되었습니다.</span>
                        </div>

                    </div>
                        <div class="tm-row tm-right">
                            <form:form method="post" action="/board/write">
                                <input name="bbsId"  id="bbsId" type="hidden"  class="form-control" value="${boardList.bbsId}">
                                <%
                                    if (AuthenticationUtils.isAuthenticated() == true) {
                                %>
                                <button class="btn btn-white btn-single" id="write" name="write">게시물 작성</button>
                                <%
                                    }
                                %>
                            </form:form>
                        </div>
                    </p>
                    <br>
                    <hr>
                </div>
                <div class="tm-main-content">
                    <div class="tm-main-content-inner">
                        <div id="result">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<content tag="local_script">
    <script>

        function search(){

            $("#result").html("");
            $("#result").load("/board/list", $("#boardSerchForm").serialize());

        }

        function goDetail(nttId){
            location.href = "/board/detail/"+nttId;
        }

        function setSortSearch(){

            $("#sort").val(jQuery(this).val());
        }

        // This JavaScript Will Replace Checkboxes in dropdown toggles
        jQuery(document).ready(function($) {

            search();                                                       //조회
            $("#searchVal").focus();                                        //이름칸으로 포커스

        });

        $("#search").click(function(){
            if($("#searchVal").val()=="")
            {
                alert("검색어를 입력하여 주세요.");
                return;
            }
            if($("#select2").val()=="")
            {
                alert("검색구분을 선택하여 주세요.");
                return;
            }
            search();
        });

        $("#select2").click(setSortSearch);

    </script>
</content>