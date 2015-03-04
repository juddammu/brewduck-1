<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<title>레시피 만들기</title>

<input id="styleOgMin" name="styleOgMin" type="hidden" value="1.028">
<input id="styleOgMax" name="styleOgMax" type="hidden" value="1.04">

<input id="styleFgMin" name="styleFgMin" type="hidden" value="0.998">
<input id="styleFgMax" name="styleFgMax" type="hidden" value="1.008">

<input id="styleIbuMin" name="styleIbuMin" type="hidden" value="8">
<input id="styleIbuMax" name="styleIbuMax" type="hidden" value="12">

<input id="styleAbvMin" name="styleAbvMin" type="hidden" value="2.8">
<input id="styleAbvMax" name="styleAbvMax" type="hidden" value="4.2">

<input id="styleSrmMin" name="styleSrmMin" type="hidden" value="2">
<input id="styleSrmMax" name="styleSrmMax" type="hidden" value="3">

<input id="resultOg" name="resultOg" type="hidden">
<input id="resultFg" name="resultFg" type="hidden">

<input id="resultIbu" name="resultIbu" type="hidden">
<input id="resultAbv" name="resultAbv" type="hidden">
<input id="resultSrm" name="resultSrm" type="hidden">

<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>레시피 만들기
                <small>New Recipe</small>
            </h1>
        </div>
        <!-- END PAGE TITLE -->
    </div>
</div>
<div class="page-content">
<div class="container-fluid">

<div class="row">
<div class="col-md-12">
<form:form  id="insert" class="form-horizontal form-row-seperated" name="insert"
            method="POST" enctype="multipart/form-data" action="/recipe/insertRecipe"
            onsubmit="return false;"
            modelAttribute="paramRecipe">

<input type="hidden"  id="id" name="id" value="${recipeId}">

<!-- Begin: life time stats -->
<div class="note note-info note-bordered">
    <p>
        에러나 기능 개선이 필요하시면 <a href="#" target="_blank">
        기능개선 게시판</a>을 활용해주세요.
    </p>
</div>

<div class="portlet light bordered">
<div class="portlet-title">
    <div class="caption">
        <i class="fa fa-gift"></i>레시피 개요
    </div>
</div>


<div class="portlet-body">
<div class="tabbable">
<div class="tabbable">
<ul class="nav nav-tabs">
    <li class="active">
        <a href="#tab_1" data-toggle="tab">
            일반 </a>
    </li>
    <li>
        <a href="#tab_2" data-toggle="tab">
            배치 & 보일링 설정 </a>
    </li>
    <li>
        <a href="#tab_3" data-toggle="tab">
            당화스탭 </a>
    </li>
