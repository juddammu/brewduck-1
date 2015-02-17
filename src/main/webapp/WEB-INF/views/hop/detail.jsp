<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<title>${HopDetail.koreanName} - ${HopDetail.name}</title>


<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1><a href="/hop/"><spring:message code="menu.hop"/> </a> > ${HopDetail.koreanName}
                <small>(${HopDetail.name})</small>
            </h1>
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
                                    <h3 class="text-light">제원</h3>
                                    <ul class="nav nav-pills nav-stacked nav-transparent">
                                        <table class="table table-bordered table-striped">
                                            <tbody>
                                            <tr>
                                                <th>원산지</th>
                                                <td>${HopDetail.originKorean}</td>
                                            </tr>
                                            <tr>
                                                <th>타입</th>
                                                <td>${HopDetail.typeKorean}</td>
                                            </tr>
                                            <tr>
                                                <th>Alpha</th>
                                                <td>${HopDetail.alpha} %</td>
                                            </tr>
                                            <tr>
                                                <th>Beta</th>
                                                <td>${HopDetail.beta}</td>
                                            </tr>
                                            <tr>
                                                <th>HSI</th>
                                                <td>${HopDetail.hsi}</td>
                                            </tr>
                                            <c:if test="${!empty hopAromaList}">
                                                <tr>
                                                    <th>풍미</th>
                                                    <td>
                                                        <c:forEach
                                                            items="${hopAromaList}"
                                                            var="aromaName">
                                                            ${aromaName.aromaName}
                                                        </c:forEach></td>
                                                </tr>
                                            </c:if>
                                            <%--                                            <tr>
                                                                                            <th>사용 용도</th>
                                                                                            <td>
                                                                                                <c:forEach items="${hopUsedForList}" var="usedFor">
                                                                                                    <a href="#">${usedFor.usedFor}</a>
                                                                                                </c:forEach></td>
                                                                                        </tr>--%>
                                            <c:if test="${!empty selectHopSubstitutesList}">
                                                <tr>
                                                    <th>대체 홉</th>
                                                    <td>
                                                        <c:forEach
                                                                items="${selectHopSubstitutesList}"
                                                                var="substitutesName">
                                                            <a href="/hop/${substitutesName.substitutesSeq}/">
                                                                <button type="button" class="btn btn-xs blue">${substitutesName.substitutesName}
                                                                </button></a>
                                                        </c:forEach></td>
                                                </tr>
                                            </c:if>
                                            </tbody>
                                        </table>
                                    </ul>
                                </div>
                            </div>


                            <div class="col-md-9">
                                <article class="style-white">
                                    <div class="box-body">
                                        <p class="lead">설명</p>

                                        <div class="well clearfix">
                                            <p>${HopDetail.koreanNotes}</p>
                                        </div>
                                        <br/>
                                    </div>
                                </article>
                            </div>


                            <!-- END BLOG POST TEXT -->
                        </div>
                        <!--end .row -->

                        <div class="row">
                            <div class="col-md-12">
                                <label class="medium_text_shadow" id="replyCount"
                                       type="text"></label>

                                <div class="box style-white" id="reply_count">
                                    <ul>
                                        <li>

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

        var bbsId = '6';

        function goDetail(seq, titleInUrl) {
            location.href = "/hop/" + seq + "/" + titleInUrl;
        }

        function goOrigin(data) {
            $("#origin").val(data);
            search();
        }

        function goType(data) {
            $("#type").val(data);
            search();
        }


        function search() {
            $("#result").html("");
            $("#result").load("/hop/list", $("#searchForm").serialize());
            $("#origin").val('');
            $("#type").val('');
        }

        $(document).ready(function () {
         //   search();                          //조회
          //  getReplyCount();
          //  replyList();
            $("#origin").val('');
            $("#type").val('');
            $("#name").val('');
        });

    </script>
</content>
