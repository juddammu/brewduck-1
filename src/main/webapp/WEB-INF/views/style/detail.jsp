<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<title>${StyleDetail.koreanName} - ${StyleDetail.name}</title>

<div class="page-title">

    <div class="title-env">
        <h1 class="title"><a href="/style/${StyleDetail.id}/${StyleDetail.titleInUrl}">${StyleDetail.categoryNumber}${StyleDetail.styleLetter}. ${StyleDetail.koreanName}</a></h1>
        <p class="description">${StyleDetail.name}</p>
    </div>

    <div class="breadcrumb-env">

        <ol class="breadcrumb bc-1" >
            <li>
                <a href="/"><i class="fa-home"></i>홈</a>
            </li>
            <li>
                <a href="#">재료 데이터베이스</a>
            </li>
            <li class="active">

                <strong>스타일</strong>
            </li>
        </ol>

    </div>

</div>


<div class="panel panel-default">
<div class="panel-heading">
<section  class="invoice-env">
    <div class="section-body">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-printable style-transparent">
                    <div class="box-body style-white">
                        <!-- START INVOICE HEADER -->
                        <div class="row">
                            <div class="col-xs-8">
                                <a href="/style/${StyleDetail.id}/${StyleDetail.titleInUrl}"><h1 class="text-light"><strong class="text-support3">${StyleDetail.categoryNumber}${StyleDetail.styleLetter}.${StyleDetail.koreanName}</strong></h1></a>
                            </div>
                            <div class="col-xs-4 text-right">
                                <h1 class="text-light text-gray-light">${StyleDetail.styleGuide}</h1>
                            </div>
                        </div>
                        <!-- END INVOICE HEADER -->

                        <br/>
                        <!-- START INVOICE DESCRIPTION -->
                        <div class="box box-tiles style-gray">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="box-body">
                                        <h3 class="text-light">제원</h3>
                                        <ul class="nav nav-pills nav-stacked nav-transparent">
                                            <li><a href="#"><span class="badge pull-right">${StyleDetail.ogMin} ~ ${StyleDetail.ogMax}</span>초기비중(OG)</a></li>
                                            <li><a href="#"><span class="badge pull-right">${StyleDetail.fgMin} ~ ${StyleDetail.fgMax}</span>종료비중(FG)</a></li>
                                            <li><a href="#"><span class="badge pull-right">${StyleDetail.ibuMin} ~ ${StyleDetail.ibuMax}</span>쓴맛(IBU)</a></li>
                                            <li><a href="#"><span class="badge pull-right">${StyleDetail.colorMin}°L ~ ${StyleDetail.colorMax}°L</span>색상(COLOR)</a></li>
                                            <li><a href="#"><span class="badge pull-right">${StyleDetail.abvMin}% ~ ${StyleDetail.abvMax}%</span>도수(ABV)</a></li>
                                        </ul>
                                        <h3 class="text-light">사례</h3>
                                        <div class="list-tags">
                                            <c:forEach items="${examples}" var="examples">
                                                <a class="btn btn-xs btn-support1 " onclick="goWarning()">${examples}</a>
                                            </c:forEach>
                                        </div>
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
                                                <h5><span class="badge">향 - AROMA</span> </h5>
                                                <p>${StyleDetail.smell} </p>
                                                <h5><span class="badge">외관 - LOOK</span></h5>
                                                <p>${StyleDetail.look} </p>
                                                <h5><span class="badge">풍미 - TASTE</span></h5>
                                                <p>${StyleDetail.taste} </p>
                                                <h5><span class="badge">총평 - OVERALL</span></h5>
                                                <p>${StyleDetail.mouthfeel} </p>
                                                <h5><span class="badge">코멘트 - COMMENT</span></h5>
                                                <p>총평: 매우 상쾌하고 갈증 해소용 </p>
                                            </div>
                                        </div>
                                    </article>
                                </div>



                                <!-- END BLOG POST TEXT -->
                            </div><!--end .row -->
                            <!-- END INVOICE DESCRIPTION -->
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label class="medium_text_shadow" id = "replyCount" type ="text"></label>
                                <div class="box style-white" id="reply_count">
                                    <ul class="list-comments">
                                        <li>
                                            <div class="box style-white" id="reply_list">

                                            </div><!--end .box -->
                                        </li><!-- end comment -->
                                    </ul>
                                </div><!--end .col-md-9 -->
                            </div><!--end .row -->
                            <!-- END COMMENTS -->
                        </div>
                        <div class="box box-tiles style-white">
                            <div class="row">
                                <div class="col-md-12">
                                    <article class="style-white">
                                        <form:form  class="form-horizontal" role="form" onsubmit="return false">
                                        <%
                                            if (AuthenticationUtils.isAuthenticated() == false) {
                                        %>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <textarea name="answer" id="answer" class="form-control" rows="6" placeholder="로그인 후 등록할 수 있습니다." disabled></textarea>
                                                </div>
                                            </div>
                                        <%
                                        } else {
                                        %>

                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <textarea name="answer" id="answer" class="form-control" rows="6" placeholder="Leave a comment"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-footer">
                                                <button type="submit" id="insertReply" name="insertReply" class="btn btn-primary">댓글 등록</button>
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
                        <!-- END COMMENTS -->
                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->

        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined">
                    <div class="box-body no-padding">
                        <form:form class="form-horizontal form-banded form-bordered" action="/style/list" id="searchForm"  name="searchForm" modelAttribute="paramStyle">
                            <div class="form-group">
                                <div class="col-md-2">
                                    <label class="control-label">이름</label>
                                </div>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <input class="form-control" placeholder="검색어를 입력하세요." name="name" id="name" onkeypress="if(event.keyCode==13){return false;};"  >
                                        <span class="input-group-addon"><i id="search" name="search" class="fa fa-search"></i></span>
                                    </div>
                                </div>
                            </div>
                        </form:form>
                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->
        <!-- END BASIC FORM INPUTS -->

        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined" id="result_list">
                    <div class="box-body no-padding style-white">
                        <table class="table table-hover no-margin">
                            <thead>
                            <tr>
                                <th style="width:30px"  class="mobile-device">#</th>
                                <th style="width:150px" class="mobile-device">스타일명</th>
                                <th style="width:150px" class="mobile-device hidden">영문명</th>
                                <th style="width:70px"  class="mobile-device hidden">초기비중</th>
                                <th style="width:70px"  class="mobile-device hidden">최종비중</th>
                                <th style="width:70px"  class="mobile-device hidden">IBU</th>
                                <th style="width:70px"  class="mobile-device hidden-600">SRM</th>
                                <th style="width:70px"  class="mobile-device hidden">ABV</th>
                            </tr>
                            </thead>
                            <tbody id="result">
                            </tbody>
                        </table>
                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->
    </div><!--end .section-body -->
</section>
</div>
</div>

<content tag="local_script">
    <script>

        var bbsId = '4';
        var nttId = ${StyleDetail.id};

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
                    //<optgroup  label="1. LIGHT LAGER">
                    replyListHtml = replyListHtml + "<div class='comment-avatar'><i class='glyphicon glyphicon-user text-gray-lighter'></i></div>";
                    replyListHtml = replyListHtml + "<div class='box-body'>";
                    replyListHtml = replyListHtml + "<h4 class='comment-title'>"+data[i].insertId+" <small>"+data[i].insertDate+"</small></h4>";
                    replyListHtml = replyListHtml + "<!--a class='btn btn-inverse stick-top-right' href='#respond'>Reply</a-->";
                    replyListHtml = replyListHtml + "<p>"+data[i].answer+"</p>";
                    replyListHtml = replyListHtml + "</div>";
                });
                $("#reply_list").append(replyListHtml);
                boostbox.App.removeBoxLoader(box);
            })