</ul>
<div class="tab-content col-xs-9 no-space">
<div class="tab-pane active" id="tab_1">
    <div class="form-body">
        <div class="form-group">
            <label class="col-md-2 control-label">레시피 이름
                <span class="required"> * </span>
            </label>
            <div class="col-md-10">
                <input class="form-control input-lg" onkeyup='expectText();' type="text" id="name" name="name" placeholder="레시피 이름">
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label">양조 타입<span class="required"> * </span>
            </label>
            <div class="col-md-10">
                <div class="btn-group" data-toggle="buttons">
                    <label class="btn btn-default active">
                        <input type="radio" id="typeCode" name="typeCode" value="1" class="toggle"> 완전곡물 </label>
                    <label class="btn btn-default">
                        <input type="radio" name="typeCode" value="2" class="toggle"> 부분곡물 </label>
                    <label class="btn btn-default">
                        <input type="radio" name="typeCode" value="3" class="toggle"> 원액 캔 - Extract</label>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label">맥주 스타일<span class="required"> * </span>
            </label>
            <div class="col-md-10">
                <select class="form-control select2-list" id="styleId" name="styleId"
                        data-placeholder="Select an item">
                    <optgroup label="1. LIGHT LAGER">
                        <option value="14">1A. 라이트 미국식 라거</option>
                        <option value="53">1B. 스탠다드 미국식 라거</option>
                        <option value="21">1C. 뮤닉 헬레스</option>
                        <option value="8">1D. 도르트문트 엑스포트</option>
                    </optgroup>
                    <optgroup label="2. PILSNER">
                        <option value="10">2A. 독일식 필스너</option>
                        <option value="40">2B. 보헤미안 필스너</option>
                        <option value="75">2C. 클래식 미국식 필스너</option>
                    </optgroup>
                    <optgroup label="3. EUROPEAN AMBER LAGER">
                        <option value="46">3A. 비엔나 라거</option>
                        <option value="65">3B. 옥토버페스트</option>
                    </optgroup>
                    <optgroup label="4. DARK LAGER">
                        <option value="7">4A. 다크 미국식 라거</option>
                        <option value="20">4B. 뮤닉 둔켈</option>
                        <option value="48">4C. 슈바르츠비어(흑맥주)</option>
                    </optgroup>
                    <optgroup label="5. BOCK">
                        <option value="18">5A. 마이복/헬레스복</option>
                        <option value="69">5B. 전통복</option>
                        <option value="9">5C. 도펠복</option>
                        <option value="60">5D. 아이스복</option>
                    </optgroup>
                    <optgroup label="6. LIGHT HYBRID BEER">
                        <option value="73">6A. 크림 에일</option>
                        <option value="44">6B. 블론드 에일</option>
                        <option value="71">6C. 쾰시</option>
                        <option value="23">6D. 미국식 밀/호밀 맥주</option>
                    </optgroup>
                    <optgroup label="7. AMBER HYBRID BEER">
                        <option value="41">7A. 북독일 알트비어</option>
                        <option value="70">7B. 캘리포니아 커먼 맥주</option>
                        <option value="12">7C. 뒤셀도르프 알트비어</option>
                    </optgroup>
                    <optgroup label="8. ENGLISH PALE ALE">
                        <option value="54">8A. 스탠다드/보통 비터</option>
                        <option value="57">8B. 스페셜/베스트/프리미엄 비터</option>
                        <option value="61">8C. 엑스트라 스페셜/스트롱 비터(영국식 페일에일)</option>
                    </optgroup>
                    <optgroup label="9. SCOTTISH AND IRISH ALE">
                        <option value="50">9A. 스카티쉬 라이트 60</option>
                        <option value="52">9B. 스카티쉬 헤비 70</option>
                        <option value="51">9C. 스카티쉬 엑스포트 80</option>
                        <option value="59">9D. 아이리쉬 레드 에일</option>
                        <option value="56">9E. 스트롱 스카치 에일</option>
                    </optgroup>
                    <optgroup label="10. AMERICAN ALE">
                        <option value="28">10A. 미국식 페일 에일</option>
                        <option value="27">10B. 미국식 앰버 에일</option>
                        <option value="25">10C. 미국식 브라운 에일</option>
                    </optgroup>
                    <optgroup label="11. ENGLISH BROWN ALE">
                        <option value="19">11A. 마일드</option>
                        <option value="6">11B. 남부 영국식 브라운</option>
                        <option value="42">11C. 북부 영국식 브라운 에일</option>
                    </optgroup>
                    <optgroup label="12. PORTER">
                        <option value="43">12A. 브라운 포터</option>
                        <option value="17">12B. 로버스트 포터</option>
                        <option value="31">12C. 발틱 포터</option>
                    </optgroup>
                    <optgroup label="13. STOUT">
                        <option value="13">13A. 드라이 스타우트</option>
                        <option value="49">13B. 스위트 스타우트</option>
                        <option value="64">13C. 오트밀 스타우트</option>
                        <option value="26">13D. 미국식 스타우트</option>
                        <option value="15">13E. 러시안 임페리얼 스타우트</option>
                    </optgroup>
                    <optgroup label="14. INDIA PALE ALE (IPA)">
                        <option value="62">14A. 영국식 IPA</option>
                        <option value="22">14B. 미국식 IPA</option>
                        <option value="68">14C. 임페리얼 IPA</option>
                    </optgroup>
                    <optgroup label="15. GERMAN WHEAT AND RYE BEER">
                        <option value="29">15A. 바이젠/바이스비어</option>
                        <option value="11">15B. 둔켈바이젠</option>
                        <option value="30">15C. 바이젠복</option>
                        <option value="16">15D. 로겐비어 (독일식 호밀 맥주)</option>
                    </optgroup>
                    <optgroup label="16. BELGIAN AND FRENCH ALE">
                        <option value="67">16A. 윗비어</option>
                        <option value="38">16B. 벨지안 페일에일</option>
                        <option value="47">16C. 세종</option>
                        <option value="45">16D. 비에르드갸르드</option>
                        <option value="39">16E. 벨지안/프렌치 에일</option>
                    </optgroup>
                    <optgroup label="17. SOUR ALE">
                        <option value="32">17A. 베를리너 바이세</option>
                        <option value="55">17D. 스트레이트(언블렌디드) 람빅</option>
                        <option value="3">17E. 괴즈</option>
                        <option value="1">17F. 과일 람빅</option>
                    </optgroup>
                    <optgroup label="18. BELGIAN STRONG ALE">
                        <option value="36">18A. 벨지안 블론드 에일</option>
                        <option value="35">18B. 벨지안 두벨</option>
                        <option value="37">18C. 벨지안 트리펠</option>
                        <option value="33">18D. 벨지안 골든 스트롱 에일</option>
                        <option value="34">18E. 벨지안 다크 스트롱 에일</option>
                    </optgroup>
                    <optgroup label="19. STRONG ALE">
                        <option value="66">19A. 올드에일</option>
                        <option value="63">19B. 영국식 발리와인</option>
                        <option value="24">19C. 미국식 발리와인</option>
                    </optgroup>
                    <!--optgroup label="20. FRUIT BEER">
                        <option value="2">과일맥주</option>
                    </optgroup>
                    <optgroup label="21. SPICE/HERB/VEGETABLE BEER">
                        <option value="72">크리스마스/겨울 스페셜티 향신료 맥주</option>
                    </optgroup-->
                    <optgroup label="22. SMOKE-FLAVORED/WOOD-AGED BEER">
                        <option value="74">22A. 클래식 라우흐비어</option>
                        <!--option value="4">기타 훈제 맥주</option>
                        <option value="5">나무숙성 맥주</option-->
                    </optgroup>
                    <optgroup label="23. SPECIALTY BEER">
                        <option value="58">스페셜 맥주</option>
                    </optgroup>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label">레시피 컨셉 설명 </label>
            <div class="col-md-10">
                <textarea id="note" name="note" class="form-control" onchange="getLineFeed()"
                          rows="3"></textarea>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label"></label>
            <div class="col-md-10">
                <button type="submit" class="btn btn-primary" id="insertRecipe" name="insertRecipe">완료</button>
            </div>
        </div>


    </div>
