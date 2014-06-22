<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="breadcrumb-box">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/">홈</a> </li>
            <li><a href="/">게시판</a> </li>
            <li class="active">게시글 작성 - POST ON </li>
        </ul>
    </div>
</div><!-- .breadcrumb-box -->

<section id="main" class="page">
    <header class="page-header">
        <div class="container">
            <h3>게시글 작성 - POST ON</h3>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="content search-result list col-sm-12 col-md-12">

                <form:form id="board" method="POST" action="/board/writeBoardArticle" modelAttribute="board">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-3 ">
                                    <h6>제목 <span class="required">*</span></h6>
                                </div>
                                <div class="col-md-9">
                                        <%--                                        <form:input path="bbsNm" size="60" cssStyle="width:100%" />
                                                                                <br/><form:errors path="bbsNm" />--%>
                                    <input name="nttSj" id="nttSj" type="text"  class="form-control" value="">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <h6>내용 <span class="required">*</span></h6>
                                </div>
                                <div class="col-md-9">
                                        <%--<form:textarea path="bbsIntrcn" cols="75" rows="4" cssStyle="width:100%" />
                                        <br/><form:errors path="bbsIntrcn" />--%>
                                    <textarea id="nttCn" name="nttCn" placeholder="내용 입력..." class="form-control" rows="10"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <h6>첨부파일</h6>
                                </div>
                                <div class="form-group col-md-9">
                                    <input type="file" id="exampleInputFile">
                                    <p class="help-block">Example block-level help text here.</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <h6>게시판 유형 <span class="required">*</span></h6>
                                </div>
                                <div class="col-md-3">
                                    <select name = "bbsTyCode" id = "bbsTyCode" class="styled" >
                                        <option value="0">-- 선택하세요 --</option>
                                        <option value="1">일반게시판</option>
                                        <option value="2">익명게시판</option>
                                        <option value="3">공지게시판</option>
                                        <option value="4">방명록</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="pull-right">
                            <button type="submit" id ="create" class="btn btn-danger"><i class="icon-ok"></i> 등록 </button>
                            <button type="button" id = "list" class="btn btn-primary"> 목록 </button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>

<content tag="local_script">
    <script>


        /*        function create(){
         getLoadingTime();                                                   //로딩 아이콘 호출
         }*/

/*        function fn_egov_regist_brdMstr(){  //등록 버튼 로직
            if (!validateBoardMaster(document.boardMaster)){
                return;
            }

            if (confirm('<spring:message code="common.regist.msg" />')) {
                form = document.board;
                form.action =
                form.submit();
            }
        }*/

        function fn_egov_regist_notice() {

            if (!validateBoard(document.board)){
                return;
            }

            if (confirm('<spring:message code="common.regist.msg" />')) {
                //document.board.onsubmit();
                form = document.board;
                form.action = "<c:url value='/board/writeBoardArticle'/>";
                form.submit();
            }
        }

        function goList(){
            location.href = "/board/freeBoard";
        }



        function getLoadingTime(){
            if($("loading").is("visible")){return;}
            document.getElementById("loading").style.display="block";       //로딩 아이콘 노출
            setTimeout(function(){
                document.getElementById("loading").style.display="none";    //로딩 아이콘 숨김
            },500);
        }


        $(document).ready(function() {

            $('.slider-element').slider();  //슬라이더 초기화
            $("#bbsNm").focus();              //제목칸 포커스
            document.getElementById("loading").style.display="none"; //로딩 아이콘 숨김


        });

        $("#list").click(function(){
            goList();
        });
    </script>
</content>