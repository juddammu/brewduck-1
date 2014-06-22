<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="breadcrumb-box">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/">홈</a> </li>
            <li><a href="/">레시피</a> </li>
            <li class="active">레시피 만들기</li>
        </ul>
    </div>
</div><!-- .breadcrumb-box -->

<section id="main" class="page">
<header class="page-header">
    <div class="container">
        <div class="form-group">
            <div class="controls">
                <select class="selectpicker" data-style="btn-primary">
                    <option>완전 곡물</option>
                    <option>부분곡물</option>
                    <option>캔</option>
                </select>
                &nbsp;&nbsp;
                <select id="style_list" style="width:50%">
                    <optgroup label="1. LIGHT LAGER">
                        <option value="14">라이트 미국식 라거</option>
                        <option value="53">스탠다드 미국식 라거</option>
                        <option value="21">뮤닉 헬레스</option>
                        <option value="8">도르트문트 엑스포트</option>
                    </optgroup>
                    <optgroup label="2. PILSNER">
                        <option value="10">독일식 필스너(필스)</option>
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

                <br /><br />
                <input type="text" class="form-control" id="name" name="name" placeholder="레시피 이름을 입력하세요. 예를들면 '유자 페일에일'" >
            </div>
        </div>
    </div>

</header>
    <div class="container">
        <div class="row">
            <article class="content col-sm-9 col-md-9">

                <ul id="checkoutsteps" class="clearfix panel-group">
                    <li class="panel">
                        <div class="step-title">
                            <div class="number"><button type="button" class="btn btn-primary btn-sm"  data-toggle="modal" data-target="#FermentableModal">추가</button></div>
                            <h6>발효재료 (Fermentable)</h6>
                        </div>
                        <div id="step-1" class="collapse in">
                            <div class="step-content">
                                <div class="row">
                                    <div class="table-responsive">
                                        <table class="table border">
                                            <colgroup>
                                                <col/>
                                                <col width="45px" />
                                                <col width="50px" />
                                                <col width="100px" />
                                                <col width="90px" />
                                                <col width="160px" />
                                            </colgroup>
                                            <thead>
                                            <tr>
                                                <th>발효재료</th>
                                                <th colspan="3">Amount</th>
                                                <th>Maltster</th>
                                                <th>Use</th>
                                                <th style="width:70px">삭제</th>
                                            </tr>
                                            <tr style="height: 50px;">
                                                <td>
                                                    <div class="form-group" id="the-basics">
                                                        <input type="email" style="width:280px" class="typeahead form-control" id="exampleInputEmail1" placeholder="2-Row (US)">
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group alignright">
                                                        <input type="text"  class="form-control border-error" style="width:45px">
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <select style="width:100px"  class="form-control border-error">
                                                            <option>kg</option>
                                                            <option>g</option>
                                                        </select>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <input type="email" style="width:70px" class="form-control" id="exampleInputEmail1" placeholder="25%">
                                                    </div>
                                                </td>
                                                <td>
                                                    <select class="form-control border-error">
                                                        <option value="">모름</option><option value="9">Bairds</option><option value="14">Boortmalt</option><option value="1">Briess</option><option value="5">Castle</option><option value="8">Crisp</option><option value="15">Dingemans</option><option value="13">Edwin Ticker &amp; Sons</option><option value="11">Gambrinus</option><option value="6">GlobalMalt</option><option value="10">Great Western</option><option value="12">Muntons</option><option value="7">Rahr</option><option value="4">Simpson's</option><option value="2">Thomas Fawcett &amp; Sons</option><option value="3">Weyermann®</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <select class="form-control border-error">
                                                        <option value="">선택...</option><option value="3">Boil</option><option value="4">Late Boil</option><option value="1">Mash</option><option value="2">Steep</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <div class="form-group">

                                                        <a href="#" class="form-control no-border product-remove">
                                                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
                                                          <g>
                                                              <path fill="#7f7f7f" d="M6,13c0.553,0,1-0.447,1-1V7c0-0.553-0.447-1-1-1S5,6.447,5,7v5C5,12.553,5.447,13,6,13z"></path>
                                                              <path fill="#7f7f7f" d="M10,13c0.553,0,1-0.447,1-1V7c0-0.553-0.447-1-1-1S9,6.447,9,7v5C9,12.553,9.447,13,10,13z"></path>
                                                              <path fill="#7f7f7f" d="M14,3h-1V1c0-0.552-0.447-1-1-1H4C3.448,0,3,0.448,3,1v2H2C1.447,3,1,3.447,1,4s0.447,1,1,1
                                                            c0,0.273,0,8.727,0,9c0,1.104,0.896,2,2,2h8c1.104,0,2-0.896,2-2c0-0.273,0-8.727,0-9c0.553,0,1-0.447,1-1S14.553,3,14,3z M5,2h6v1
                                                            H5V2z M12,14H4V5h8V14z"></path>
                                                          </g>
                                                        </svg>
                                                        </a><!-- .product-remove -->
                                                    </div>
                                                </td>
                                            </tr>
                                            </thead>
                                        </table>
                                        <div class="buttons-box clearfix alignright">
                                            <button type="button" class="btn btn-continue btn-info btn-sm">저장</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
        </li>

        <li class="panel">
            <a href="#step-2" class="collapsed step-title" data-parent="#checkoutsteps" data-toggle="collapse">
                <div class="number"><button type="button" class="btn btn-primary btn-sm">추가</button></div>
                <h6>홉 - Hop</h6>
            </a>

            <div id="step-2" class="collapse">
                <div class="step-content">
                    <form class="row no-margin">
                        <div class="col-sm-6 col-md-6">
                            <label>First Name: <span class="required">*</span></label>
                            <input class="form-control" type="text">
                        </div>
                        <div class="col-sm-6 col-md-6">
                            <label>Last Name: <span class="required">*</span></label>
                            <input class="form-control" type="text">
                        </div>

                        <div class="clearfix"></div>

                        <div class="col-sm-6 col-md-6">
                            <label>Company:</label>
                            <input class="form-control" type="text">
                        </div>
                        <div class="col-sm-6 col-md-6">
                            <label>Email Address: <span class="required">*</span></label>
                            <input class="form-control" type="text">
                        </div>

                        <div class="clearfix"></div>

                        <div class="col-sm-6 col-md-6">
                            <label>Address: <span class="required">*</span></label>
                            <input class="form-control" type="text">
                        </div>
                        <div class="col-sm-6 col-md-6">
                            <label>City</label>
                            <input class="form-control" type="text">
                        </div>

                        <div class="clearfix"></div>

                        <div class="col-sm-6 col-md-6">
                            <label>Telephone: <span class="required">*</span></label>
                            <input class="form-control" type="text">
                        </div>
                        <div class="col-sm-6 col-md-6">
                            <label>Fax:</label>
                            <input class="form-control" type="text">
                        </div>

                        <div class="clearfix"></div>

                        <div class="col-sm-6 col-md-6">
                            <label>Password: <span class="required">*</span></label>
                            <input class="form-control" type="text">
                        </div>
                        <div class="col-sm-6 col-md-6">
                            <label>Confirm Password: <span class="required">*</span></label>
                            <input class="form-control" type="text">
                        </div>

                        <div class="clearfix"></div>

                        <div class="col-sm-12 buttons-box text-right">
                            <button type="button" class="btn btn-default">Continue</button>
                            <span class="required"><b>*</b> Required Field</span>
                        </div>
                    </form>
                </div>
            </div>
        </li>

        <li class="panel">
            <a href="#step-3" class="collapsed step-title" data-parent="#checkoutsteps" data-toggle="collapse">
                <div class="number">3</div>
                <h6>Shipping Information</h6>
            </a>

            <div id="step-3" class="collapse">
                <div class="step-content">
                    <form class="row no-margin">
                        <div class="col-sm-6 col-md-6">
                            <label>First Name: <span class="required">*</span></label>
                            <input class="form-control" type="text">
                        </div>
                        <div class="col-sm-6 col-md-6">
                            <label>Last Name: <span class="required">*</span></label>
                            <input class="form-control" type="text">
                        </div>

                        <div class="clearfix"></div>

                        <div class="col-sm-6 col-md-6">
                            <label>Company:</label>
                            <input class="form-control" type="text">
                        </div>
                        <div class="col-sm-6 col-md-6">
                            <label>Telephone: <span class="required">*</span></label>
                            <input class="form-control" type="text">
                        </div>

                        <div class="clearfix"></div>

                        <div class="col-sm-6 col-md-6">
                            <label>Address: <span class="required">*</span></label>
                            <input class="form-control" type="text">
                        </div>
                        <div class="col-sm-6 col-md-6">
                            <label>City</label>
                            <input class="form-control" type="text">
                        </div>

                        <div class="clearfix"></div>

                        <div class="col-sm-6 col-md-6">
                            <label>Zip/Postal Code: <span class="required">*</span></label>
                            <input class="form-control" type="text">
                        </div>
                        <div class="col-sm-6 col-md-6">
                            <label>Country</label>
                            <select class="form-control">
                                <option>Country 1</option>
                                <option>Country 2</option>
                                <option>Country 3</option>
                                <option>Country 4</option>
                                <option>Country 5</option>
                            </select>
                        </div>

                        <div class="clearfix"></div>

                        <div class="col-sm-12 buttons-box text-right">
                            <button type="button" class="btn btn-default">Continue</button>
                            <span class="required"><b>*</b> Required Field</span>
                        </div>
                    </form>
                </div>
            </div>
        </li>

        <li class="panel">
            <a href="#step-4" class="collapsed step-title" data-parent="#checkoutsteps" data-toggle="collapse">
                <div class="number">4</div>
                <h6>Shipping Method</h6>
            </a>

            <div id="step-4" class="collapse">
                <div class="step-content">
                    <form class="no-margin">
                        <h5>Flat Rate</h5>
                        <p>Fixed <strong>$5.00</strong></p>
                        <button type="button" class="btn">Continue</button>
                    </form>
                </div>
            </div>
        </li>

        <li class="panel">
            <a href="#step-5" class="collapsed step-title" data-parent="#checkoutsteps" data-toggle="collapse">
                <div class="number">5</div>
                <h6>Payment Information</h6>
            </a>

            <div id="step-5" class="collapse">
                <div class="step-content">
                    <form>
                        <div>
                            <label class="radio"><input type="radio" name="register"> Checkout as Guest</label>
                            <label class="radio"><input type="radio" name="register"> Register</label>
                        </div>
                    </form>

                    <div class="buttons-box text-right">
                        <button type="button" class="btn btn-default">Continue</button>
                        <span class="required"><b>*</b> Required Field</span>
                    </div>
                </div>
            </div>
        </li>

        <li class="panel">
            <a href="#step-6" class="collapsed step-title" data-parent="#checkoutsteps" data-toggle="collapse">
                <div class="number">6</div>
                <h6>Order Review</h6>
            </a>

            <div id="step-6" class="collapse">
                <div class="step-content">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>Product Name</th>
                                <th>Price</th>
                                <th>Qty</th>
                                <th>Subtotal</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Samsung Galaxy Note 2</td>
                                <td>$499.00</td>
                                <td>1</td>
                                <td>$499.00</td>
                            </tr>
                            <tr>
                                <td>Sony Led TV KDL-46HX853</td>
                                <td>$1199.00</td>
                                <td>1</td>
                                <td>$1199.00</td>
                            </tr>
                            <tr>
                                <td colspan="3">Subtotal</td>
                                <td>$1698.00</td>
                            </tr>
                            <tr>
                                <td colspan="3">Shipping & Handling (Flat Rate - Fixed)</td>
                                <td>$5.00</td>
                            </tr>
                            <tr>
                                <td colspan="3">Grand Total</td>
                                <td>$1703.00</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <button type="button" class="btn btn-default">Place Order</button>
                </div>
            </div>
        </li>
        </ul><!-- #checkoutsteps -->
        </article><!-- .content -->

        <div id="sidebar" class="col-sm-3 col-md-3 sidebar checkout-progress">
            <aside class="widget">
                <header>
                    <h3 class="title">스타일 적합성 체크</h3>
                </header>
                <ul class="progress-list">
                    <li class="active">
                        <div class="table-responsive">
                        <table class="table table-striped table-bordered text-left my-orders-table">
                            <tbody>
                            <tr class="first last">
                                <td>OG</td>
                                <td>1.542</td>
                                <td class="text-primary"><em>통과</em></td>
                            </tr>
                            <tr class="first last">
                                <td>FG</td>
                                <td>1.101</td>
                                <td class="text-primary"><em>통과</em></td>
                            </tr>
                            <tr class="first last">
                                <td>SRM</td>
                                <td>14</td>
                                <td class="text-primary"><em>통과</em></td>
                            </tr>
                            <tr class="first last">
                                <td>IBU</td>
                                <td>55</td>
                                <td class="text-primary"><em>통과</em></td>
                            </tr>
                            <tr class="first last">
                                <td>ABV</td>
                                <td>4.5%</td>
                                <td class="text-danger"><em>실패 (5.5%)</em></td>
                            </tr>
                            </tbody>
                        </table>
                            </div>
                    </li>
                </ul>
            </aside>
        </div><!-- .sidebar -->
    </div>
