<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<title>${HopDetail.koreanName} - ${HopDetail.name}</title>
<section>
    <ol class="breadcrumb">
        <li><a href="/">홈</a></li>
        <li><a href="#">재료 데이터베이스</a></li>
        <li class="active"><a href="/hop/">홉 데이터베이스 <small>HOP DATABASE</small></a></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i>
            <a href="/hop/${HopDetail.seq}/${HopDetail.titleInUrl}">${HopDetail.koreanName} - <strong class="text-support3">${HopDetail.name}</strong></a>
        </h3>
    </div>
    <div class="section-body">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-printable style-transparent">
                    <div class="box-body style-white">
                    <!-- START INVOICE HEADER -->
                        <div class="row">
                            <div class="col-xs-8">
                                <a href="/hop/${HopDetail.seq}/${HopDetail.titleInUrl}"><h1 class="text-light"><strong class="text-support3">${HopDetail.koreanName}</strong></h1></a>
                            </div>
                        </div>
                        <!-- END INVOICE HEADER -->
                        <br/>
                        <!-- START INVOICE DESCRIPTION -->
                        <div class="box box-tiles style-white">
                            <div class="row">
                                <div class="col-md-3 style-gray">
                                    <div class="box-body">
                                        <h3 class="text-light">원산지 / 타입</h3>
                                        <div>
                                            <button type="button" class="btn btn-warning btn-xs" onclick="goOrigin('${HopDetail.origin}')">${HopDetail.originKorean} ( ${HopDetail.origin} )</button>
                                            <button type="button" class="btn btn-primary btn-xs" onclick="goType('${HopDetail.type}')">${HopDetail.typeKorean}</button>
                                        </div>
                                        <div class="pull-left"> <span class="small-text muted">버튼을 클릭하시면 조회됩니다.</span> </div>
                                        <br>
                                        <h3 class="text-light">사용 용도</h3>
                                        <c:forEach items="${hopUsedForList}" var="usedFor">
                                            <button type="button" class="btn btn-xs btn-support1">
                                                ${usedFor.usedFor}
                                            </button>
                                        </c:forEach>
                                        <br>
                                        <br>
                                        <p>${HopDetail.koreanNotes}</p>
                                        <h3 class="text-light">풍미</h3>
                                        <c:forEach items="${hopAromaList}" var="aromaName">
                                            <button type="button" class="btn btn-xs btn-support1">
                                                    ${aromaName.aromaName}
                                            </button>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <article class="style-white">
                                        <div class="box-body">
                                            <h3 class="text-light">대체 홉</h3>
                                            <c:forEach items="${selectHopSubstitutesList}" var="substitutesName">
                                                <button type="button" onclick="goDetail(' ${substitutesName.substitutesSeq}');" class="btn btn-primary btn-xs">
                                                        ${substitutesName.substitutesName}
                                                </button>
                                            </c:forEach>
                                            <br>
                                            <div>
                                                <h3 class="text-light">수치</h3>
                                                <div class="row well clearfix">
                                                    <div class="heading">
                                                        <div class="pull-left">
                                                            <!--h4>Hop  <span class="semi-bold">chemistry</span></h4-->
                                                            <p>다음 패치에서는 상세수치가 업데이트 됩니다.</p>
                                                        </div>
                                                        <div class="pull-right"> <span class="small-text muted">v1.0.1</span> </div>
                                                        <div class="clearfix"> </div>
                                                    </div>
                                                    <div class="col-md-4 single-colored-widget">
                                                        <div class="content-box green">
                                                            <h4 class="text-gray"><span class="semi-bold">${HopDetail.alpha} %</span> - <span class="semi-bold">Alpha</span></h4>
                                                            <p> 브루어들이 자신이 양조할 맥주의 쓴 맛을 계산하게 해주기 위해 알파산 퍼센티지가 기재되어있습니다.</p>
                                                            <button class="btn btn-white btn-xs" data-toggle="modal" data-target="#myModal"> 자세히 보기 </button>

                                                            <!--div class="pull-left" class="col-md-12">
                                                            <input type="text"  data-slider-value="[${HopDetail.alpha}]" data-slider-step="0.5" data-slider-max="25" data-slider-min="0" value=""

                                                                   class="slider-element form-control" data-slider-selection="after">
                                                        </div>
                                                        <!--div class="pull-right"> (자세히 보기)</div-->
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4 single-colored-widget">
                                                        <div class="content-wrapper red">
                                                            <h4 class="text-gray"><span class="semi-bold">${HopDetail.beta} %</span> - <span class="semi-bold">BETA</span></h4>
                                                            <p>발효와 저장과정에서 알파산이 내는 쓴 맛이 점차 사라질 때 베타산은 천천히 산화를 통하여 쓴맛을 만들어냅니다.</p>
                                                            <button class="btn btn-white btn-xs" data-toggle="modal" data-target="#myModal2"> 자세히 보기 </button>
                                                            <!--div class="pull-left">
                                                    <input type="text"  data-slider-value="[${HopDetail.beta}]" data-slider-step="0.5" data-slider-max="25" data-slider-min="0" value="" class="slider-element form-control" data-slider-selection="after">
                                                </div>
                                                <!--div class="pull-right"> (자세히 보기)</div-->
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4 single-colored-widget">
                                                        <div class="content-wrapper blue">
                                                            <h4 class="text-gray"><span class="semi-bold">${HopDetail.hsi} %</span> - <span class="semi-bold">HSI</span></h4>
                                                            <p>개월 동안 소멸되는 알파산의 퍼센티지를 나타내는 저장성 수치. 오래된 홉의 알파산을 계산할 때 이용된다.</p>
                                                                    <!--div class="pull-left">
                                                            <input type="text"  data-slider-value="[${HopDetail.hsi}]" data-slider-step="0.5" data-slider-max="100" data-slider-min="0" value="" class="slider-element form-control" data-slider-selection="after">
                                                        </div>
                                                        <!--div class="pull-right"> (자세히 보기)</div-->
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </div>

                                                        <!--div class="col-md-4 col-xs-7 no-padding">
                                                    <div class="tiles red p-t-20 text-center">
                                                        <i class="fa fa-share fa fa-2x fa-spin" id="widget-partly-rainy-day"></i>
                                                        <h5 class="bold text-white text-center p-b-15">${HopDetail.hsi} % - HSI</h5>
                                                    </div>
                                                    </div-->
                                                </div>

                                                        <!--div class="row tiles-container">
                                                            <div class="slider info col-md-8">
                                                                <input type="text"  data-slider-value="[10]" data-slider-step="5" data-slider-max="100" data-slider-min="10" value="" class="slider-element form-control" data-slider-selection="after">
                                                            </div>
                                                        </div-->


                                                        <!--div class="row form-row">
                                                            <div class="slider col-md-4">
                                                                <span class="semi-bold">CO-HUMULONE 함유랑</span>
                                                            </div>
                                                            <div class="slider info col-md-8">
                                                                <input type="text" disable data-slider-value="[10,45]" data-slider-step="5" data-slider-max="100" data-slider-min="10" value="" class="slider-element form-control" data-slider-selection="after">
                                                            </div>
                                                        </div-->
                                            </div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <br>
                                    <i class="icon-credit-card icon-7x"></i>
                                    <h4 id="myModalLabel" class="semi-bold">Alpha acids</h4>
                                    <br>
                                </div>
                                <div class="modal-body">
                                    <div class="row form-row">
                                        <div class="col-md-12">
                                            <P>
                                                알파산은 홈 브루어에게 가장 친숙한 홉 성분입니다. 홈브루어에게 판매되는 모든 홉패키지에는 브루어들이 자신이 양조할 맥주의 쓴 맛을 계산하게 해주기 위해 알파산 퍼센티지가 기재되어있습니다. 알파산 퍼센티지는 알파산으로 구성된 홉의 총량을 나타냅니다.
                                            </P>
                                        </div>
                                    </div>
                                    <div class="row form-row">
                                        <div class="col-md-12">
                                            <P>
                                                알파산 퍼센티지는 여러 개의 분리된 화학물질들을 아우르는데, 각각의 화학물질들은 독특한 풍미와 쓴맛의 스타일을 더합니다.
                                            </P>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <br>
                                    <i class="icon-credit-card icon-7x"></i>
                                    <h4 id="myModalLabel" class="semi-bold">Beta acids</h4>
                                    <br>
                                </div>
                                <div class="modal-body">
                                    <div class="row form-row">
                                        <div class="col-md-12">
                                            <P>
                                                베타산은 보일링 때는 알파산만큼 쓴맛을 만들지 않지만 발효와 저장과정에서 알파산이 내는 쓴 맛이 점차 사라질 때 베타산은 천천히 산화를 통하여 쓴맛을 만들어냅니다. 이것은 숙성 및 라거링 된 맥주의 장기적 특성에 영향을 미칩니다.
                                            </P>
                                        </div>
                                    </div>
                                    <div class="row form-row">
                                        <div class="col-md-12">
                                            <P>
                                                베타산은 홉 생산자들에 의해 전체 홉 무게중 베타산이 차지하는 퍼센티지, 혹은 알파 대 베타의 비율로 기재됩니다. 어떤 사람들은 베타산이 주는 쓴맛이 알파산(혹은 적어도 휴물론)이 주는 것보다 더 강하다고 여겨서 베타산을 적게 함유한 홉을 찾기도 합니다. 하지만, 전통적인 노블홉들은 일반적으로 알바와 베타산을 거의 1:1의 비율로 갖고 있기 때문에 베타산도 몇몇 사람들에게는 좋다고 여겨집니다. 다른 브루어들은 숙성된 맥주에서 가장 변함없는(일정한?) 쓴맛을 생산하는 것으로 알려진 2:1의 비율을 선호합니다.
                                            </P>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                    </div>

            <br/><br/>

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
                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined">
                    <div class="box-body no-padding">
                        <form:form class="form-horizontal form-banded form-bordered" action="/hop/list" id="searchForm"  name="searchForm">
                            <input id = "origin" name ="origin" type ="hidden" value="">
                            <input id = "type" name ="type" type ="hidden" value="">
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
                                <th class="small-cell"> </th>
                                <th>이름</th>
                                <th>영문명</th>
                                <th>타입</th>
                                <th>원산지</th>
                                <th>ALPHA</th>
                                <th>BETA</th>
                                <th>HSI</th>
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