</div>
<div class="tab-pane" id="tab_2">
    <div class="form-body">
        <div class="form-group">
            <label class="col-md-2 control-label">배치 용량<span class="required"> * </span></label>
            <div class="col-md-4">
                <div class="input-group input-small ">
                    <input type="text"  id="batchSize" name="batchSize" onkeyup='expectText();' class="form-control form-control text-right"  value="20" required>
                        <span class="input-group-addon">
                        리터(ℓ)
                        </span>
                </div>
            </div>
            <label class="col-md-2 control-label">수율<span class="required"> * </span></label>
            <div class="col-md-4">
                <div class="input-group input-small ">
                    <input type="text"  id="efficiency" name="efficiency" onkeyup='expectText();' class="form-control form-control text-right"  value="65" required>
                        <span class="input-group-addon">
                        %
                        </span>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label">보일링 용량<span class="required"> * </span></label>
            <div class="col-md-4">
                <div class="input-group input-small ">
                    <input type="text"  id="boilSize" name="boilSize" onkeyup='expectText();'  class="form-control form-control text-right"  value="22" required>
                        <span class="input-group-addon">
                        리터(ℓ)
                        </span>
                </div>
            </div>
            <label class="col-md-2 control-label">보일링 시간<span class="required"> * </span></label>
            <div class="col-md-4">
                <div class="input-group input-small ">
                    <input type="text"  id="boilTime" name="boilTime" onkeyup='expectText();' class="form-control form-control text-right"  value="60" required>
                        <span class="input-group-addon">
                        분
                        </span>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="tab-pane" id="tab_3">
    설정
</div>
</div>
<div class="col-xs-3">
    <div class="portlet light">
        <span class="font-blue caption-helper small" id="expectStyle" name="expectStyle">(1A. 라이트 미국식 라거)</span>
        <div id="expectName" name="expectName">
            <strong> 이름없음 </strong>
        </div>
        <br/>
        <div class="portlet-title">
            <table class="table table-bordered table-striped table-condensed flip-content">
                <tr>
                    <td><span class="font-blue">배치용량</span></td>
                    <td id="expectBatchSize" name="expectBatchSize" colspan="2">20 리터</td>
                </tr>
                <tr>
                    <td><span class="font-blue">보일링용량</span></td>
                    <td id="expectBoilingSetting" name="expectBoilingSetting" colspan="2">22리터 @ 60분</td>
                </tr>
                <tr>
                    <td><span class="font-blue">OG</span></td>
                    <td id="expectOg" name="expectOg" colspan="2">1.087</td>
                </tr>
                <tr>
                    <td><span class="font-blue">FG</span></td>
                    <td id="expectFg" name="expectFg" colspan="2">1.022</td>
                </tr>
                <tr>
                    <td><span class="font-blue">색상</span></td>
                    <td id="expectSrm" name="expectSrm" >
                        0 L
                    </td>
                    <td>
                        <!--ul class="icheck-colors">
                            <li id="expectSrmCode" name="expectSrmCode" style="background:#730800">
                            </li>
                        </ul-->
                    </td>
                </tr>
                <tr>
                    <td><span class="font-blue">수율</span></td>
                    <td id="expectEfficiency" name="expectEfficiency" colspan="2">65 %</td>
                </tr>
                <tr>
                    <td><span class="font-blue">Bitterness</span></td>
                    <td id="expectIbu" name="expectIbu" colspan="2">0.0 IBU</td>
                </tr>
                <tr>
                    <td><span class="font-blue">Alcohol</span></td>
                    <td id="expectAbv" name="expectAbv" colspan="2">8.4% ABV</td>
                </tr>
                <tr>
                    <td><span class="font-blue">Calories</span></td>
                    <td id="expectCalories" name="expectCalories" colspan="2">304 per 12oz</td>
                </tr>
            </table>
        </div>
    </div>

</div>
</div>
</div>
</div>

<!-- End: life time stats -->
</div>


