<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<section>
<ol class="breadcrumb">
    <li><a href="#">홈</a></li>
    <li><a href="#">레시피</a></li>
    <li class="active">레시피 만들기</li>


</ol>
<div class="section-header">
    <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i> 레시피 만들기</h3>
</div>
<div class="section-body">

<!-- BEGIN BASIC FORM INPUTS -->
<div class="row">
<div class="col-lg-12">
<div class="box box-outlined">
<div class="box-head">
    <header><h4 class="text-light"><i class="fa fa-pencil fa-fw"></i> 레시피 <strong>컨셉</strong></h4></header>
</div>
<div class="box-body no-padding">
<form:form id="insert" class="form-horizontal form-banded form-bordered" onsubmit="return false" name="insert" method="POST" enctype="multipart/form-data"  action="/recipe/insertRecipe" modelAttribute="paramRecipe">
<div class="form-group">
    <div class="col-md-2">
        <label class="control-label">이름</label>
    </div>
    <div class="col-md-10">
        <input type="text" class="form-control" id="name" name="name" placeholder="레시피 이름을 입력하세요. 예를들면 '유자 페일에일'" >
    </div>
</div>
<div class="form-group">
    <div class="col-md-2">
        <label class="control-label">양조 방법</label>
    </div>
    <div class="col-md-10">
        <div data-toggle="buttons">
            <label class="btn radio-inline btn-radio-primary-inverse active">
                <input type="radio" id="type" name="type" value="1" checked> 완전 곡물 - All Grain
            </label>
            <label class="btn radio-inline btn-radio-primary-inverse">
                <input type="radio" id="type" name="type" value="2"> 부분곡물 - Partial Mash
            </label>
            <label class="btn radio-inline btn-radio-primary-inverse">
                <input type="radio" id="type" name="type" value="3"> 원액 캔 - Extract
            </label>
        </div>
    </div>
