<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<title>${StyleDetail.koreanName} - ${StyleDetail.name}</title>


<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1><a href="/style/"><spring:message code="menu.style"/> </a>
                > ${StyleDetail.categoryNumber}${StyleDetail.styleLetter}. ${StyleDetail.koreanName}
                <small>(${StyleDetail.name})</small>
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

                                            <thead>
                                            <tr>
                                                <th></th>
                                                <th>최소</th>
                                                <th>최대</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>초기비중(OG)</td>
                                                <td>${StyleDetail.ogMin}</td>
                                                <td>${StyleDetail.ogMax}</td>
                                            </tr>
                                            <tr>
                                                <td>종료비중(FG)</td>
                                                <td>${StyleDetail.fgMin}</td>
                                                <td>${StyleDetail.fgMax}</td>
                                            </tr>
                                            <tr>
                                                <td>쓴맛(IBU)</td>
                                                <td>${StyleDetail.ibuMin}</td>
                                                <td>${StyleDetail.ibuMax}</td>
                                            </tr>
                                            <tr>
                                                <td>색상(COLOR)</td>
                                                <td>${StyleDetail.colorMin}</td>
                                                <td>${StyleDetail.colorMax}</td>
                                            </tr>
                                            <tr>
                                                <td>도수(ABV)</td>
                                                <td>${StyleDetail.abvMin}</td>
                                                <td>${StyleDetail.abvMax}</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </ul>
                                    <h3>사례</h3>
                                    <c:forEach items="${examples}" var="examples">
                                        <div class="list-tags">
                                            <c:forEach items="${examples}" var="examples">
                                                <a class="btn btn-xs btn-support1 "
                                                   onclick="goWarning()">${examples}</a>
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

                                        <p>${StyleDetail.notes}</p>
                                        <br/>

                                        <div class="well clearfix">
                                            <h4>STYLE GUIDE</h4>
                                            <h5><span class="badge">향 - AROMA</span></h5>
                                            <p>${StyleDetail.smell} </p>

                                            <h5><span class="badge">외관 - LOOK</span></h5>
                                            <p>${StyleDetail.look} </p>

                                            <h5><span class="badge">풍미 - TASTE</span></h5>
                                            <p>${StyleDetail.taste} </p>

                                            <h5><span class="badge">총평 - OVERALL</span></h5>
                                            <p>${StyleDetail.mouthfeel} </p>

                                            <h5><span class="badge">코멘트 - COMMENT</span></h5>
                                            <p>${StyleDetail.comment} </p>
                                        </div>
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

        var bbsId = '4';
        var nttId = ${StyleDetail.id};

        function goDetail(seq, titleInUrl) {
            location.href = "/style/" + seq + "/" + titleInUrl;
        }




        $(document).ready(function () {
            //alert();
        });

    </script>
</content>