<div class="portlet light bordered">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift"></i> 재료 구성
        </div>
    </div>

    <div class="portlet-body">

        <div class="row">

            <div class="col-xs-9 invoice-block">
                <div class="table-actions-wrapper pull-right  margin-bottom-10">
                    <button class="btn btn-sm yellow" href="/common/popup/fermentables" data-target="#ajax" data-toggle="modal"><i class="fa fa-check"></i> 추가</button>
                </div>

                <div class="table-scrollable">
                    <table class="table table-striped table-bordered table-hover dataTable no-footer"
                           id="fermantableListTable" name="fermantableListTable" aria-describedby="datatable_orders_info" role="grid">
                        <thead>
                        <tr role="row" class="heading">
                            <th class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                재료명 &nbsp;
                            </th>
                            <th width="15%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                사용방법
                            </th>
                            <th width="5%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                수량&nbsp;
                            </th>
                            <th width="10%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                단위
                            </th>
                            <th width="5%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                Color
                            </th>
                            <th width="5%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                PPG
                            </th>
                            </th><th width="5%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                            삭제
                        </th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table></div>
            </div>

            <div class="modal fade modal-scroll bs-modal-lg"  tabindex="-1" id="ajax" role="dialog"  aria-hidden="true">

                <div class="page-loading page-loading-boxed">
                    <img src="/resources/assets/global/img/loading-spinner-grey.gif" alt="" class="loading">
                        <span>
                        &nbsp;&nbsp;Loading... </span>
                </div>
                <div class="modal-dialog  modal-lg">
                    <div class="modal-content">
                    </div>
                </div>
            </div>

            <div class="modal fade modal-scroll bs-modal-lg"  tabindex="-1" id="ajax2" role="dialog"  aria-hidden="true">

                <div class="page-loading page-loading-boxed">
                    <img src="/resources/assets/global/img/loading-spinner-grey.gif" alt="" class="loading">
                        <span>
                        &nbsp;&nbsp;Loading... </span>
                </div>
                <div class="modal-dialog  modal-lg">
                    <div class="modal-content">
                    </div>
                </div>
            </div>

            <div class="modal fade modal-scroll bs-modal-lg"  tabindex="-1" id="ajax3" role="dialog"  aria-hidden="true">

                <div class="page-loading page-loading-boxed">
                    <img src="/resources/assets/global/img/loading-spinner-grey.gif" alt="" class="loading">
									<span>
									&nbsp;&nbsp;Loading... </span>
                </div>
                <div class="modal-dialog  modal-lg">
                    <div class="modal-content">
                    </div>
                </div>
            </div>

            <div class="modal fade modal-scroll bs-modal-lg"  tabindex="-1" id="ajax4" role="dialog"  aria-hidden="true">

                <div class="page-loading page-loading-boxed">
                    <img src="/resources/assets/global/img/loading-spinner-grey.gif" alt="" class="loading">
									<span>
									&nbsp;&nbsp;Loading... </span>
                </div>
                <div class="modal-dialog  modal-lg">
                    <div class="modal-content">
                    </div>
                </div>
            </div>

            <div class="col-xs-3">

                <div class="top-news">
                    <a href="javascript:;" class="btn green-haze">
                        <em>스타일 마법사 (OG / SRM)</em>
                    </a>
                </div>
                <div class="portlet light">
                    <div class="portlet-title">
                        <table class="table table-striped">
                            <tbody>
                            <tr>
                                <td ><span class="font-blue">OG (가이드)</span> <em id="ogResultText"></em></td>
                                <td id="ogSpec" name="ogSpec" >1.028 ~ 1.04</td>
                            </tr>
                            <tr>
                                <td><span class="font-blue">OG </span></td>
                                <td id="ogText" name="ogText"></td>
                            </tr>
                            <tr>
                                <td><span class="font-blue">SRM (가이드) </span><em id="srmResultText"></em></td>
                                <td id="srmSpec" name="srmSpec">2 ~ 3 °</td>
                            </tr>
                            <tr>
                                <td><span class="font-blue">SRM</span></td>
                                <td id="srmText" name="srmText"></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>

        <!-- 홉 추가 화면 시작 -->
        <div class="row">

            <div class="col-xs-9 invoice-block">
                <div class="table-actions-wrapper pull-right  margin-bottom-10">
                    <button class="btn btn-sm yellow" href="/common/popup/hops" data-target="#ajax2" data-toggle="modal"><i class="fa fa-check"></i> 추가</button>
                </div>

                <div class="table-scrollable">
                    <table class="table table-striped table-bordered table-hover dataTable no-footer"
                           id="hopListTable" name="hopListTable" aria-describedby="datatable_orders_info" role="grid">
                        <thead>
                        <tr role="row" class="heading">
                            <th class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                재료명 &nbsp;
                            </th>
                            <th width="15%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                사용방법
                            </th>
                            <th width="10%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                수량&nbsp;
                            </th>
                            <th width="10%" class="sorting" tabindex="0" aria-controls="datatable_orders" >

                            </th>
                            <th width="10%" cclass="sorting" tabindex="0" aria-controls="datatable_orders" >
                                시간
                            </th>
                            <th width="10%" cclass="sorting" tabindex="0" aria-controls="datatable_orders" >

                            </th>
                            <th width="6%" class="sorting" tabindex="0" aria-conwmatrols="datatable_orders" >
                                알파
                            </th>
                            </th><th width="5%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                            삭제
                        </th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table></div>
            </div>

            <div class="col-xs-3">


                <div class="top-news">
                    <a id="ibuCheck" href="javascript:;" class="btn green-haze">
                        <em id="ibuSpec">IBU : 8 ~ 12 (가이드)</em>
                    </a>
                </div>


                <div class="portlet light">
                    <div class="portlet-title right">
                        <div class="caption">
                            <i class="icon-pin font-yellow-crusta"></i>
								            <span class="caption-subject bold font-yellow-crusta uppercase" id="ibuText" name="ibuText">
								            0
                                            </span>
                            <span class="caption-helper small">IBU</span>
                        </div>
                        <h4 class="pull-right" id="ibuResultText" name="ibuResultText"></h4>
                    </div>
                </div>

            </div>
        </div>

        <!-- 효모 추가 화면 시작 -->
        <div class="row">

            <div class="col-xs-9 invoice-block">
                <div class="table-actions-wrapper pull-right  margin-bottom-10">
                    <span>
                    </span>
                    <button class="btn btn-sm yellow" href="/common/popup/yeasts" data-target="#ajax3" data-toggle="modal"><i class="fa fa-check"></i> 추가</button>
                </div>

                <div class="table-scrollable">
                    <table class="table table-striped table-bordered table-hover dataTable no-footer"
                           id="yeastListTable" name="yeastListTable" aria-describedby="datatable_orders_info" role="grid">
                        <thead>
                        <tr role="row" class="heading">
                            <th class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                이스트명 &nbsp;
                            </th>
                            <th width="15%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                제조사
                            </th>
                            <th width="10%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                제품 ID&nbsp;
                            </th>
                            <th width="10%" cclass="sorting" tabindex="0" aria-controls="datatable_orders" >
                                종류
                            </th>
                            <th width="6%" class="sorting" tabindex="0" aria-conwmatrols="datatable_orders" >
                                발효도
                            </th>
                            </th><th width="5%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                            삭제
                        </th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table></div>
            </div>



            <div class="col-xs-3">


                <div class="top-news">
                    <a id="abvCheck" href="javascript:;" class="btn green-haze">
                        <em id="abvSpec">ABV : 2.8 ~ 4.2 % (가이드)</em>
                    </a>
                </div>


                <div class="portlet light">
                    <div class="portlet-title right">
                        <div class="caption">
                            <i class="icon-pin font-yellow-crusta"></i>
                                <span class="caption-subject bold font-yellow-crusta uppercase" id="abvText" name="abvText">
                                0
                                </span>
                            <span class="caption-helper small">ABV</span>
                        </div>
                        <h4 class="pull-right" id="abvResultText" name="abvResultText"></h4>
                    </div>
                </div>

            </div>
        </div>

        <!-- 기타재료 추가 화면 시작 -->
        <div class="row">

            <div class="col-xs-9 invoice-block">
                <div class="table-actions-wrapper pull-right  margin-bottom-10">
                    <span>
                    </span>
                    <button class="btn btn-sm yellow" href="/common/popup/miscs" data-target="#ajax4" data-toggle="modal"><i class="fa fa-check"></i> 추가</button>
                </div>

                <div class="table-scrollable">
                    <table class="table table-striped table-bordered table-hover dataTable no-footer"
                           id="miscListTable" name="miscListTable" aria-describedby="datatable_orders_info" role="grid">
                        <thead>
                        <tr role="row" class="heading">
                            <th class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                재료명 &nbsp;
                            </th>
                            <th width="15%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                                수량&nbsp;
                            </th>
                            <th width="10%" class="sorting" tabindex="0" aria-controls="datatable_orders" >

                            </th>
                            <th width="10%" cclass="sorting" tabindex="0" aria-controls="datatable_orders" >
                                시간
                            </th>
                            <th width="10%" class="sorting" tabindex="0" aria-controls="datatable_orders" >

                            </th>
                            <th width="6%" class="sorting" tabindex="0" aria-conwmatrols="datatable_orders" >
                                사용방법                            </th>
                            </th><th width="5%" class="sorting" tabindex="0" aria-controls="datatable_orders" >
                            삭제
                        </th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table></div>
            </div>



            <div class="col-xs-3">

            </div>
        </div>
    </div>
    <!-- End: life time stats -->
