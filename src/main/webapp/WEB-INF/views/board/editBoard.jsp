<%--
  Created by IntelliJ IDEA.
  User: ChaJunYoung
  Date: 14. 6. 23
  Time: 오전 1:43
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
            <li><a href="/board/freeBoard">자유 게시판</a></li>
            <li class="active">게시글 수정- POST EDIT</li>
        </ul>
    </div>
</div><!-- .breadcrumb-box -->

<section id="main" class="page">
    <header class="page-header">
        <div class="container">
            <h3>게시글 수정 - POST EDIT </h3>
        </div>
    </header>
    <div class="container">
        <script type="text/javascript" src="/resources/asset/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
        <div class="row">
            <div class="content search-result list col-sm-12 col-md-12">

                <form:form id="board" name="board" method="POST" action="/board/updateBoardArticle" modelAttribute="board">
                    <input type="hidden" id = "nttId" name="nttId" value="<c:out value='${EditBoard.nttId}'/>" />
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-3 ">
                                    <h6>제목 <span class="required">*</span></h6>
                                </div>
                                <div class="col-md-9">
                                    <fieldset>
                                        <input id="nttSj" name ="nttSj" type="text" class="form-control" value="${EditBoard.nttSj}">
                                    </fieldset>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <h6>내용 <span class="required">*</span></h6>
                                </div>
                                <div class="col-md-9">
                                    <textarea name="nttCn" id="nttCn" rows="10" cols="100" style="width:auto; height:400px; ">
                                            ${EditBoard.nttCn}
                                    </textarea>
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
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="pull-right">
                            <button type="button" id ="update" class="btn btn-info"  onclick="fn_egov_regist_notice()"><i class="icon-ok"></i> 저장 </button>
                            <button type="button" id = "delete" class="btn btn-danger"> 삭제 </button>
                            <button type="button" id = "list" class="btn btn-primary"> 목록 </button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>

<content tag="local_script">
    <script type="text/javascript">
        var oEditors = [];
        nhn.husky.EZCreator.createInIFrame({
            oAppRef: oEditors,
            elPlaceHolder: "nttCn",
            sSkinURI: "/resources/asset/smarteditor/SmartEditor2Skin.html",
            fCreator: "createSEditor2"
        });

        function fn_egov_regist_notice() {

            oEditors.getById["nttCn"].exec("UPDATE_CONTENTS_FIELD", []);

            try {
                document.board.action = "<c:url value='/board/updateBoardArticle'/>";
                document.board.submit();
            } catch(e) {}

        }

        function goList(){
            location.href = "/board/freeBoard";
        }

        function goDelete(nttId){

            //TODO : 클릭시, COMMAND VALUE 값 DELETE VALUE로 세팅
            alert("게시물을 삭제 하겠습니까?");

            location.href = "/board/deleteBoardArticle/"+nttId;

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

        $("#delete").click(function(){
            goDelete(${EditBoard.nttId});
        });

    </script>
</content>
