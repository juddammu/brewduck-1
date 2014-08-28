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

<title>${BoardDetail.bbsNm} - ${BoardDetail.bbsEnNm}</title>


<section>
    <ol class="breadcrumb">
        <li><a href="/">홈</a></li>
        <li class="active"><a href="/board/main/${BoardDetail.bbsId}">${BoardDetail.bbsNm} - ${BoardDetail.bbsEnNm}</a></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i><a href="/board/main/${BoardDetail.bbsId}">${BoardDetail.bbsNm} - ${BoardDetail.bbsEnNm}</a></h3>
    </div>
    <div class="section-body">
    <!-- BEGIN BASIC FORM INPUTS -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined">
                    <div class="box-body">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-12  text-left">
                                                <a href="/board/detail/${BoardDetail.nttId}" ><h2>${BoardDetail.nttSj}</h2></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="bottom-padding-mini"></div>
                                        <div class="col-md-6 text-left">
                                            <h4>
                                                by <a href="/list/recipe/${BoardDetail.boardId}/${BoardDetail.insertId}" ><span>${BoardDetail.insertId} </span></a>
                                            </h4>
                                        </div>
                                        <div class="col-md-6 text-right">
                                            <h6><span class="meta">${BoardDetail.insertDate} | Views : ${BoardDetail.rdcnt} </span></h6>
                                        </div>
                                    </div>
                                    <br>
                                    <hr>
                                    <div class="bottom-padding-mini"></div>
                                    <div class="row">
                                        <div class="form-group">
                                                <div class="col-md-12">
                                                    ${BoardDetail.nttCn}
                                                </div>
                                            </div>
                                        </div>
                                    <br>
                                    <hr>
                                    </div>
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-1  text-left">
                                                <label for="nttSj" class="control-label">첨부파일</label>
                                            </div>
                                            <div class="col-md-11 text-left">
                                                <input type="file" id="exampleInputFile">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-md-12 form-actions">
                                                <div class="pull-right">
                                                    <%
                                                        Object regiId = request.getAttribute("regiId");
                                                        Object loginId = request.getAttribute("loginId");

                                                        if(loginId.equals(regiId)){
                                                    %>
                                                    <button type="button" id ="edit" class="btn btn-warning"> 수정 </button>

                                                    <%
                                                        }
                                                    %>
                                                    <button type="button" id = "list" class="btn btn-primary"> 목록 </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br><br>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <h4><label onclick="scroll()">${BoardDetail.countNum} Commnets</label></h4>
                                        <ul class="list-comments">
                                            <li>
                                                <div class="box style-white" id="reply_list">

                                                </div><!--end .box -->
                                            </li><!-- end comment -->
                                        </ul>
                                    </div><!--end .col-md-12 -->
                                </div><!--end .form-group -->
                            </div><!--end .row -->
                            <!-- END COMMENTS -->
                            <div class="box box-tiles style-white">
                                <div class="row">
                                    <div class="col-md-12">
                                        <article class="style-white">
                                            <form:form  class="form-horizontal" role="form" onsubmit="return false">
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <textarea name="answer" id="answer" class="form-control" rows="4" placeholder="Leave a comment"></textarea>
                                                    </div>
                                                </div>
                                                <%
                                                    if (AuthenticationUtils.isAuthenticated() == true) {
                                                %>
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <button type="submit" id="insertReply" name="insertReply" class="btn btn-primary">댓글 등록</button>
                                                    </div>
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
                                            </form:form>
                                        </article>
                                    </div>
                                    <!-- END BLOG POST TEXT -->
                                </div><!--end .row -->
                            </div>
                        </div>
                        <div class="bottom-padding-mini"></div>
                    </div>
                 </div>
            </div>
        </div>
    </div>
</section>

<content tag="local_script">
    <script>
        var bbsId = ${BoardDetail.bbsId};
        var nttId = ${BoardDetail.nttId};

        $('#insertReply').on('click', function () {
            var json = { "bbsId" : bbsId, "nttId" : nttId, "amswer" : $('#answer').val().replace(/\n/g, '<br>')};
            $.ajax({
                type: "POST",
                url: "/community/writeReply",
                contentType: "application/json; charset=utf-8",
                dataType:"json",
                data:  JSON.stringify(json),
                success:function( data ) {
                    if(data.insertFlag == 1){
                        replyList();
                        $('#answer').val('');
                    }
                }
            });
        });

        function replyList(){
            var box = $("#reply_list");
            boostbox.App.addBoxLoader(box);

            $("#reply_list").html("");
            var replyListHtml = "";

            $.get("/community/replyList/"+nttId+"/"+bbsId, function(data, status){
                $.each(data, function(i){

                    replyListHtml = replyListHtml + "<div class='comment-avatar'><i class='glyphicon glyphicon-user text-gray-lighter'></i></div>";
                    replyListHtml = replyListHtml + "<div class='box-body'>";
                    replyListHtml = replyListHtml + "<h4 class='comment-title'><a href='#'>"+data[i].insertId+"</a><small>"+data[i].insertDate+"</small></h4>";
                    replyListHtml = replyListHtml + "<a class='btn btn-inverse stick-top-right' href='#'>Reply</a>";
                    replyListHtml = replyListHtml + "<p>"+data[i].answer+"</p>";
                    replyListHtml = replyListHtml + "</div>";
                });
                $("#reply_list").append(replyListHtml);
                boostbox.App.removeBoxLoader(box);
            })
        }

        function goList(bbsId){
                location.href = "/board/main/"+bbsId;
        }

        function goEdit(nttId){

            location.href = "/board/editBoard/"+nttId;
        }

        function scroll(){
            $("#answer").focus();
        }

        $(document).ready(function() {

            replyList();

        });

        $("#list").click(function(){
            goList(${BoardDetail.bbsId});
        });

        $("#edit").click(function(){
            goEdit(${BoardDetail.nttId});
        });

    </script>
</content>