</div>

</form:form>
</div>
</div>
</div>
</div>


<content tag="local_script">

<script type="text/javascript" src="/resources/assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>

<script src="/resources/assets/admin/pages/scripts/recipe-form-validation.js"></script>

<!--
TODO : http://ionden.com/a/plugins/ion.rangeSlider/demo_interactions.html 추후 이 슬라이더 넣을것
-->

<script type="text/javascript">

function calcSrm() {
    var batchSize = parseFloat($('#batchSize').val());
    var srm = 0;
    var lovibond = 0;
    var weight = 0;
    var sumSrm = 0;
    var recipeFermantableAmounts = 0;
    var mcu = 0;

    for (var i = 0; i < $("input[name='lovibond']").length; i++) {
        srm = 0;
        mcu = 0;
        lovibond = parseFloat($("input[name='lovibond']").eq(i).val());
        recipeFermantableAmounts = parseFloat($("input[name='recipeFermantableAmounts']").eq(i).val());

        recipeFermantableAmounts = gramToPound(recipeFermantableAmounts);

        mcu = (lovibond * recipeFermantableAmounts ) /batchSize;

       // console.warn("mcu " + mcu);

        //This works great for beers that are light in color but due to the fact that light absorbance is logarithmic and not linear we need to use the Morey equation:
        srm = 1.49 * (mcu * 0.69);
        //SRM Color = 1.49 * (MCU * 0.69)

       // srm = 0.3 * recipeFermantableAmounts * lovibond;
     //   console.warn("srm " + srm);

       // srm = srm / batchSize;
        sumSrm = sumSrm + srm;
    }

    if ($("input[name='lovibond']").length == 0) {
        $('#srmText').html('');
    } else {
        if(recipeFermantableAmounts > 0){
            //sumSrm = sumSrm + 4.7;
            sumSrm = sumSrm.toFixed(1);
        }else{
            sumSrm = 0;
        }

        $('#srmText').html(sumSrm + '°');
        $('#resultSrm').val(sumSrm);
        $('#expectSrm').html(sumSrm+ '°');

    }

    var srmResultText = "";

    $('#srmResultText').html('');

    //pass 여부 체크
    if(sumSrm >= $("#styleSrmMin").val()){
        console.warn("색상 최소값 통과");

        if(sumSrm <= $("#styleSrmMax").val()){
            console.warn("색상 최대값 통과");
            $('#srmResultText').html('PASS');
        }else{
            $('#srmResultText').html('Fail');
        }
    }else{
        $('#srmResultText').html('Fail');
    }


}

function calcOg() {

    var batchSize = parseFloat($('#batchSize').val());
    var efficiency = parseFloat($('#efficiency').val());
    var ppg = 0;
    var recipeFermantableAmounts = 0;
    var og = 0;
    var sumOg= 0 ;

    if (isNaN(batchSize)) {
        return;
    } else {
        batchSize = literToGalon(batchSize);
    }
    if (isNaN(efficiency)) {
        return;
    } else {
        efficiency = efficiency / 100;
    }

    if($("input[name='ppg']").length != $("input[name='recipeFermantableAmounts']").length){
        return;
    }

    for (var i = 0; i < $("input[name='ppg']").length; i++) {
        ppg = parseFloat($("input[name='ppg']").eq(i).val());
        recipeFermantableAmounts = parseFloat($("input[name='recipeFermantableAmounts']").eq(i).val());
        recipeFermantableAmounts = gramToPound(recipeFermantableAmounts);
        og = (recipeFermantableAmounts * ppg * efficiency) / batchSize;
        sumOg = sumOg + og;
    }

    if ($("input[name='ppg']").length == 0) {
        $('#ogText').html('');
        $('#resultOg').val('');
    } else {

        sumOg = (sumOg / 1000) + 1;
        sumOg = sumOg.toFixed(3);

        $('#ogText').html('');
        $('#ogText').html(sumOg);
        $('#expectOg').html(sumOg);
        $('#resultOg').val(sumOg);
    }

    //pass 여부 체크
    if(sumOg >= $("#styleOgMin").val()){
        console.warn("최소값 통과");
        if(sumOg <= $("#styleOgMax").val()){
            console.warn("최대값 통과");
            $('#ogResultText').html('PASS');
        }else{
            $('#ogResultText').html('Fail');
        }
    }else{
        $('#ogResultText').html('Fail');
    }

}