</div>
<div class="form-group">
    <div class="col-md-2">
        <label class="control-label">스타일</label>
    </div>
    <div class="col-md-10">
        <select class="form-control select2-list" id="styleSeq" name="styleSeq" data-placeholder="Select an item">
            <optgroup  label="1. LIGHT LAGER">
                <option value="14">라이트 미국식 라거</option>
                <option value="53">스탠다드 미국식 라거</option>
                <option value="21">뮤닉 헬레스</option>
                <option value="8">도르트문트 엑스포트</option>
            </optgroup>
            <optgroup label="2. PILSNER">
                <option value="10">독일식 필스너</option>
                <option value="40">보헤미안 필스너</option>
                <option value="75">클래식 미국식 필스너</option>
            </optgroup>
            <optgroup label="3. EUROPEAN AMBER LAGER">
                <option value="46">비엔나 라거</option>
                <option value="65">옥토버페스트</option>
            </optgroup>
            <optgroup label="4. DARK LAGER">
                <option value="7">다크 미국식 라거</option>
                <option value="20">뮤닉 둔켈</option>
                <option value="48">슈바르츠비어(흑맥주)</option>
            </optgroup>
            <optgroup label="5. BOCK">
                <option value="18">마이복/헬레스복</option>
                <option value="69">전통복</option>
                <option value="9">도펠복</option>
                <option value="60">아이스복</option>
            </optgroup>
            <optgroup label="6. LIGHT HYBRID BEER">
                <option value="73">크림 에일</option>
                <option value="44">블론드 에일</option>
                <option value="71">쾰시</option>
                <option value="23">미국식 밀/호밀 맥주</option>
            </optgroup>
            <optgroup label="7. AMBER HYBRID BEER">
                <option value="41">북독일 알트비어</option>
                <option value="70">캘리포니아 커먼 맥주</option>
                <option value="12">뒤셀도르프 알트비어</option>
            </optgroup>
            <optgroup label="8. ENGLISH PALE ALE">
                <option value="54">스탠다드/보통 비터</option>
                <option value="57">스페셜/베스트/프리미엄 비터</option>
                <option value="61">엑스트라 스페셜/스트롱 비터(영국식 페일에일)</option>
            </optgroup>
            <optgroup label="9. SCOTTISH AND IRISH ALE">
                <option value="50">스카티쉬 라이트 60</option>
                <option value="52">스카티쉬 헤비 70</option>
                <option value="51">스카티쉬 엑스포트 80</option>
                <option value="59">아이리쉬 레드 에일</option>
                <option value="56">스트롱 스카치 에일</option>
            </optgroup>
            <optgroup label="10. AMERICAN ALE">
                <option value="28">미국식 페일 에일</option>
                <option value="27">미국식 앰버 에일</option>
                <option value="25">미국식 브라운 에일</option>
            </optgroup>
            <optgroup label="11. ENGLISH BROWN ALE">
                <option value="19">마일드</option>
                <option value="6">남부 영국식 브라운</option>
                <option value="42">북부 영국식 브라운 에일</option>
            </optgroup>
            <optgroup label="12. PORTER">
                <option value="43">브라운 포터</option>
                <option value="17">로버스트 포터</option>
                <option value="31">발틱 포터</option>
            </optgroup>
            <optgroup label="13. STOUT">
                <option value="13">드라이 스타우트</option>
                <option value="49">스위트 스타우트</option>
                <option value="64">오트밀 스타우트</option>
                <option value="26">미국식 스타우트</option>
                <option value="15">러시안 임페리얼 스타우트</option>
            </optgroup>
            <optgroup label="14. INDIA PALE ALE (IPA)">
                <option value="62">영국식 IPA</option>
                <option value="22">미국식 IPA</option>
                <option value="68">임페리얼 IPA</option>
            </optgroup>
            <optgroup label="15. GERMAN WHEAT AND RYE BEER">
                <option value="29">바이젠/바이스비어</option>
                <option value="11">둔켈바이젠</option>
                <option value="30">바이젠복</option>
                <option value="16">로겐비어 (독일식 호밀 맥주)</option>
            </optgroup>
            <optgroup label="16. BELGIAN AND FRENCH ALE">
                <option value="67">윗비어</option>
                <option value="38">벨지안 페일에일</option>
                <option value="47">세종</option>
                <option value="45">비에르드갸르드</option>
                <option value="39">벨지안/프렌치 에일</option>
            </optgroup>
            <optgroup label="17. SOUR ALE">
                <option value="32">베를리너 바이세</option>
                <option value="55">스트레이트(언블렌디드) 람빅</option>
                <option value="3">괴즈</option>
                <option value="1">과일 람빅</option>
            </optgroup>
            <optgroup label="18. BELGIAN STRONG ALE">
                <option value="36">벨지안 블론드 에일</option>
                <option value="35">벨지안 두벨</option>
                <option value="37">벨지안 트리펠</option>
                <option value="33">벨지안 골든 스트롱 에일</option>
                <option value="34">벨지안 다크 스트롱 에일</option>
            </optgroup>
            <optgroup label="19. STRONG ALE">
                <option value="66">올드에일</option>
                <option value="63">영국식 발리와인</option>
                <option value="24">미국식 발리와인</option>
            </optgroup>
            <optgroup label="20. FRUIT BEER">
                <option value="2">과일맥주</option>
            </optgroup>
            <optgroup label="21. SPICE/HERB/VEGETABLE BEER">
                <option value="72">크리스마스/겨울 스페셜티 향신료 맥주</option>
            </optgroup>
            <optgroup label="22. SMOKE-FLAVORED/WOOD-AGED BEER">
                <option value="74">클래식 라우흐비어</option>
                <option value="4">기타 훈제 맥주</option>
                <option value="5">나무숙성 맥주</option>
            </optgroup>
            <optgroup label="23. SPECIALTY BEER">
                <option value="58">스페셜 맥주</option>
            </optgroup>
        </select>
    </div>
</div>
<div class="form-group">
    <div class="col-md-2">
        <label class="control-label">커버 이미지</label>
    </div>
    <div class="col-md-10">
        <input name="file" type="file" multiple />
        <p class="help-block">이미지 사이즈는 270x270으로 올려주세요.</p>
    </div>
</div>
<div class="form-group">
    <div class="col-md-2">
        <label class="control-label">레시피 컨셉 설명</label>
    </div>
    <div class="col-md-10">
        <textarea id="notes" name="notes" class="form-control" rows="3"></textarea>
    </div>
</div>

<div class="box-head">
    <header><h4 class="text-light"><i class="fa fa-pencil fa-fw"></i> 배치 <strong>&</strong> 보일링</h4></header>
</div>
<div class="form-group">
    <div class="col-md-2">
        <label class="control-label">용량</label>
    </div>
    <div class="col-md-4">
        <input id="batchSize" name ="batchSize" type="text" class="form-control control-width-small" value="19" placeholder="검색어 입력">
    </div>
    <div class="col-md-2"  style="background: #f2f2f2;">
        <label class="control-label">수율</label>
    </div>
    <div class="col-md-4">
        <input id="efficiency" name ="efficiency" type="text" class="form-control control-width-small" value="19" placeholder="검색어 입력">
    </div>
