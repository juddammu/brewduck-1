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
        <script type="text/javascript" src="/resources/asset/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
        <div class="row">
            <div class="content search-result list col-sm-12 col-md-12">
                <form:form id="board" name="board"  method="POST" action="/board/writeBoardArticle" modelAttribute="board" >
                    <div class="row frame border-radius">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="bottom-padding-mini"></div>
                                <input name="bbsType" id="bbsType" type="hidden"  class="form-control" value="">
                                <div class="col-md-3">
                                    <h6>게시판<span class="required">*</span></h6>
                                </div>
                                <div class="col-md-3">
                                    <select name = "select" id = "select"  style="width:150px">
                                        <option value="">-- 선택 --</option>
                                        <option value="3">자유게시판</option>
                                        <option value="1">공지사항</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 ">
                                    <h6>제목 <span class="required">*</span></h6>
                                </div>
                                <div class="col-md-9">
                                    <input id="nttSj" name="nttSj" type="text"  class="form-control" value="">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <h6>내용 <span class="required">*</span></h6>
                                </div>
                                <div class="col-md-9">
                                    <textarea id="nttCn" name="nttCn"  placeholder="내용 입력..." class="form-control" rows="10" style="width:auto; height:400px;"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <h6>첨부파일</h6>
                                </div>
                                <div class="form-group col-md-9">
                                    <input name="file" type="file" multiple />
                                    <p class="help-block">이미지 사이즈는 270x270으로 올려주세요.</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-actions">
                                    <div class="pull-right">
                                        <button type="button" id ="create" class="btn btn-danger"  onclick="fn_egov_regist_notice()"><i class="icon-ok"></i> 등록 </button>
                                        <button type="button" id = "list" class="btn btn-primary"> 목록 </button>
                                    </div>
                                </div>
                            </div>
                            <div class="bottom-padding-mini"></div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>

<content tag="local_script">
    <script type = "text/javascript">
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
                    alert("게시물을 등록 하시겠습니까?");

                        document.board.action = "<c:url value='/board/writeBoardArticle'/>";
                        document.board.submit();

                } catch(e) {}
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

        function setBoardType(){

            $("#bbsType").val(jQuery(this).val());
            /*search();*/
        }

        $(document).ready(function() {

            $('.slider-element').slider();  //슬라이더 초기화
            $("#nttSj").focus();              //제목칸 포커스
            document.getElementById("loading").style.display="none"; //로딩 아이콘 숨김

        });

        $("#list").click(function(){
            goList();
        });

        $("#select").click(setBoardType);
    </script>
</content>