function calcIbu() {
    var batchSize = parseFloat($('#batchSize').val());

    var alpha = 0;
    var amount = 0;
    var og = parseFloat($('#resultOg').val());
    var time = 0;
    var ibu = 0;


    if (isNaN(og)) {
        $('#ibuText').html('');
        return;
    }

    if (isNaN(batchSize)) {
        $('#ibuText').html('');
        return;
    }

    if ($("input[name='recipeHopTimes']").length == 0) {
        $('#ibuText').html('');
        return;
    }

    if ($("input[name='recipeHopAlphas']").length == 0) {
        $('#ibuText').html('');
        return;
    }

    if ($("input[name='recipeHopAmounts']").length == 0) {
        $('#ibuText').html('');
        return;
    }

    for (var i = 0; i < $("input[name='recipeHopTimes']").length; i++) {
        time = time + parseFloat($("input[name='recipeHopTimes']").eq(i).val());
    }

    for (var i = 0; i < $("input[name='recipeHopAlphas']").length; i++) {
        alpha = alpha + parseFloat($("input[name='recipeHopAlphas']").eq(i).val());
    }

    for (var i = 0; i < $("input[name='recipeHopAmounts']").length; i++) {
        amount = amount + parseFloat($("input[name='recipeHopAmounts']").eq(i).val());
    }

    console.log("hop link" + "/hop/utilization/" + og + "/" + time + "/" + batchSize + "/" + amount + "/" + alpha);

    $.get("/hop/utilization/" + og + "/" + time + "/" + batchSize + "/" + amount + "/" + alpha, function (data, status) {
        var ibu = parseFloat(data);
        ibu = ibu * 10000;
        ibu = ibu.toFixed(1);
        $('#ibuText').html('IBU : ' + ibu);
        $('#resultIbu').val(ibu);
        $('#expectIbu').html(ibu);
    })

}

function calcAbv() {
    console.warn("시작");
    var og = parseFloat($('#resultOg').val());
    var fg = parseFloat($('#resultFg').val());

    console.warn("og" + og);
    console.warn("fg"+ fg);

    if (isNaN(og) || isNaN(fg)) {
        $('#abv').html('&ndash;');
        return;
    }

    var abv = (og - fg) * 131;
    abv = abv.toFixed(1);
    $('#abvText').html('');
    $('#abvText').html(abv);
    $('#expectOg').html(abv);
    $('#resultAbv').val(abv);

    if(abv >= $("#styleAdvMin").val()){
        console.warn("최소값 통과");
        if(styleAdv <= $("#styleAdvMax").val()){
            console.warn("최대값 통과");
            $('#advResultText').html('PASS');
        }else{
            $('#advResultText').html('Fail');
        }
    }else{
        $('#advResultText').html('Fail');
    }
}

function calcFg() {


    var batchSize = parseFloat($('#batchSize').val());
    var efficiency = parseFloat($('#efficiency').val());

    var og = parseFloat($('#resultOg').val());
    var fg = 0;
    var tg = 0;
    og = (og - 1) * 1000;

    var minAttenuation = 0;
    var maxAttenuation = 0;
    var attenuation = 0;

    console.warn("Fg length" +  $("input[name='attenuation']").length);

    for (var i = 0; i < $("input[name='attenuation']").length; i++) {
      /*  minAttenuation = parseFloat($("input[name='minAttenuation']").eq(i).val());
        maxAttenuation = parseFloat($("input[name='maxAttenuation']").eq(i).val());*/
        attenuation = parseFloat($("input[name='attenuation']").eq(i).val());
    }

    if ($("input[name='attenuation']").length == 0) {
        $('#fgText').html('');
        $('#resultFg').val('');
        $('#abvText').html('');
    } else {
        attenuation = attenuation / $("input[name='attenuation']").length;
        attenuation = attenuation / 100;

        tg = og * attenuation;
        fg = og - tg;
        fg = (fg / 1000) + 1;
        fg = fg.toFixed(3);
        $('#fgText').html('FG : ' + fg);
        $('#resultFg').val(fg);
    }

}

function expectText(){

    if (isNaN($("#name").val())) {
        $('#expectName').html("이름없음");
    }else{
        $('#expectName').html("<strong>"+$("#name").val() + "</strong>");
    }


    $('#expectStyle').html("<strong>"+$("#styleId option:selected").text() + "</strong>");


    if (isNaN($("#batchSize").val())) {
        $('#expectBatchSize').html(" - ");
    }else{
        $('#expectBatchSize').html($("#batchSize").val() + " 리터");
    }

    if (isNaN($("#efficiency").val())) {
        $('#expectEfficiency').html(" - ");
    }else{
        $('#expectEfficiency').html($("#efficiency").val() + " %");
    }

    if (isNaN($("#boilSize").val()) && isNaN($("#boilTime").val())) {
        $('#expectBoilingSetting').html(" - ");
    }else{
        $('#expectBoilingSetting').html($("#boilSize").val() + " 리터 @ "+$("#boilTime").val() + " 분");
    }


}

function calc() {
    calcSrm();
    calcOg();
    calcFg();
    calcIbu();
    calcAbv();
    /*calcSrm();
     calcOg();
     calcFg();
     calcIbu();
     calcAbv();
     checkStyle();*/
}



