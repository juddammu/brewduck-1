<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-header">
                <!-- tools box -->
                <div class="pull-right box-tools">
                    <span class="box-btn" data-widget="collapse"><i class="fa fa-minus"></i>
                    </span>
                    <span class="box-btn" data-widget="remove"><i class="fa fa-times"></i>
                    </span>
                </div>
                <h3 class="box-title fontello-doc"><small>${recipeDetail.styleName}</small></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <!-- Main content -->
                <section class="content invoice">
                <div class="row no-print">
                    <div class="col-xs-12">
                        <button class="btn pull-right bg-red"><i class="fa fa-download"></i> PDF 로 다운로드</button>
                        <button class="btn pull-right btn-warning"  style="margin-right: 5px;" id="clipboard-btn" href="javascript:;"><i class="fa fa-copy"></i> 복사</button>
                    </div>
                </div>
                    <!-- title row -->
                    <div class="row">
                        <div class="col-xs-12 invoice-header">
                            <h2 class="page-header text-red">
                                <i class="fa fa-globe"></i> ${recipeDetail.name}
                                <small style="font-size:12px;" class="pull-right">
                                    <c:choose>
                                        <c:when test="${recipeDetail.type=='1'}">
                                            완전 곡물 - All Grain
                                        </c:when>
                                        <c:when test="${recipeDetail.type=='2'}">
                                            부분곡물 - Partial Mash
                                        </c:when>
                                        <c:when test="${recipeDetail.type=='3'}">
                                            원액 캔 - Extract
                                        </c:when>
                                    </c:choose>
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
                                        <th style="width:50%">Style:</th>
                                        <td>${recipeDetail.styleSeq}${recipeDetail.styleLetter}. ${recipeDetail.styleName}</td>
                                    </tr>
                                    <tr>
                                        <th>Efficiency:</th>
                                        <td>${recipeDetail.efficiency} %</td>
                                    </tr>
                                    <tr>
                                        <th>Color / Calories</th>
                                        <td> </td>
                                    </tr>
                                    <tr>
                                        <th>OG / FG</th>
                                        <td>1.054 / 1.010</td>
                                    </tr>
                                    <tr>
                                        <th>ABV:</th>
                                        <td>$265.24</td>
                                    </tr>
                                    <tr>
                                        <th>IBU's:</th>
                                        <td>$265.24</td>
                                    </tr>
                                    <tr>
                                        <th>Batch Size:</th>
                                        <td>${recipeDetail.batchSize} L</td>
                                    </tr>
                                    <tr>
                                        <th>Boil Time:</th>
                                        <td>${recipeDetail.boilTime} 분</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-8 invoice-col">
                            <p class="lead">NOTE</p>
                            <table class="table">
                                <tr>
                                    <td>${recipeDetail.notes} </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <h2 class="box-title"></h2>
                    <!-- /.row -->
                    <div class="row invoice-info">
                        <div class="col-sm-12 invoice-col">
                            <p class="lead">발효 재료 <small>Fermentables</small></p>
                            <div class="table-responsive">
                                <table class="table">

                                <thead>
                                <tr>
                                    <th>재료명</th>
                                    <th>수량</th>
                                    <th>사용방법</th>
                                    <th>색상</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${recipeDetail.fermentables}" var="fermentables" varStatus="i">
                                    <tr class="bg-white">
                                        <td>${fermentables.koreanName }</td>
                                        <td>${fermentables.amount} kg</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${fermentables.fermentableUse=='1'}">
                                                    당화 - Mash
                                                </c:when>
                                                <c:when test="${fermentables.fermentableUse=='2'}">
                                                    우려내기 - Steep
                                                </c:when>
                                                <c:when test="${fermentables.fermentableUse=='3'}">
                                                    끊임 - Boil
                                                </c:when>
                                                <c:when test="${fermentables.fermentableUse=='4'}">
                                                    후반 끓임 - Late Boil
                                                </c:when>
                                                <c:otherwise>
                                                    -
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td>${fermentables.color} °L</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            </div>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- Table row -->

                    <!-- /.row -->
                    <div class="row invoice-info">
                        <h3 class="box-title"></h3>
                        <div class="col-sm-12 invoice-col">
                            <p class="lead">홉  <small>Hops</small></p>
                            <div class="table-responsive">
                                <table class="table">

                                    <thead>
                                    <tr>
                                        <th>재료명</th>
                                        <th>수량</th>
                                        <th>용도</th>
                                        <th>시간</th>
                                        <th>형태</th>
                                        <th>Alpha</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${recipeDetail.hops}" var="hops" varStatus="i">
                                        <tr class="bg-white">
                                            <td>${hops.koreanName }</td>
                                            <td >${hops.amount} g</td>
                                            <td >
                                                <c:choose>
                                                    <c:when test="${hops.hopsUse=='1'}">
                                                        당화 - Mash
                                                    </c:when>
                                                    <c:when test="${hops.hopsUse=='2'}">
                                                        플레임 아웃 - Flame Out
                                                    </c:when>
                                                    <c:when test="${hops.hopsUse=='3'}">
                                                        끓임 - Boil
                                                    </c:when>
                                                    <c:when test="${hops.hopsUse=='5'}">
                                                        드라이 홉 - Dry Hop
                                                    </c:when>
                                                    <c:when test="${hops.hopsUse=='6'}">
                                                        월풀 - Whirlpool
                                                    </c:when>
                                                    <c:otherwise>
                                                        -
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td >${hops.time} min</td>
                                            <td >
                                                <c:choose>
                                                    <c:when test="${hops.form=='1'}">
                                                        Plug
                                                    </c:when>
                                                    <c:when test="${hops.form=='2'}">
                                                        -
                                                    </c:when>
                                                    <c:when test="${hops.form=='3'}">
                                                        Leaf
                                                    </c:when>
                                                    <c:when test="${hops.form=='4'}">
                                                        Pellet
                                                    </c:when>
                                                    <c:otherwise>
                                                        -
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td >${hops.alpha} %</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- Table row -->

                    <!-- /.row -->
                    <div class="row invoice-info">
                        <h3 class="box-title"></h3>
                        <div class="col-sm-12 invoice-col">
                            <p class="lead">효모 <small>Yeasts</small></p>
                            <div class="table-responsive">
                                    <table class="table table-condensed table-hover">
                                        <thead>
                                        <tr>
                                            <th>재료명</th>
                                            <th>제조사</th>
                                            <th>ID</th>
                                            <th>발효온도</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${recipeDetail.yeasts}" var="yeasts" varStatus="i">
                                            <tr>
                                                <td>${yeasts.koreanName }</td>
                                                <td>${yeasts.laboratory }</td>
                                                <td>${yeasts.productId }</td>
                                                <td>${yeasts.minTemperature} ~ ${yeasts.maxTemperature}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                            </div>
                        <!-- /.col -->
                        </div>
                    </div>
                    <!-- Table row -->


                    <!-- /.row -->
                    <!-- /.row -->
