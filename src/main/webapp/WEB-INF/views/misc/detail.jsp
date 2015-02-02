<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<title>${MiscDetail.name} - ${MiscDetail.name}</title>


<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1><a href="/misc/"><spring:message code="menu.misc"/> </a> > ${MiscDetail.name}</h1>
        </div>

        <div class="pull-right">
            <button id="register-back-btn" type="button" class="btn">
                <i class="m-icon-swapleft"></i> Back
            </button>
        </div>
        <!-- END PAGE TITLE -->
    </div>
</div>
<!-- END PAGE HEAD -->
<!-- BEGIN PAGE CONTENT -->
<div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">

                <!-- Begin: life time stats -->
                <div class="portlet light">
                    <div class="portlet-title">

                    </div>
                    <div class="portlet-body">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="box-body">
                                    <h3 class="text-light">타입</h3>
                                    <ul class="nav nav-pills nav-stacked nav-transparent">
                                        <button type="button"
                                                class="btn yellow-crusta ">${MiscDetail.typeKorean}</button>
                                    </ul>
                                    <h3>사례</h3>
                                    <c:forEach items="${MiscDetail.useForKorean}" var="examples">
                                        <div class="list-tags">
                                            <c:forEach items="${MiscDetail.useForKorean}"
                                                       var="examples">
                                                <button type="button"
                                                        class="btn blue-madison">${MiscDetail.useForKorean}</button>
                                            </c:forEach>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>


                            <div class="col-md-9">
                                <article class="style-white">
                                    <div class="box-body">
                                        <br/>

                                        <p class="lead">설명</p>

                                        <div class="well clearfix">
                                            <p>${MiscDetail.notes}</p>
                                        </div>
                                    </div>
                                </article>
                            </div>


                            <!-- END BLOG POST TEXT -->
                        </div>
                        <!--end .row -->

                        <div class="row">
                            <div class="col-md-12">
                                <%--<label class="medium_text_shadow" id = "replyCount" type ="text"></label>--%>
                                <div class="box style-white" id="reply_count">
                                    <ul class="list-comments">
                                        <li>
                                            <div class="box style-white" id="reply_list">

                                            </div>
                                            <!--end .box -->
                                        </li>
                                        <!-- end comment -->
                                    </ul>
                                </div>
                                <!--end .col-md-9 -->
                            </div>
                            <!--end .row -->
                            <!-- END COMMENTS -->
                        </div>
                        <div class="box box-tiles style-white">
                            <div class="row">
                                <div class="col-md-12">
                                    <article class="style-white">
                                        <form:form class="form-horizontal" role="form"
                                                   onsubmit="return false">
                                            <%
                                                if (AuthenticationUtils.isAuthenticated() == false) {
                                            %>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <textarea name="answer" id="answer"
                                                              class="form-control" rows="6"
                                                              placeholder="로그인 후 등록할 수 있습니다."
                                                              disabled></textarea>
                                                </div>
                                            </div>
                                            <%
                                            } else {
                                            %>

                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <textarea name="answer" id="answer"
                                                              class="form-control" rows="6"
                                                              placeholder="Leave a comment"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-footer">
                                                <button type="submit" id="insertReply"
                                                        name="insertReply" class="btn btn-primary">
                                                    댓글 등록
                                                </button>
                                            </div>
                                            <%
                                                }
                                            %>
                                        </form:form>
                                    </article>
                                </div>
                                <!-- END BLOG POST TEXT -->
                            </div>
                            <!--end .row -->
                        </div>

                    </div>
                </div>
                <!-- End: life time stats -->


            </div>
        </div>
    </div>
</div>
<!-- END PAGE CONTENT -->


<content tag="local_script">
    <script>

        var bbsId = '8';
        var nttId = ${MiscDetail.id};

        $('#insertReply').on('click', function () {
            var json = { "bbsId": bbsId, "nttId": nttId, "amswer": $('#answer').val().replace(/\n/g, '<br>')};
            $.ajax({
                type: "POST",
                url: "/community/writeReply",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify(json),
                success: function (data) {
                    if (data.insertFlag == 1) {
                        replyList();
                        getReplyCount();
                        $('#answer').val('');
                    }
                }
            });
        });

        function replyList() {
            //getLoadingTime();
            var box = $("#reply_list");
            boostbox.App.addBoxLoader(box);

            $("#reply_list").html("");
            var replyListHtml = "";

            $.get("/community/replyList/" + nttId + "/" + bbsId, function (data, status) {
                $.each(data, function (i) {
                    replyListHtml = replyListHtml + "<div class='comment-avatar'><i class='glyphicon glyphicon-user text-gray-lighter'></i></div>";
                    replyListHtml = replyListHtml + "<div class='box-body'>";
                    replyListHtml = replyListHtml + "<h4 class='comment-title'>" + data[i].insertId + " <small>" + data[i].insertDate + "</small></h4>";
                    replyListHtml = replyListHtml + "<a class='btn btn-inverse stick-top-right' href='#respond'>Reply</a>";
                    replyListHtml = replyListHtml + "<p>" + data[i].answer + "</p>";
                    replyListHtml = replyListHtml + "</div>";
                });
                $("#reply_list").append(replyListHtml);
                boostbox.App.removeBoxLoader(box);
            })
        }

        function getReplyCount() {

            $.get("/community/countReply/" + nttId + "/" + bbsId, function (data, status) {
                $("#replyCount").html(data.countNum + " Comments");
                /*미국*/
            })
        }


        function goDetail(seq, titleInUrl) {
            location.href = "/misc/" + seq + "/" + titleInUrl;
        }

        function goType(data) {
            $("#type").val(data);
            search();

        }

        function goUseFor(data) {
            $("#useFor").val(data);
            search();
        }

        function search() {
            $("#result").html("");
            $("#result").load("/misc/list", $("#searchForm").serialize());
            $("#type").val('');
            $("#useFor").val('');
        }


        $(document).ready(function () {
            search();                          //조회
            getReplyCount();
            replyList();
            $("#name").val('');
            $("#type").val('');
            $("#useFor").val('');
        });

    </script>
</content>