function add_fermententable(fermentableData){

    var returnFermentableData = fermentableData.split("^");

    /* $.each(returnFermentableData, function(i){
     console.log(returnFermentableData[i]);
     });*/


    fermentableHtml = "";
    fermentableHtml = fermentableHtml + "<tr role='row' class='filter'>";
    fermentableHtml = fermentableHtml + "    <td>";
    fermentableHtml = fermentableHtml + "        <input type='text' class='form-control form-filter input-sm' name='order_id' value='"+returnFermentableData[1]+"'>";
    fermentableHtml = fermentableHtml + "    </td>";
    fermentableHtml = fermentableHtml + "    <td>";
    fermentableHtml = fermentableHtml + "        <select id='recipeFermantableUses' name ='recipeFermantableUses' class='form-control form-filter input-sm' required> ";
    fermentableHtml = fermentableHtml + "            <option value=''>Choose...</option><option value='3'>끊임 - Boil</option><option value='4'>후반 끓임 - Late Boil</option><option value='1' selected>당화 - Mash</option><option value='2'>우려내기 - Steep</option> ";
    fermentableHtml = fermentableHtml + "        </select> ";
    fermentableHtml = fermentableHtml + "    </td>";

    fermentableHtml = fermentableHtml + "    <td>";
    fermentableHtml = fermentableHtml + "        <input type='text' class='form-control input-sm' id='recipeFermantableAmounts' onkeyup='javascript:calc(this);' name='recipeFermantableAmounts' value='2'>";
    fermentableHtml = fermentableHtml + "    </td>";
    fermentableHtml = fermentableHtml + "    <td>";
    fermentableHtml = fermentableHtml + "        <select id='recipeWeightUnit' name ='recipeWeightUnit' class='form-control form-filter input-sm' required> ";
    fermentableHtml = fermentableHtml + "            <option value='1'>g</option><option value='2' selected>kg</option>";
    fermentableHtml = fermentableHtml + "        </select> ";
    fermentableHtml = fermentableHtml + "    </td> ";
    fermentableHtml = fermentableHtml + "    <td >";
    fermentableHtml = fermentableHtml + "        <input type='text' class='form-control form-filter input-sm' name='lovibond' id='lovibond' onkeyup='javascript:calc(this);' value='"+returnFermentableData[3]+"'>";
    fermentableHtml = fermentableHtml + "    </td>";
    fermentableHtml = fermentableHtml + "    <td >";
    fermentableHtml = fermentableHtml + "        <input type='text' class='form-control form-filter input-sm' name='ppg' id='ppg' onkeyup='javascript:calc(this);' value='"+returnFermentableData[4]+"'>";
    fermentableHtml = fermentableHtml + "    </td>";
    fermentableHtml = fermentableHtml + "    <td>";
    fermentableHtml = fermentableHtml + "        <div class='margin-bottom-5'>";
    fermentableHtml = fermentableHtml + "<button type='button' class='btn btn-sm red filter-submit margin-bottom row_fermantable_delete'><i class='fa fa-trash-o'></i> 삭제</button>";

    fermentableHtml = fermentableHtml + "        </div>";
    fermentableHtml = fermentableHtml + "    </td>";
    fermentableHtml = fermentableHtml + "</tr>";

    $("#fermantableListTable").append(fermentableHtml);

    calc();
}

function add_hop(hopData){



    var returnHopData = hopData.split("^");

  /*  $.each(returnHopData, function(i){
     console.log(returnHopData[i]);
    });*/


    hopHtml = "";
    hopHtml = hopHtml + "<tr role='row' class='filter'>";
    hopHtml = hopHtml + "    <td>";
    hopHtml = hopHtml + "        <input type='text' class='form-control form-filter input-sm' name='order_id' value='"+returnHopData[1]+"'>";
    hopHtml = hopHtml + "    </td>";
    hopHtml = hopHtml + "    <td>";
    hopHtml = hopHtml + "<select id='recipeHopUses' name ='recipeHopUses' class='form-control' required> ";
    hopHtml = hopHtml + "<option value=''>Choose...</option><option value='3' selected>끓임 - Boil</option><option value='5'>드라이 홉 - Dry Hop</option><option value='1'>당화 - First Wort Hopping</option><option value='2'>플레임 아웃 - Flame Out</option><option value='6'>월풀 - Whirlpool</option>";
    hopHtml = hopHtml + "</select> ";
    hopHtml = hopHtml + "    </td>";
    hopHtml = hopHtml + "    <td>";
    hopHtml = hopHtml + "        <input type='text' class='form-control input-sm' id='recipeHopAmounts' onkeyup='javascript:calc(this);' name='recipeHopAmounts' value='28'>";
    hopHtml = hopHtml + "    </td>";
    hopHtml = hopHtml + "    <td>";
    hopHtml = hopHtml + "        <select id='recipeWeightUnit' name ='recipeWeightUnit' class='form-control form-filter input-sm' required> ";
    hopHtml = hopHtml + "            <option value='1'>oz</option><option value='2' selected>g</option>";
    hopHtml = hopHtml + "        </select> ";
    hopHtml = hopHtml + "    </td> ";
    hopHtml = hopHtml + "    <td>";
    hopHtml = hopHtml + "        <input type='text' class='form-control input-sm' id='recipeHopTimes' onkeyup='javascript:calc(this);' name='recipeHopTimes' value='0'>";
    hopHtml = hopHtml + "    </td>";
    hopHtml = hopHtml + "    <td>";
    hopHtml = hopHtml + "        <select id='recipeTimeUnit' name ='recipeTimeUnit' class='form-control form-filter input-sm' required> ";
    hopHtml = hopHtml + "            <option value='1' selected>분</option><option value='2'>일</option>";
    hopHtml = hopHtml + "        </select> ";
    hopHtml = hopHtml + "    </td>";
    hopHtml = hopHtml + "    <td >";
    hopHtml = hopHtml + "        <input type='text' class='form-control form-filter input-sm' name='recipeHopAlphas' id='recipeHopAlphas' onkeyup='javascript:calc(this);' value='"+returnHopData[4]+"'>";
    hopHtml = hopHtml + "    </td>";
    hopHtml = hopHtml + "    <td>";
    hopHtml = hopHtml + "        <div class='margin-bottom-5'>";
    hopHtml = hopHtml + "<button type='button' class='btn btn-sm red filter-submit margin-bottom row_hop_delete'><i class='fa fa-trash-o'></i> 삭제</button>";
    hopHtml = hopHtml + "        </div>";
    hopHtml = hopHtml + "    </td>";
    hopHtml = hopHtml + "</tr>";

    $("#hopListTable").append(hopHtml);

    calc();
}

