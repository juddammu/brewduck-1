<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<section>
    <ol class="breadcrumb">
        <li><a href="#">홈</a></li>
        <li><a href="#">재료 데이터베이스</a></li>
        <li class="active"><a href="/style">발효재료 데이터베이스 <small>FERMENTABLE DATABASE</small></a></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i>${FermentableDetail.koreanName} - <strong class="text-support3">${FermentableDetail.name}</strong></h3>
    </div>
    <div class="section-body">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-printable style-transparent">
                    <div class="box-body style-white">
                        <!-- START INVOICE HEADER -->
                        <div class="row">
                            <div class="col-xs-8">
                                <h1 class="text-light"><strong class="text-support3">${FermentableDetail.koreanName}</strong></h1>
                            </div>
                        </div>
                        <!-- END INVOICE HEADER -->
                        <br/>
                        <!-- START INVOICE DESCRIPTION -->
                        <div class="box box-tiles style-white">
                            <div class="row">
                                <div class="col-md-3 style-gray">
                                    <div class="box-body">
                                        <h3 class="text-light">원산지 / 타입</h3 >
                                        <div>
                                            <button type="button" class="btn btn-warning btn-sm" onclick="goIndex('${FermentableDetail.origin}')">${FermentableDetail.originKorean} ( ${FermentableDetail.origin} )</button>
                                            <button type="button" class="btn btn-primary btn-sm">${FermentableDetail.typeKorean}</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <article class="style-white">
                                        <div class="box-body">
                                            <h3 class="text-light">내용</h3 >
                                            <p> ${FermentableDetail.notes}</p>
                                        </div>
                                    </article>
                                </div>
                            </div><!--end .row -->
                                <!-- END INVOICE DESCRIPTION -->
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <h4>5 Comments</h4>
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
                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined">
                    <div class="box-body no-padding">
                        <form:form class="form-horizontal form-banded form-bordered" action="/misc/list" id="searchForm"  name="searchForm" modelAttribute="paramStyle">
                            <input name="origin" type ="text" id="origin" value="">
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
                                    <th>발효재료명</th>
                                    <th style="width:120px">영문명</th>
                                    <th style="width:70px">타입</th>
                                    <th style="width:70px">원산지</th>
                                    <th style="width:70px">수율(%)</th>
                                    <th style="width:100px">색상(SRM)</th>
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
        var bbsId = '3';
        var nttId = '74';

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

        function goDetail(seq, titleInUrl){
            location.href = "/fermentable/"+seq+"/"+titleInUrl;
        }

        function goIndex(origin){
            $("#origin").val(origin);
            search();
        }

        function search(){
            //   getLoadingTime();                                                   //로딩 아이콘 호출
            $("#result").html("");
            $("#result").load("/fermentable/list", $("#searchForm").serialize());
            //getResult();
        }

        $(document).ready(function() {
            $("#name").val('');             //TODO : 초기화 함수로 뺄것
            search();                       //조회
        });

    </script>
</content>