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
            <li><a href="/board/freeBoard">자유 게시판</a></li>
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

                <form:form id="board" method="POST" action="/board/editBoard" modelAttribute="board">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-3 ">
                                    <h6>제목 <span class="required">*</span></h6>
                                </div>
                                <div class="col-md-9">
                                        <input id="nttSj" name ="nttSj" type="text" class="form-control" placeholder="${BoardDetail.nttSj}" >
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <h6>내용 <span class="required">*</span></h6>
                                </div>
                                <div class="col-md-9">
                                        <textarea id="nttCn" name="nttCn" class="form-control" rows="10">${BoardDetail.nttCn}</textarea>
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
                        <%
                            Board board = new Board();
                            String user = board.getInsertId();
                            AuthenticationUtils.getCurrentUserId();
                            System.out.println(AuthenticationUtils.getUser());
                            System.out.println();
/*                            int insertId = Integer.parseInt(user);*/
                            if (user == null) {
                        %>
                                <button type="button" id ="edit" class="btn btn-danger"> 수정 </button>
                    <%--</c:if>--%>
                        <%
                            }
                        %>

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

        function goList(){
            location.href = "/board/freeBoard";
        }

        function goEdit(nttId){
/*

            oEditors[0].exec("UPDATE_CONTENTS_FILD",[]);
*/


            location.href = "/board/editBoard/"+nttId;
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

        $("#edit").click(function(){
            goEdit(${BoardDetail.nttId});
        });
    </script>
</content>