</div>
<div class="box-head">
    <header><h4 class="text-light"><i class="fa fa-pencil fa-fw"></i> <strong>재료</strong> 구성</h4></header>
</div>
<div class="form-group">
    <div class="col-md-2">
        <label class="control-label">발효 재료<small>Fermentables</small></label>
    </div>
    <div class="col-md-10">
        <select class="form-control select2-list" name="fermentable" id="fermentable" data-placeholder="Select an item">
            <option>=== 선택해주세요 ===</option>
            <c:forEach items="${fermentableList }" var="fermentableList" varStatus="i">
                <c:choose>
                    <c:when test="${fermentableList.titleYn == 'Y'}">
                        <c:choose>
                            <c:when test="${fermentableList.endTitleYn == 'Y'}">
                                </optgroup>
                            </c:when>
                            <c:otherwise>
                                <optgroup  label="${fermentableList.name }">
                            </c:otherwise>
                        </c:choose>
                    </c:when>
                    <c:otherwise>
                        <option value="${fermentableList.seq }" title="${fermentableList.name }">${fermentableList.name } (${fermentableList.color} °L) - ${fermentableList.originKorean} </option>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </select>
        <table id="fermantableListTable" name="fermantableListTable" class="table table-hover table-striped no-margin">
            <thead>
            <tr>
                <th>#</th>
                <th>재료명</th>
                <th>수량</th>
                <th>사용방법</th>
                <th style="width:90px">복사</th>
                <th style="width:90px">삭제</th>
            </tr>
            </thead>
            <tbody class="d_tbody">
            </tbody>
        </table>
    </div>
</div>
<div class="form-group">
    <div class="col-md-2">
        <label class="control-label">홉<small>Hops</small></label>
    </div>
    <div class="col-md-10">
        <select class="form-control select2-list" name="hop" id="hop" data-placeholder="Select an item">
            <option>=== 선택해주세요 ===</option>
            <c:forEach items="${hopList}" var="hopList" varStatus="i">
                <option value="${hopList.seq }" title="${hopList.name }">${hopList.name } (${hopList.alpha} %) - ${hopList.originKorean} </option>
            </c:forEach>
        </select>
    </div>
</div>
<div class="form-group">
    <div class="col-md-2">
        <label class="control-label">효모<small>Yeast</small></label>
    </div>
    <div class="col-md-10">
        <select class="form-control select2-list" name="yeast" id="yeast" data-placeholder="Select an item">
        </select>
    </div>
</div>
<div class="form-group">
    <div class="col-md-2">
        <label class="control-label">기타 재료<small>MISC</small></label>
    </div>
    <div class="col-md-10">
        <select class="form-control select2-list" name="misc" id="misc" data-placeholder="Select an item">
        </select>
    </div>
</div>
<div class="form-group">
    <div class="col-md-2">
        <label class="control-label">태그</label>
    </div>
    <div class="col-md-10">
        <input type="text" value="에일,BJCP,RECIPE" data-role="tagsinput" />
    </div>
</div>
<div class="box-footer">
<button class="btn btn-default" id="insertRecipe" name="insertRecipe">다음</button>
</div>
</form:form>
</div><!--end .box-body -->
</div><!--end .box -->
</div><!--end .col-lg-12 -->
</div><!--end .row -->
<!-- END BASIC FORM INPUTS -->

<!-- END FORM TOOLS -->

</div><!--end .section-body -->
</section>

