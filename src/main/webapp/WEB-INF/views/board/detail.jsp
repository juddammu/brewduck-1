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
        <li><a href="#">홈</a></li>
        <li class="active"><a href="#">${BoardDetail.bbsNm} - ${BoardDetail.bbsEnNm}</a></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i>${BoardDetail.bbsNm}</h3>
    </div>
    <div class="section-body">
    <!-- BEGIN BASIC FORM INPUTS -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined">
                    <div class="box-body">
                        <div class="row frame border-radius">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="bottom-padding-mini"></div>
                                    <div class="col-md-12  text-right">
                                        <h6>
                                            <span>${BoardDetail.insertId}, </span>
                                            <span class="time">${BoardDetail.insertDate}</span>
                                        </h6>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-2  text-left">
                                            <h4 class="text-light">제 목 <span class="required">*</span></h4>
                                        </div>
                                        <div class="col-md-10">
                                            <div class="well">
                                                <div class="clearfix">
                                                        ${BoardDetail.nttSj}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="bottom-padding-mini"></div>
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-2  text-left">
                                            <h4 class="text-light">내 용 <span class="required">*</span></h4>
                                        </div>
                                        <div class="col-md-10">
                                            <div class="well">
                                                ${BoardDetail.nttCn}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-2  text-left">
                                            <h4 class="text-light">첨부파일</h4>
                                        </div>
                                        <div class="form-group col-md-10">
                                            <input type="file" id="exampleInputFile">
                                            <p class="help-block">Example block-level help text here.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-12 form-actions">
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
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="medium_text_shadow" id = "replyCount" type ="text"></label>
                                    <ul class="list-comments">
                                        <li>
                                            <div class="box style-white" id="reply_list">

                                            </div><!--end .box -->
                                        </li><!-- end comment -->
                                    </ul>
                                </div><!--end .col-md-9 -->
                            </div><!--end .row -->
                            <!-- END COMMENTS -->
                            <div class="box box-tiles style-white">
                                <div class="row">
                                    <div class="col-md-12">
                                        <article class="style-white">
                                            <form:form  class="form-horizontal" role="form" onsubmit="return false">
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <textarea name="answer" id="answer" class="form-control" rows="6" placeholder="Leave a comment"></textarea>
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
                            <div class="bottom-padding-mini"></div>
                        </div>
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
                        getReplyCount();
                        $('#answer').val('');
                    }
                }
            });
        });

        function replyList(){
            //getLoadingTime();
            var box = $("#reply_list");
            boostbox.App.addBoxLoader(box);

            $("#reply_list").html("");
            var replyListHtml = "";

            $.get("/community/replyList/"+nttId+"/"+bbsId, function(data, status){
                $.each(data, function(i){
                    replyListHtml = replyListHtml + "<div class='comment-avatar'><i class='glyphicon glyphicon-user text-gray-lighter'></i></div>";
                    replyListHtml = replyListHtml + "<div class='box-body'>";
                    replyListHtml = replyListHtml + "<h4 class='comment-title'>"+data[i].insertId+" <small>"+data[i].insertDate+"</small></h4>";
                    replyListHtml = replyListHtml + "<a class='btn btn-inverse stick-top-right' href='#respond'>Reply</a>";
                    replyListHtml = replyListHtml + "<p>"+data[i].answer+"</p>";
                    replyListHtml = replyListHtml + "</div>";
                });
                $("#reply_list").append(replyListHtml);
                boostbox.App.removeBoxLoader(box);
            })
        }

        function getReplyCount(){

            $.get("/community/countReply/"+nttId+"/"+bbsId, function(data, status){
                $("#replyCount").html(data.countNum+" Comments"); /*미국*/
            })
        }

        function goList(bbsId){
                location.href = "/board/main/"+bbsId;
        }

        function goEdit(nttId){

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

            refresh();
            $('.slider-element').slider();  //슬라이더 초기화
            $("#submit_details").focus();              //제목칸 포커스
            document.getElementById("loading").style.display="none"; //로딩 아이콘 숨김

        });

        $("#list").click(function(){
            goList(${BoardDetail.bbsId});
        });

        $("#edit").click(function(){
            goEdit(${BoardDetail.nttId});
        });

    </script>
</content>