/*
 <div class="comment-avatar"><i class="glyphicon glyphicon-user text-gray-lighter"></i></div>
 <div class="box-body">
 <h4 class="comment-title">Jim Peters <small>20/06/2013 at 4:02 pm</small></h4>
 <a class="btn btn-inverse stick-top-right" href="#respond">Reply</a>
 <p>Etiam dui libero, tempor quis congue in, interdum eget tortor. Vivamus aliquam dictum lacus quis tincidunt. Phasellus rhoncus ante sollicitudin nisl consectetur ultricies. Sed rhoncus ullamcorper mauris, ac condimentum metus egestas ut. Nam et urna ante, vitae pretium lacus.</p>
 </div>

            $("#result").html("");
            $( "#result" ).load("/style/list", $("#searchForm").serialize(), function( response, status, xhr ) {

                if ( status == "success" ) {
                    boostbox.App.removeBoxLoader(box);
                }
            });*/
        }

        function getReplyCount(){

            $.get("/community/countReply/"+nttId+"/"+bbsId, function(data, status){
                $("#replyCount").html(data.countNum+" Comments"); /*미국*/
            })
        }

        function goWarning(){
            alert("사례 바로가기는 준비중 입니다!");
        }

        function goDetail(seq, titleInUrl){
            location.href = "/style/"+seq+"/"+titleInUrl;
        }

        function search(){
            $("#result").html("");
            $("#result").load("/style/list", $("#searchForm").serialize());
        }


        $(document).ready(function() {
            search();                          //조회
            getReplyCount();
            replyList();                       //댓글 조회
            $("#name").val('');
        });

    </script>
</content>
