<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<title>${recipeDetail.name}</title>

<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>대쉬보드
                <small>나의 레시피</small>
            </h1>
        </div>
        <!-- END PAGE TITLE -->
    </div>
</div>

<!-- BEGIN PAGE CONTENT -->
<div class="page-content">
<div class="container-fluid">

<!-- BEGIN PAGE CONTENT INNER -->
<div class="portlet light">
<div class="portlet-body">
<div class="invoice">
<div class="row invoice-logo">
    <div class="col-xs-10">

        <h2 class="page-header text-red">
            ${recipeDetail.name}
            <small style="font-size:12px;">
                <c:choose>
                    <c:when test="${recipeDetail.typeCode=='1'}">
                        완전 곡물 - All Grain
                    </c:when>
                    <c:when test="${recipeDetail.typeCode=='2'}">
                        부분곡물 - Partial Mash
                    </c:when>
                    <c:when test="${recipeDetail.typeCode=='3'}">
                        원액 캔 - Extract
                    </c:when>
                </c:choose>
            </small>
        </h2>

    </div>
    <div class="col-xs-2">
        <a class="btn blue hidden-print margin-bottom-5 pull-right" onclick="javascript:window.print();">
            출력 <i class="fa fa-print"></i>
        </a>
    </div>
</div>
<hr/>

<div class="row">
    <div class="col-xs-8">
        <p class="lead">SPEC</p>
        <div class="table-responsive">
            <table class="table">
                <tr>
                    <th style="width:25%">Style:</th>
                    <td>${recipeDetail.styleId}${recipeDetail.styleLetter}. ${recipeDetail.styleName}</td>
                    <th style="width:25%">Efficiency:</th>
                    <td>${recipeDetail.efficiency} %</td>
                </tr>
                <tr>
                    <th>Color / Calories</th>
                    <td> </td>
                    <th>OG / FG</th>
                    <td>1.054 / 1.010</td>
                </tr>
                <tr>
                    <th>ABV:</th>
                    <td> </td>
                    <th>IBU's:</th>
                    <td> </td>
                </tr>
                <tr>
                    <th>Batch Size:</th>
                    <td>${recipeDetail.batchSize} L</td>
                    <th>Boil Time:</th>
                    <td>${recipeDetail.boilTime} 분</td>
                </tr>
            </table>
        </div>
    </div>
    <div class="col-xs-4 invoice-payment">
        <p class="lead">NOTE</p>
        <table class="table">
            <tr>
                <td>${recipeDetail.notes} </td>
            </tr>
        </table>
    </div>
</div>

<hr/>

<div class="row">
    <div class="col-xs-12">
        <p class="lead">발효 재료
            <small>Fermentables</small>
        </p>
        <table class="table table-striped table-hover">
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
                    <td>${fermentables.amounts} kg</td>
                    <td>
                        <c:choose>
                            <c:when test="${fermentables.useCode=='1'}">
                                당화 - Mash
                            </c:when>
                            <c:when test="${fermentables.useCode=='2'}">
                                우려내기 - Steep
                            </c:when>
                            <c:when test="${fermentables.useCode=='3'}">
                                끊임 - Boil
                            </c:when>
                            <c:when test="${fermentables.useCode=='4'}">
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

<hr/>

<div class="row">
    <div class="col-xs-12">
        <p class="lead">홉
            <small>Hops</small>
        </p>
        <table class="table table-striped table-hover">
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
                    <td>${hops.amounts} g</td>
                    <td>
                        <c:choose>
                            <c:when test="${hops.useCode=='1'}">
                                당화 - Mash
                            </c:when>
                            <c:when test="${hops.useCode=='2'}">
                                플레임 아웃 - Flame Out
                            </c:when>
                            <c:when test="${hops.useCode=='3'}">
                                끓임 - Boil
                            </c:when>
                            <c:when test="${hops.useCode=='5'}">
                                드라이 홉 - Dry Hop
                            </c:when>
                            <c:when test="${hops.useCode=='6'}">
                                월풀 - Whirlpool
                            </c:when>
                            <c:otherwise>
                                -
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>${hops.time} min</td>
                    <td>
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
                    <td>${hops.alpha} %</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<hr/>

<div class="row">
    <div class="col-xs-12">
        <p class="lead">효모
            <small>Yeasts</small>
        </p>
        <table class="table table-striped table-hover">
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
</div>

<c:if test="${!empty recipeDetail.miscs}">
<hr/>

<div class="row">
    <div class="col-xs-12">
        <p class="lead">첨가물
            <small>Extras</small>
        </p>
        <table class="table table-striped table-hover">
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
</div>
</c:if>
</div>
</div>
</div>
<!-- END PAGE CONTENT INNER -->



</div>
</div>



<content tag="local_script">
    <script src="/resources/expert/js/kakao/kakao-1.0.11.min.js"></script>
    <script src="/resources/expert/js/clipboard/ZeroClipboard.js"></script>
    <script>

       /* var client = new ZeroClipboard($('.clip_button'));

        client.on('ready', function (event) {
            // console.log( 'movie is loaded' );

            client.on('copy', function (event) {
                alert();
                event.clipboardData.setData('text/plain', $("#main_data").html());
            });

            client.on('aftercopy', function (event) {
                console.log('Copied text to clipboard: ' + event.data['text/plain']);
            });
        });

        client.on('error', function (event) {
            // console.log( 'ZeroClipboard error of type "' + event.name + '": ' + event.message );
            ZeroClipboard.destroy();
        });


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
                url: 'http://www.brewduck.com/homebrew/${recipeDetail.id}' // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다.
            }
        });*/

        $(document).ready(function () {
            //  alert(

        });
    </script>
</content>