<content tag="local_script">
    <script type="text/javascript">
        $('#insertRecipe').on('click', function () {
            document.insert.submit();
        });

        function getFermentableList(){
            var fermentableHtml = "";
            $.get("/fermentable/selectFermentableGroupList", function(data, status){
                $.each(data, function(i){
                    //<optgroup  label="1. LIGHT LAGER">
                    if(data[i].titleYn == "Y"){
                        if(data[i].endTitleYn == "Y"){
                            fermentableHtml = fermentableHtml +  "</optgroup>";
                        }else {
                            fermentableHtml = fermentableHtml +  "<optgroup  label=" + data[i].name +">";
                        }
                    }else{
                        fermentableHtml = fermentableHtml +  "<option VALUE='"+data[i].seq+"'>" + data[i].name + " - " + " ( "+ data[i].color+ " °L) - " + data[i].originKorean + "</option>";
                    }
                });
                $("#fermentable").append(fermentableHtml);
            })
        }

        function getHopList(){
            var hopHtml = "";
            $.get("/hop/getHopList", function(data, status){
                $.each(data, function(i){
                    hopHtml = hopHtml +  "<option VALUE='"+data[i].seq+"'>" + data[i].name + " - " + " ( "+ data[i].alpha+ " %) - " + data[i].originKorean + "</option>";
                });
                $("#hop").append(hopHtml);
            })
        }

        function getYeastList(){
            var yeastHtml = "";
            $.get("/yeast/getYeastList", function(data, status){
                $.each(data, function(i){
                    yeastHtml = yeastHtml +  "<option VALUE='"+data[i].seq+"'>" + data[i].koreanName + " - " + " ( "+ data[i].form+ " ) </option>";
                });
                $("#yeast").append(yeastHtml);
            })
        }

        function getMiscList(){
            var miscHtml = "";
            $.get("/misc/getMiscList", function(data, status){
                /*
                $.each(data, function(i){
                    ("#misc").append("<option VALUE='"+data[i].seq+"'>" + data[i].koreanName + " - " + " ( "+ data[i].typeKorean+ " )- " + data[i].useFor + " </option>");
                });
                */
            })
        }

        $("#fermantableListTable").on('click', '.row_delete', function () {
            row_delete($(this));
        });
        $("#fermantableListTable").on('click', '.row_copy', function () {
            row_copy($(this));
        });
        //삭제함수
        function row_delete(obj) {
            $(obj).parent().parent().remove().fadeOut('slow');
        }

        function row_copy(obj) {
            $add_html = $(obj).parent().parent().clone().fadeIn('slow');
            $('.d_tbody').append($add_html);
        }

        $(document).ready(function() {
            var fermentableHtml = "";
            //getFermentableList();
            $('#fermentable').change(function(){
                //$add_html = $('.d_tbody tr:last').clone().fadeIn('slow');
                fermentableHtml = "";
                fermentableHtml = fermentableHtml +"<tr>";
                fermentableHtml = fermentableHtml +"<td>1<input id='recipeFermantableSeqs' name ='recipeFermantableSeqs' type='hidden' value='"+$("#fermentable option:selected").val()+"'></td>";
                fermentableHtml = fermentableHtml +"<td>"+ $("#fermentable option:selected").text() +"</td> ";
                fermentableHtml = fermentableHtml +"<td>";
                fermentableHtml = fermentableHtml +"<div class='input-group' style='width:115px;'>";
                fermentableHtml = fermentableHtml +"<input id='recipeFermantableAmounts' name ='recipeFermantableAmounts'  type='text' class='form-control control-width-tiny' value='19'> ";
                fermentableHtml = fermentableHtml +"<div class='input-group-btn'> ";
                fermentableHtml = fermentableHtml +"<button type='button' class='btn btn-default' tabindex='-1'>KG</button> ";
                fermentableHtml = fermentableHtml +"<button type='button' class='btn btn-default dropdown-toggle' data-toggle='dropdown' tabindex='-1'> ";
                fermentableHtml = fermentableHtml +"<span class='caret'></span> ";
                fermentableHtml = fermentableHtml +"</button> ";
                fermentableHtml = fermentableHtml +"<ul class='dropdown-menu pull-right' role='menu'> ";
                fermentableHtml = fermentableHtml +"<li><a href='#'>KG</a></li> ";
                fermentableHtml = fermentableHtml +"<li><a href='#'>G</a></li>";
                fermentableHtml = fermentableHtml +"</ul> ";
                fermentableHtml = fermentableHtml +"</div>";
                fermentableHtml = fermentableHtml +"</div>";
                fermentableHtml = fermentableHtml +"</td> ";
                fermentableHtml = fermentableHtml +"<td>";
                fermentableHtml = fermentableHtml +"<select id='recipeFermantableUses' name ='recipeFermantableUses' class='form-control'> ";
                fermentableHtml = fermentableHtml +"<option value=''>Choose...</option><option value='3'>Boil</option><option value='4'>Late Boil</option><option value='1'>Mash</option><option value='2'>Steep</option> ";
                fermentableHtml = fermentableHtml +"</select> ";
                fermentableHtml = fermentableHtml +"</td> ";
                fermentableHtml = fermentableHtml +"<td>";
                fermentableHtml = fermentableHtml +"<button type='button' class='btn btn-primary btn-outline row_copy'><i class='fa fa-copy'></i>  복사</button>";
                fermentableHtml = fermentableHtml +"</td>";
                fermentableHtml = fermentableHtml +"<td><button type='button' class='btn btn-primary btn-outline row_delete'><i class='fa fa-trash-o'></i> 삭제</button>";
                fermentableHtml = fermentableHtml +"</td> ";
                fermentableHtml = fermentableHtml +"</tr> ";
                $("#fermantableListTable").append(fermentableHtml);
            });
        });
    </script>
</content>