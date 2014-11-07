<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="row">
<div class="col-lg-12">
<div class="box">
<!-- /.box-header -->
<div class="box-body">
<!-- Main content -->
<section class="content invoice">
<!-- title row -->
<div class="row">
    <div class="col-xs-12 invoice-header">
        <h2 class="page-header text-red">
            <i class="fa fa-leaf"></i> ${HopDetail.koreanName}<small> ( ${HopDetail.name} )</small>
            <small style="font-size:12px;" class="pull-right">
            </small>
        </h2>
    </div>
    <!-- /.col -->
</div>
<!-- info row -->
<div class="row invoice-info">
    <div class="col-sm-4 invoice-col">
        <p class="lead">SPEC</p>
        <div class="table-responsive">
            <table class="table">
                <tr>
                    <th style="width:30%">원산지:</th>
                    <td>${HopDetail.originKorean}</td>
                </tr>
                <tr>
                    <th>타입:</th>
                    <td>${HopDetail.typeKorean}</td>
                </tr>
                <tr>
                    <th>Alpha:</th>
                    <td>
                        ${HopDetail.alpha} %
                    </td>
                </tr>
                <tr>
                    <th>Beta:</th>
                    <td>
                        ${HopDetail.beta} %
                    </td>
                </tr>
                <tr>
                    <th>HSI:</th>
                    <td>
                        ${HopDetail.hsi} %
                    </td>
                </tr>
                <c:if test="${!empty hopAromaList}">
                <tr>
                    <th>풍미:</th>
                    <td>
                        <c:forEach items="${hopAromaList}" var="aromaName">
                            <a href="#">${aromaName.aromaName}</a>
                        </c:forEach></td>
                </tr>
                </c:if>
                <tr>
                    <th>사용 용도:</th>
                    <td>
                        <c:forEach items="${hopUsedForList}" var="usedFor">
                            <a href="#">${usedFor.usedFor}</a>
                        </c:forEach></td>
                </tr>
                <c:if test="${!empty selectHopSubstitutesList}">
                    <tr>
                        <th>대체 홉:</th>
                        <td>
                            <c:forEach items="${selectHopSubstitutesList}" var="substitutesName">
                                <a href="/hop/${substitutesName.substitutesSeq}/" class="button shrink">${substitutesName.substitutesName}</a>
                            </c:forEach></td>
                    </tr>
                </c:if>
            </table>
        </div>
    </div>
    <!-- /.col -->
    <div class="col-sm-8 invoice-col">
        <p class="lead">NOTE</p>
        <table class="table">
            <tr>
                <td> ${HopDetail.koreanNotes}</td>
            </tr>
        </table>
    </div>
</div>
<h2 class="box-title"></h2>
<!-- /.row -->
<div class="row invoice-info">
    <div class="col-sm-12 invoice-col">
        <p class="lead">최신 <small>레시피</small></p>
        <div class="table-responsive">
            <table class="table">
                <thead>
                <tr>
                    <th>레시피명</th>
                    <th>스타일</th>
                    <th>타입</th>
                    <th>색상</th>
                    <th>OG</th>
                    <th>IBU</th>
                    <th>ABV</th>
                </tr>
                </thead>
                <tbody>
                    <tr class="bg-white">
                        <td> </td>
                        <td> </td>
                        <td>

                        </td>
                        <td> </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <!-- /.col -->
</div>
<!-- Table row -->

<!-- Table row -->

<!-- Table row -->

</section>
<!-- /.content -->
</div>
<!-- /.box-body -->
</div>
<!-- /.box -->
</div>
</div>


<content tag="local_script">
<script>
    var bbsId = '6';
    var nttId = ${HopDetail.seq};

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
    }

    function getReplyCount(){

        $.get("/community/countReply/"+nttId+"/"+bbsId, function(data, status){
            $("#replyCount").html(data.countNum+" Comments");
        })
    }

    function loadAnimatedWidget_pure_white(){
        var icons = new Skycons({"color": "white"});
        icons.play();
    }

    function goDetail(seq, titleInUrl){
        location.href = "/hop/"+seq+"/"+titleInUrl;
    }

    function goOrigin(data){
        $("#origin").val(data);
        search();
    }

    function goType(data){
        $("#type").val(data);
        search();
    }


    function search(){
        $("#result").html("");
        $("#result").load("/hop/list", $("#searchForm").serialize());
        $("#origin").val('');
        $("#type").val('');
    }

    $(document).ready(function() {
        search();                          //조회
        getReplyCount();
        replyList();
        $("#origin").val('');
        $("#type").val('');
        $("#name").val('');

    });

</script>
</content>