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
                                            노트 </a>
                                    </li>
                                    <li>
                                        <a href="#tab_4" data-toggle="tab">
                                            설정 </a>
                                    </li>
                                </ul>
                                <div class="tab-content no-space">
                                    <div class="tab-pane active" id="tab_1">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">레시피 이름<span class="required">
                                                        * </span>
                                                </label>
                                                <div class="col-md-10">
                                                    <input class="form-control input-lg" type="text"  id="name" name="name" placeholder="레시피 이름">
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
                                                <label class="col-md-2 control-label">배치 용량<span class="required"> * </span>
                                                </label>
                                                <div class="col-md-4">

                                                    <div class="input-group">
                                                        <input type="text"  id="batchSize" name="batchSize" class="form-control"  value="20" required>
                                                        <span class="input-group-addon">
                                                        리터(ℓ)
                                                        </span>
                                                    </div>
                                                </div>
                                                <label class="col-md-2 control-label">수율<span class="required"> * </span>
                                                </label>
                                                <div class="col-md-4">
                                                    <div class='input-group'>
                                                        <input id="efficiency" name="efficiency" type="text" class="form-control control-width-small" value="65" required>
                                                        <span class='input-group-addon'>%</span>
                                                    </div>
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
                                        브루잉 프로세스
                                    </div>
                                    <div class="tab-pane" id="tab_3">
                                        설정
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
                            <i class="fa fa-gift"></i> 몰트 & 발효재료
                        </div>
                    </div>


                    <div class="portlet-body">


                        <div class="row">


                            <div class="col-xs-9 invoice-block">
                                <div class="table-actions-wrapper pull-right  margin-bottom-10">
									<span>
									</span>
                                    <button class="btn btn-sm yellow" href="/common/popup/fermentables" data-target="#ajax" data-toggle="modal"><i class="fa fa-check"></i> 추가</button>

                                </div>


                                <div class="table-scrollable">
                                    <table class="table table-striped table-bordered table-hover dataTable no-footer"
                                           id="fermantableListTable" name="fermantableListTable" aria-describedby="datatable_orders_info" role="grid">
                                    <thead>
                                    <tr role="row" class="heading">
                                        <th width="2%" class="sorting_disabled" rowspan="1" colspan="1">
                                        <div class="checker"><span><input type="checkbox" class="group-checkable"></span></div>
                                        </th>
                                        <th width="35%" class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1">
                                            재료명 &nbsp;
                                        </th>
                                        <th width="15%" class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1">
                                            수량&nbsp;
                                        </th>
                                        <th width="10%" class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1">
                                            단위
                                        </th>
                                        <th width="15%" class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1">
                                            L
                                        </th>
                                        <th width="10%" class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1">
                                         PPG
                                        </th><th width="10%" class="sorting" tabindex="0" aria-controls="datatable_orders" rowspan="1" colspan="1">
                                        Actions
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

                            <div class="col-xs-3">


                                <div class="top-news">
                                    <a id="ogCheck" href="javascript:;" class="btn green-haze">
										<span id="ogText">0 OG</span>
                                        <em id="ogSpec">1.045 ~ 1.065 (BJDP GUIDE)</em>
                                        <i class="fa fa-briefcase top-news-icon"></i>
                                    </a>
                                </div>

                                <div id="chartdiv" class="chart" style="height: 50px;">
                                    <input id="range_1" type="text" name="range_1" value="1.045;1.065"/>

                                </div>

                                <div class="top-news">
                                    <a href="javascript:;" class="btn green-haze">
										<span id="srmText"> 0 SRM</span>
                                        <em id="srmSpec">2 ~ 5 (BJDP GUIDE)</em>
                                        <i class="fa fa-briefcase top-news-icon"></i>
                                    </a>
                                </div>


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

            <link href="/resources/assets/global/plugins/ion.rangeslider/css/ion.rangeSlider.css" rel="stylesheet" type="text/css"/>
            <link href="/resources/assets/global/plugins/ion.rangeslider/css/ion.rangeSlider.Metronic.css" rel="stylesheet" type="text/css"/>


            <script type="text/javascript" src="/resources/assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>
            <script src="/resources/assets/global/plugins/ion.rangeslider/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>

            <script src="/resources/assets/admin/pages/scripts/recipe-form-validation.js"></script>
            <script src="/resources/assets/admin/pages/scripts/recipe-components-ion-sliders.js"></script>


            <script type="text/javascript">
               /* function parent_fuction(){

                    //todo : 값가져와야댐

                    fermentableHtml = "";
                    fermentableHtml = fermentableHtml + "<tr role='row' class='filter'>";
                    fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1'></td>";
                    fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1'>";
                    fermentableHtml = fermentableHtml + "        <input type='text' class='form-control form-filter input-sm' name='order_id'>";
                    fermentableHtml = fermentableHtml + "    </td>";
                    fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1'></td>";
                    fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1'></td>";
                    fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1'></td>";
                    fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1'></td>";
                    fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1'>";
                    fermentableHtml = fermentableHtml + "        <div class='margin-bottom-5'>";
                    fermentableHtml = fermentableHtml + "            <button class='btn btn-sm yellow filter-submit margin-bottom'>삭제</button>";
                    fermentableHtml = fermentableHtml + "        </div>";
                    fermentableHtml = fermentableHtml + "    </td>";
                    fermentableHtml = fermentableHtml + "</tr>";
                    $("#fermantableListTable").append(fermentableHtml);
                }

                */

               function parent_fuction(fermentableData){

                   alert(fermentableData[0]);
                   return;

                   fermentableHtml = "";
                   fermentableHtml = fermentableHtml + "<tr role='row' class='filter'>";
                   fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1'></td>";
                   fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1'>";
                   fermentableHtml = fermentableHtml + "        <input type='text' class='form-control form-filter input-sm' name='order_id' value='"+fermentableData[0]+"'>";
                   fermentableHtml = fermentableHtml + "    </td>";
                   fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1'></td>";
                   fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1' >";
                   fermentableHtml = fermentableHtml + "        <input type='text' class='form-control form-filter input-sm' name='order_id' value='"+fermentableData[0]+"'>";
                   fermentableHtml = fermentableHtml + "    </td>";
                   fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1'></td>";
                   fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1'></td>";
                   fermentableHtml = fermentableHtml + "    <td rowspan='1' colspan='1'>";
                   fermentableHtml = fermentableHtml + "        <div class='margin-bottom-5'>";
                   fermentableHtml = fermentableHtml + "            <button class='btn btn-sm yellow filter-submit margin-bottom'>삭제</button>";
                   fermentableHtml = fermentableHtml + "        </div>";
                   fermentableHtml = fermentableHtml + "    </td>";
                   fermentableHtml = fermentableHtml + "</tr>";
                   $("#fermantableListTable").append(fermentableHtml);
               }


               $(document).ready(function () {
                    $('#styleId').select2();

                    FormValidation.init();
                    ComponentsIonSliders.init();

                    $('#add_fermentable').on('click', function (e) {
                        alert();
                        var id = $(this).val();
                        alert(id);
                    })

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

                            $('#ogSpec').html(data.ogMin + ' ~ ' + data.ogMax + " (BJDP GUIDE)");
                            $('#srmSpec').html(data.colorMin + ' ~ ' + data.colorMax + " (BJDP GUIDE)");



                            Metronic.startPageLoading({animate: true});

                            window.setTimeout(function () {
                                Metronic.stopPageLoading();
                            }, 1000);


                            $("#range_1").ionRangeSlider("update", {
                                min: data.ogMin - 0.01,
                                max: data.ogMax + 0.01,
                                from:  data.ogMin,
                                to: data.ogMax,
                                type: 'double',
                                step: 0.001,
                                hasGrid: true
                            });

                            /*
                            $('#ogSpec').html("<span class='tag label label-info'>OG  </span>" + data.ogMin + ' ~ ' + data.ogMax);
                            $('#fgSpec').html("<span class='tag label label-info'>FG  </span>" + data.ogMin + ' ~ ' + data.ogMax);
                            $('#srmSpec').html("<span class='tag label label-info'>SRM  </span>" + data.colorMin + ' ~ ' + data.colorMax);
                            $('#ibuSpec').html("<span class='tag label label-info'>IBU  </span>" + data.ibuMin + ' ~ ' + data.ibuMax);
                            $('#abvSpec').html("<span class='tag label label-info'>ADV  </span>" + data.abvMin + ' ~ ' + data.abvMax);
                            */
                        })


                        //calc();
                    });


                });

                var ComponentsIonSliders = function () {

                    return {
                        //main function to initiate the module
                        init: function () {

                            $("#range_1").ionRangeSlider({
                                min: 1.035,
                                max: 1.07,
                                from: 1.045,
                                to: 1.06,
                                type: 'double',
                                step: 0.001,
                                hasGrid: true
                            });

/*
                            $("#updateLast").on("click", function () {

                                $("#range_3").ionRangeSlider("update", {
                                    min: Math.round(10000 + Math.random() * 40000),
                                    max: Math.round(200000 + Math.random() * 100000),
                                    step: 1,
                                    from: Math.round(40000 + Math.random() * 40000),
                                    to: Math.round(150000 + Math.random() * 80000)
                                });

                            });
*/

                        }

                    };

                }();



                function getLineFeed() {
                    var note = $("#note").val().replace(/\n/g, '<br>');
                    $("#notes").val(note);
                }

            </script>


        </content>
