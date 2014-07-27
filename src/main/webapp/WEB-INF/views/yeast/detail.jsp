<%--
  Created by IntelliJ IDEA.
  User: ChaJunYoung
  Date: 14. 6. 11
  Time: 오전 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<title>${YeastDetail.koreanName} - ${YeastDetail.name}</title>

<section>
    <ol class="breadcrumb">
        <li><a href="#">홈</a></li>
        <li><a href="#">재료 데이터베이스</a></li>
        <li class="active"><a href="/style">효모 데이터베이스 <small>YEAST DATABASE</small></a></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i>${YeastDetail.koreanName} - <strong class="text-support3">${YeastDetail.name}</strong></h3>
    </div>
    <div class="section-body">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-printable style-transparent">
                    <div class="box-body style-white">
                        <!-- START INVOICE HEADER -->
                        <div class="row">
                            <div class="col-xs-8">
                                <h1 class="text-light"><strong class="text-support3">${YeastDetail.koreanName}</strong></h1>
                            </div>
                        </div>
                        <!-- END INVOICE HEADER -->
                        <br/>
                        <!-- START INVOICE DESCRIPTION -->
                        <div class="box box-tiles style-white">
                            <div class="row">
                                <div class="col-md-3 style-gray">
                                    <div class="box-body">
                                        <h3 class="text-light">정보</h3>
                                        <ul class="nav nav-pills nav-stacked nav-transparent">
                                            <li><a href="#"><span class="badge pull-right badge-info">${YeastDetail.laboratory} </span>실험실</a></li>
                                            <li><a href="#"><span class="badge pull-right badge-info"> ${YeastDetail.productId} </span>제품ID</a></li>
                                            <li><a href="#"><span class="badge pull-right badge-info"> ${YeastDetail.type}      </span>타입</a></li>
                                            <li><a href="#"><span class="badge pull-right badge-info"> ${YeastDetail.form}      </span>형태</a></li>
                                            <li><a href="#"><span class="badge pull-right badge-info"> ${YeastDetail.minTemperature} ℃ ~ ${YeastDetail.maxTemperature} ℃</span>온도</a></li>
                                            <li><a href="#"><span class="badge pull-right badge-info"> ${YeastDetail.amount}    </span>양</a></li>
                                            <li><a href="#"><span class="badge pull-right badge-info"> ${YeastDetail.flocculation}</span>응집</a></li>
                                            <li><a href="#"><span class="badge pull-right badge-info"> ${YeastDetail.maxReuse} 회</span>재사용</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <article class="style-white">
                                        <div class="box-body">
                                        <h3 class="text-light">내용</h3 >
                                            <p> ${YeastDetail.notes}</p>
                                            <div class="well clearfix">
                                                <h3 class="text-light">용도</h3 >
                                                <p> ${YeastDetail.bestFor}</p>
                                            </div>
                                        </div>
                                    </article>
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
                                            <div class="form-footer">
                                                <button type="submit" id="insertReply" name="insertReply" class="btn btn-primary">댓글 등록</button>
                                            </div>
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
                        <form:form class="form-horizontal form-banded form-bordered" id="searchForm"  name="searchForm" modelAttribute="paramStyle">
                            <input name="bbsId" id="bbsId" type ="hidden" value="">
                            <input name="nttId" id="nttId" type ="hidden" value="">
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
                                <th style="width:30px" >#</th>
                                <th style="width:150px">스타일명</th>
                                <th style="width:150px">영문명</th>
                                <th style="width:70px">초기비중(OG)</th>
                                <th style="width:70px">종료비중(FG)</th>
                                <th style="width:70px">쓴맛(IBU)</th>
                                <th style="width:70px">색상(ABV)</th>
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

<content tag="local_script">
    <script>
        var bbsId = '6';
        var nttId = ${YeastDetail.seq};

        $('#insertReply').on('click', function () {
            var json = { "bbsId" : bbsId, "nttId" : nttId, "amswer" : $('#answer').val()};
            $.ajax({
                type: "POST",
                url: "/community/writeReply",
                contentType: "application/json; charset=utf-8",
                dataType:"json",
                data:  JSON.stringify(json),
                success:function( data ) {
                    if(data.insertFlag == 1){
                        replyList();

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

        function setBbsId(){
            $("#nttId").val(${YeastDetail.seq});
            $("#bbsId").val(${YeastDetail.cmtBbsId});

            getCommentCount();
        }

        function getCommentCount(){
            $.get("/common/countComment", function(data, status){
                $("#aleButton").html("("+data.aleCntName +data.aleCnt+" 건)"); /*에일*/
            })
        }

        function goDetail(seq, titleInUrl){
            location.href = "/yeast/"+seq+"/"+titleInUrl;
        }

        function search(){
            //   getLoadingTime();                                                   //로딩 아이콘 호출
            $("#result").html("");
            $("#result").load("/yeast/list", $("#searchForm").serialize());
            //getResult();
        }


        $(document).ready(function() {

            search();                          //조회
            setBbsId();
            replyList();    //댓글 조회
            getReplyCount();
        });

    </script>
</content>
