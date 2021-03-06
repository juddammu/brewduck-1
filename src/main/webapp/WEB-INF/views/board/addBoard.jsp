<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="breadcrumb-box">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/">홈</a></li>
            <li><a href="/">게시판</a></li>
            <li class="active">게시판 생성 - ADD BOARD</li>
        </ul>
    </div>
</div>
<!-- .breadcrumb-box -->

<section id="main" class="page">
    <header class="page-header">
        <div class="container">
            <h3>게시판 - <span class="semi-bold">생성</span></h3>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="content search-result list col-sm-12 col-md-12">

                <form:form id="board" method="POST" action="/board/insertBoardMaster"
                           modelAttribute="board">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row form-row">
                                <div class="col-md-3 ">
                                    <h6><span class="semi-bold">게시판명 <span class="required">*</span></span>
                                    </h6>
                                </div>
                                <div class="col-md-9">
                                        <%--                                        <form:input path="bbsNm" size="60" cssStyle="width:100%" />
                                                                                <br/><form:errors path="bbsNm" />--%>
                                    <input name="bbsNm" id="bbsNm" type="text" class="form-control"
                                           value="">
                                </div>
                            </div>
                            <div class="row form-row">
                                <div class="col-md-3">
                                    <h6><span class="semi-bold">게시판소개 <span
                                            class="required">*</span></span></h6>
                                </div>
                                <div class="col-md-9">
                                        <%--<form:textarea path="bbsIntrcn" cols="75" rows="4" cssStyle="width:100%" />
                                        <br/><form:errors path="bbsIntrcn" />--%>
                                    <textarea id="bbsIntrcn" name="bbsIntrcn"
                                              placeholder="게시판소개 입력..." class="form-control"
                                              rows="10"></textarea>
                                </div>
                            </div>
                            <div class="row form-row">
                                <div class="col-md-3">
                                    <h6><span class="semi-bold">게시판 유형 <span
                                            class="required">*</span></span></h6>
                                </div>
                                <div class="col-md-3">
                                    <select name="bbsTyCode" id="bbsTyCode" class="styled">
                                        <option value="0">-- 선택하세요 --</option>
                                        <option value="1">일반게시판</option>
                                        <option value="2">익명게시판</option>
                                        <option value="3">공지게시판</option>
                                        <option value="4">방명록</option>
                                    </select>
                                </div>
                                    <%--                                        <form:select path="bbsTyCode">
                                                                                <form:option value='' label="--선택하세요--" />
                                                                                <form:options items="${typeList}" itemValue="code" itemLabel="codeNm"/>
                                                                            </form:select>
                                                                            <br/><form:errors path="bbsTyCode" />--%>

                                <div class="col-md-3">
                                    <h6><span class="semi-bold">게시판 속성 <span
                                            class="required">*</span></span></h6>
                                </div>
                                <div class="col-md-3">
                                    <select name="bbsAttrbCode" id="selectAttr" class="styled">
                                        <option value="0">-- 선택하세요 --</option>
                                        <option value="1">유효게시판</option>
                                        <option value="2">갤러리</option>
                                        <option value="3">일반게시판</option>
                                    </select>
                                </div>

                                    <%--                                        <form:select path="bbsAttrbCode">
                                                                                <form:option value='' label="--선택하세요--" />
                                                                                <form:options items="${attrbList}" itemValue="code" itemLabel="codeNm"/>
                                                                            </form:select>
                                                                            <br/><form:errors path="bbsAttrbCode" />--%>
                            </div>
                            <div class="row form-row">
                                <div class="col-md-3">
                                    <h6><span class="semi-bold">답장가능여부 <span
                                            class="required">*</span></span></h6>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio-inline">
                                        <label>
                                            <input id="replyPossible" type="radio"
                                                   name="replyPosblAt" value="Y" checked="checked">
                                            가능
                                        </label>
                                    </div>
                                    <div class="radio-inline">
                                        <label>
                                            <input id="replyImpossible" type="radio"
                                                   name="replyPosblAt" value="N">
                                            불가능
                                        </label>
                                    </div>
                                        <%--                                        <spring:message code="button.possible" /> : <form:radiobutton path="replyPosblAt"  value="Y" />&nbsp;
                                                                                <spring:message code="button.impossible" /> : <form:radiobutton path="replyPosblAt"  value="N"  />
                                                                                <br/><form:errors path="replyPosblAt" />--%>
                                </div>
                                <div class="col-md-3">
                                    <h6><span class="semi-bold">파일첨부가능여부 <span
                                            class="required">*</span></span></h6>
                                </div>
                                <div class="col-md-3">
                                    <div class="radio-inline">
                                        <label>
                                            <input id="filePossible" type="radio"
                                                   name="fileAtchPosblAt" value="Y"
                                                   checked="checked">
                                            가능
                                        </label>
                                    </div>
                                    <div class="radio-inline">
                                        <label>
                                            <input id="fileImpossible" type="radio"
                                                   name="fileAtchPosblAt" value="N">
                                            불가능
                                        </label>
                                    </div>
                                        <%--                                        <spring:message code="button.possible" /> : <form:radiobutton path="fileAtchPosblAt"  value="Y" />&nbsp;
                                                                                <spring:message code="button.impossible" /> : <form:radiobutton path="fileAtchPosblAt"  value="N"  />
                                                                                <br/><form:errors path="fileAtchPosblAt" />--%>
                                </div>
                            </div>
                            <div class="row form-row">
                                <div class="col-md-3">
                                    <h6><span class="semi-bold">첨부가능파일 숫자 <span
                                            class="required">*</span></span></h6>
                                </div>
                                <div class="col-md-9">
                                    <div>
                                        <select name="posblAtchFileNumber" id="select"
                                                class="styled">
                                            <option value="0">-- 없 음 --</option>
                                            <option value="1">1개</option>
                                            <option value="2">2개</option>
                                            <option value="3">3개</option>
                                        </select>
                                    </div>
                                </div>
                                    <%--                                    <td width="30%" nowrap colspan="3" >
                                                                            <form:select path="posblAtchFileNumber" >
                                                                                <form:option value="0"  label="---선택하세요--" />
                                                                                <form:option value='1'>1개</form:option>
                                                                                <form:option value='2'>2개</form:option>
                                                                                <form:option value='3'>3개</form:option>
                                                                            </form:select>
                                                                            <br/><form:errors path="posblAtchFileNumber" />
                                                                        </td>--%>
                            </div>
                            <div class="row form-row">
                                <div class="col-md-3">
                                    <h6><span class="semi-bold">템플릿 정보 <span
                                            class="required">*</span></span></h6>
                                </div>
                                <div class="col-md-1">
                                    <input class="form-control" id="tmplatNm" name="tmplatNm"
                                           type="text" readonly="readonly">
                                    <input id="tmplatId" type="hidden" value="" name="tmplatId">
                                </div>
                                <div class="icon icon-30"><a href="../icon/search"><i
                                        class="fa fa-search"></i></a></div>
                            </div>
                            <div class="row form-row">
                                <div class="col-md-3">
                                    <h6><span class="semi-bold">추가 선택사항</span></h6>
                                </div>
                                <div class="col-md-9">
                                    <div>
                                        <select name="posblAtchFileNumber" id="select"
                                                class="styled">
                                            <option value="0">-- 미선택 --</option>
                                            <option value="1">댓글</option>
                                            <option value="2">만족도조사</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="pull-right">
                            <button type="submit" name="create" class="btn btn-danger"><i
                                    class="icon-ok"></i> 등록
                            </button>
                            <button type="button" name="list" class="btn btn-primary"> 목록</button>
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

        function fn_egov_regist_brdMstr() {  //등록 버튼 로직
            if (!validateBoardMaster(document.boardMaster)) {
                return;
            }

            if (confirm('<spring:message code="common.regist.msg" />')) {
                form = document.board;
                form.action = "<c:url value='/board/insertBoardMaster'/>";
                form.submit();
            }
        }


        function getLoadingTime() {
            if ($("loading").is("visible")) {
                return;
            }
            document.getElementById("loading").style.display = "block";       //로딩 아이콘 노출
            setTimeout(function () {
                document.getElementById("loading").style.display = "none";    //로딩 아이콘 숨김
            }, 500);
        }


        $(document).ready(function () {

            $('.slider-element').slider();  //슬라이더 초기화
            $("#bbsNm").focus();              //제목칸 포커스
            document.getElementById("loading").style.display = "none"; //로딩 아이콘 숨김


        });
    </script>
</content>