</section><!-- #main -->

<!-- Modal 팝업 -->
<div class="modal auto-width fade"id="FermentableModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h5 class="modal-title" id="myModalLabel">발효재료 (Fermentable)</h5>
                <input type="text" class="form-control" id="name" name="name" placeholder="검색어를 입력하세요" >
            </div>
            <div class="modal-body" style="overflow: auto; max-height: 400px; "> <br/>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>이름</th>
                        <th>타입</th>
                        <th>수율</th>
                        <th>원산지</th>
                        <th>°L</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${fermentableList}" var="list">
                    <tr>
                        <td>
                            <div class="checkbox">
                                <label>
                                    <input id="fermatable_id" class="form-control" type="checkbox" value="${list.seq}">
                                </label>
                            </div>
                        </td>
                        <td>${list.name}</td>
                        <td>${list.typeKorean}</td>
                        <td>${list.yield}</td>
                        <td>${list.originKorean}</td>
                        <td>${list.color}</td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary">선택</button>
            </div>
        </div>
    </div>
</div>

<content tag="local_script">
    <script src="/resources/asset/js/bootstrap-select.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            //getStyleList();
            $("#style_list").select2();
        });
        
        function getStyleList(){

            var styleHtml = "";

            $.get("/style/getStyleList", function(data, status){
                $.each(data, function(i){

                    styleHtml = styleHtml +  "<option value="+ data[i].seq +">"+ data[i].koreanName + " - " + data[i].categoryNumber + data[i].styleLetter + "</option>";

                });
                $("#style_list").append(styleHtml);
            })
        }

        var substringMatcher = function(strs) {
            return function findMatches(q, cb) {
                var matches, substringRegex;

                // an array that will be populated with substring matches
                matches = [];

                // regex used to determine if a string contains the substring `q`
                substrRegex = new RegExp(q, 'i');

                // iterate through the pool of strings and for any string that
                // contains the substring `q`, add it to the `matches` array
                $.each(strs, function(i, str) {
                    if (substrRegex.test(str)) {
                        // the typeahead jQuery plugin expects suggestions to a
                        // JavaScript object, refer to typeahead docs for more info
                        matches.push({ value: str });
                    }
                });

                cb(matches);
            };
        };

        var states = ['2-ROW', 'Alaska', 'Arizona', 'Arkansas', 'California',
            'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii',
            'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana',
            'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota',
            'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire',
            'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota',
            'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island',
            'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont',
            'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'
        ];

        $('#the-basics .typeahead').typeahead({
                    hint: true,
                    highlight: true,
                    minLength: 1
                },
                {
                    name: 'states',
                    displayKey: 'value',
                    source: substringMatcher(states)
                });
    </script>
</content>