<c:if test="${!empty recipeDetail.miscs}">
    <div class="row invoice-info">
        <h3 class="box-title"></h3>
        <div class="col-sm-12 invoice-col">
            <p class="lead">첨가물 <small>Extras</small></p>
            <div class="table-responsive">
                <table class="table table-condensed table-hover">

                    <thead>
                    <tr>
                        <th>재료명</th>
                        <th>용량</th>
                        <th>시간 min</th>
                        <th>용도</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${recipeDetail.miscs}" var="miscs" varStatus="i">
                        <tr>
                            <td>${miscs.koreanName}</td>
                            <td>${miscs.amount}</td>
                            <td>${miscs.time}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${miscs.miscUse=='1'}">
                                        Mash
                                    </c:when>
                                    <c:when test="${miscs.miscUse=='2'}">
                                        Boil
                                    </c:when>
                                    <c:when test="${miscs.miscUse=='3'}">
                                        Primary
                                    </c:when>
                                    <c:when test="${miscs.miscUse=='4'}">
                                        Secondary
                                    </c:when>
                                    <c:when test="${miscs.miscUse=='5'}">
                                        Bottle
                                    </c:when>
                                    <c:when test="${miscs.miscUse=='6'}">
                                        Keg
                                    </c:when>
                                    <c:otherwise>
                                        -
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <!-- /.col -->
        </div>
    </div>
</c:if>

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
    <script src="/resources/expert/js/kakao/kakao-1.0.11.min.js"></script>
    <script src="/resources/expert/js/clipboard/ZeroClipboard.js"></script>
    <script>

        var client = new ZeroClipboard( $('.clip_button') );

        client.on( 'ready', function(event) {
            // console.log( 'movie is loaded' );

            client.on( 'copy', function(event) {
                alert();
                event.clipboardData.setData('text/plain', $("#main_data").html());
            } );

            client.on( 'aftercopy', function(event) {
                console.log('Copied text to clipboard: ' + event.data['text/plain']);
            } );
        } );

        client.on( 'error', function(event) {
            // console.log( 'ZeroClipboard error of type "' + event.name + '": ' + event.message );
            ZeroClipboard.destroy();
        } );


        Kakao.init('10b327030a57e1ca3b46585655ac5dd2');

        // 카카오톡 링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
        Kakao.Link.createTalkLinkButton({
            container: '#kakao-link-btn',
            label: '카톡 테스트중요',
            image: {
                src: 'http://dn.api1.kage.kakao.co.kr/14/dn/btqaWmFftyx/tBbQPH764Maw2R6IBhXd6K/o.jpg',
                width: '300',
                height: '200'
            },
            webButton: {
                text: '${recipeDetail.name}',
                url: 'http://www.brewduck.com/homebrew/${recipeDetail.seq}' // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다.
            }
        });

        $(document).ready(function() {
          //  alert(${recipeDetail.batchSize});
        });
    </script>
</content>