function add_yeast(yeastData){

    var returnYeastData = yeastData.split("^");

     $.each(returnYeastData, function(i){
        console.log(returnYeastData[i]);
     });

    yeastHtml = "";
    yeastHtml = yeastHtml + "<tr role='row' class='filter'>";
    yeastHtml = yeastHtml + "    <td>";
    yeastHtml = yeastHtml + "        <input type='text' class='form-control form-filter input-sm' name='order_id' value='"+returnYeastData[1]+"'>";
    yeastHtml = yeastHtml + "    </td>";
    yeastHtml = yeastHtml + "    <td>";
    yeastHtml = yeastHtml + "        <input type='text' class='form-control form-filter input-sm' name='order_id' value='"+returnYeastData[3]+"'>";
    yeastHtml = yeastHtml + "    </td>";
    yeastHtml = yeastHtml + "    <td>";
    yeastHtml = yeastHtml + "        <input type='text' class='form-control form-filter input-sm' name='order_id' value='"+returnYeastData[2]+"'>";
    yeastHtml = yeastHtml + "    </td>";
    yeastHtml = yeastHtml + "    <td>";
    yeastHtml = yeastHtml + "        <input type='text' class='form-control form-filter input-sm' name='order_id' value='"+returnYeastData[5]+"'>";
    yeastHtml = yeastHtml + "    </td> ";
    yeastHtml = yeastHtml + "    <td>";
    yeastHtml = yeastHtml + "        <input type='text' class='form-control form-filter input-sm' name='attenuation' value='"+returnYeastData[4]+"'>";
    yeastHtml = yeastHtml + "    </td>";
    yeastHtml = yeastHtml + "    <td>";
    yeastHtml = yeastHtml + "        <div class='margin-bottom-5'>";
    yeastHtml = yeastHtml + "<button type='button' class='btn btn-sm red filter-submit margin-bottom row_yeast_delete'><i class='fa fa-trash-o'></i> 삭제</button>";
    yeastHtml = yeastHtml + "        </div>";
    yeastHtml = yeastHtml + "    </td>";
    yeastHtml = yeastHtml + "</tr>";

    $("#yeastListTable").append(yeastHtml);

    calc();
}

$(document).ready(function () {

    $('#styleId').select2();

    FormValidation.init();

    $('#styleId').change(function () {

        var id = $("#styleId option:selected").val();

        $.get("/style/getDetail/" + id, function (data, status) {
            $("#styleOgMin").val(data.ogMin);
            $("#styleOgMax").val(data.ogMax);
            $("#styleFgMin").val(data.fgMin);
            $("#styleFgMax").val(data.fgMax);
            $("#styleIbuMin").val(data.ibuMin);
            $("#styleIbuMax").val(data.ibuMax);
            $("#styleAbvMin").val(data.abvMin);
            $("#styleAbvMax").val(data.abvMax);
            $("#styleSrmMin").val(data.colorMin);
            $("#styleSrmMax").val(data.colorMax);

            $('#ogSpec').html(data.ogMin + ' ~ ' + data.ogMax );
            $('#srmSpec').html(data.colorMin + ' ~ ' + data.colorMax );


            Metronic.startPageLoading({animate: true});

            window.setTimeout(function () {
                Metronic.stopPageLoading();
            }, 1000);

            /*
             $('#ogSpec').html("<span class='tag label label-info'>OG  </span>" + data.ogMin + ' ~ ' + data.ogMax);
             $('#fgSpec').html("<span class='tag label label-info'>FG  </span>" + data.ogMin + ' ~ ' + data.ogMax);
             $('#srmSpec').html("<span class='tag label label-info'>SRM  </span>" + data.colorMin + ' ~ ' + data.colorMax);
             $('#ibuSpec').html("<span class='tag label label-info'>IBU  </span>" + data.ibuMin + ' ~ ' + data.ibuMax);
             $('#abvSpec').html("<span class='tag label label-info'>ADV  </span>" + data.abvMin + ' ~ ' + data.abvMax);
             */
        });

        expectText();


        //calc();
    });


});

function getLineFeed() {
    var note = $("#note").val().replace(/\n/g, '<br>');
    $("#notes").val(note);
}

$("#fermantableListTable").on('click', '.row_fermantable_delete', function () {
    row_fermantable_delete($(this));
    calc();
});

//삭제함수
function row_fermantable_delete(obj) {
    $(obj).parent().parent().parent().remove().fadeOut('slow');
}

function gramToPound(weight) {
    weight = parseFloat(weight);
    if (isNaN(weight)) {
        return;
    }
    return weight * 2.204623;
}

function literToGalon(liter) {
    liter = parseFloat(liter);
    if (isNaN(liter)) {
        return;
    }
    return liter / 3.78534;
}

</script>


</content>
