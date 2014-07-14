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
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ page import="com.brewduck.web.domain.Account" %>
<%@ page import="com.brewduck.web.domain.Board" %>

<div class="breadcrumb-box">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/">홈</a> </li>
            <li><a href="/">커뮤니티</a> </li>
            <li><a href="/board/freeBoard">${BoardDetail.bbsNm}</a></li>
            <li class="active">게시글 - POST </li>
        </ul>
    </div>
</div><!-- .breadcrumb-box -->

<section id="main" class="page">
    <header class="page-header">
        <div class="container">
            <h3>게시글 - POST </h3>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="content search-result list col-sm-12 col-md-12">
                <form:form id="boardForm" name="boardForm" method="GET" action="/board/writeReply" modelAttribute="paramBoard">
                    <input name="bbsId"  id="bbsId" type="text"  class="form-control" value="${BoardDetail.bbsId}">
                    <input name="nttId"  id="nttId" type="text"  class="form-control" value="${BoardDetail.nttId}">
                    <div class="row frame border-radius">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="bottom-padding-mini"></div>
                                <div class="col-md-11  text-right">
                                    <h6>
                                        <span>${BoardDetail.insertId}, </span>
                                        <span class="time">${BoardDetail.insertDate}</span>
                                    </h6>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2  text-center">
                                    <h6>제 목 <span class="required">*</span></h6>
                                </div>
                                <div class="col-md-9 content-block text-left frame border-radius">
                                    ${BoardDetail.nttSj}
                                </div>
                            </div>
                            <div class="bottom-padding-mini"></div>
                            <div class="row">
                                <div class="col-md-2  text-center">
                                    <h6>내 용 <span class="required">*</span></h6>
                                </div>
                                <div class="col-md-9 content-block text-left bottom-padding frame border-radius">
                                    <div class="con_text">
                                        ${BoardDetail.nttCn}
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2  text-center">
                                    <h6>첨부파일</h6>
                                </div>
                                <div class="form-group col-md-10">
                                    <input type="file" id="exampleInputFile">
                                    <p class="help-block">Example block-level help text here.</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-11 form-actions">
                                <div class="pull-right">
                                    <%
                                        Object id = request.getAttribute("account");
                                        Object regiId = request.getAttribute("regiId");
                                        Object loginId = request.getAttribute("loginId");

                                        if(loginId.equals(regiId)){
                                    %>
                                    <button type="button" id ="edit" class="btn btn-danger"> 수정 </button>

                                    <%
                                        }
                                    %>
                                    <button type="button" id = "list" class="btn btn-primary"> 목록 </button>
                                </div>
                            </div>
                        </div>
                        <div class="bottom-padding-mini"></div>
                        <div class="row aligncenter">
                            <div class="col-md-12">
                                <div class="text-center bg border-radius">
                                    <table class="table">
                                        <tbody id="result">
                                        </tbody>
                                    </table>
                                    <%
                                        if (AuthenticationUtils.isAuthenticated() == true) {
                                    %>
                                    <div>
                                        <textarea id="amswer" name="amswer" class="form-control" style=" width:98%; height: 75px; margin: 10px;"></textarea>
                                    </div>
                                    <div class="aligncenter">
                                        <button type="submit" id = "reply" name="reply" class="btn btn-primary" style=" width:98%; height: 50px;"> 댓글입력 </button>
                                    </div>
                                    <%
                                        }else {
                                    %>
                                    <div class="alert alert-danger fade in border-radius" style="margin: 8px;"><i class="fa fa-warning"></i> 로그인 후에 댓글을 작성 할 수 있습니다.
                                        <button type="button" class="close" data-dismiss="alert">×</button>
                                    </div>
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>

<content tag="local_script">
    <script>

        function goList(bbsId){
            if(bbsId==3)
            {
                location.href = "/board/freeBoard";
            }
            if(bbsId==1)
            {
                location.href = "/board/noticeBoard";
            }
        }

        function goEdit(nttId){

            location.href = "/board/editBoard/"+nttId;
        }

        function goReply(){
            var $insertId = AuthenticationUtils.getUser();
            var $answer = $("#answer");
            var $nttId = $("#nttId");
            var $bbsId = $("#bbsId");
            if($txtComments.val().length <3)
            {
                alert('내용이 너무 짧습니다.');
                return;
            }
            var param = {answer: answer.val(), nttId: $nttId.val(), bbsId: $bbsId.val(), insertId: $insertId.val()};
            $.post("cmtWriteProc.jsp",param,refresh);
            $txtComments.val("");

/*
                form = document.board;
                form.action = "<c:url value='/board/writeReply'/>";
                $("#amswer").action = "<c:url value='/board/writeReply'/>";

                form.submit();
*/

        }

        function refresh(){
            $.get("replyList.jsp",null,refresh_list);
        }

        function refresh_list(data){
            $("#result").html(data);
        }

/*
        function getReplyList(){

            $("#result").html("");
            $("#result").load("/board/replyList",$("#boardForm").serialize());
        }
*/

        function getReplyList(){
            var commentHtml ="";
            var nttId = $("nttId").val;
            var bbsId = $("#bbsId").val;
            alert ("value is :"+ nttId);

            $.ajax({
                type: 'POST',
                dataType : "json",
                url : '/board/replyList',
                data: {bbsId:bbsId, nttId:nttId},
                contentType: "application/json",
                success:function(result){
                    //월 세팅 selectbox 초기화
                    //$("#userBirthMonth").find("option").remove().end().append("<option value=''>- 선택 -</option>");


                    //결과 갯수 만큼 날짜 세팅
                    $.each(result, function(i){
                        //$("#userBirthMonth").append("<option value='"+result[i].code+"'>"+result[i].codeName+"</option>")

                        commentHtml = commentHtml + "<tr>";
                        commentHtml = commentHtml + "    <ul class='latest-posts'>";
                        commentHtml = commentHtml + "        <li class='text-left text'>";
                        commentHtml = commentHtml + "            <img class='image img-circle' src='http://template.progressive.itembridge.com/2.1.8/img/content/product-1.png' alt='' title='' width='84' height='84'data-appear-animation='rotateIn'>";
                        commentHtml = commentHtml + "            <div class='meta'>";
                        commentHtml = commentHtml + "                <span>${replyList.insertId}</span>";
                        commentHtml = commentHtml + "                <span class='time'>, ${replyList.insertDate}</span>";
                        commentHtml = commentHtml + "            </div>";
                        commentHtml = commentHtml + "            <div class='description' style='height: auto;'>";
                        commentHtml = commentHtml + "                <h8>${replyList.answer}</h8>";
                        commentHtml = commentHtml + "            </div>";
                        commentHtml = commentHtml + "        </li>";
                        commentHtml = commentHtml + "    </ul>";
                        commentHtml = commentHtml + "<tr>";

                    });

                    $("#result").append(commentHtml);
                },
                error:function(xhr,statue,error){
                    alert(error);
                }
            });
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
            $("#submit_details").focus();              //제목칸 포커스
            getReplyList();
            document.getElementById("loading").style.display="none"; //로딩 아이콘 숨김
        });

        $("#list").click(function(){
            goList(${BoardDetail.bbsId});
        });

        $("#edit").click(function(){
            goEdit(${BoardDetail.nttId});
        });

        $("#reply").click(function(){
            goReply();
        });


    </script>
</content>
