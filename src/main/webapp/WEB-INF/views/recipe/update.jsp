<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
            <h1 class="title">${resultRecipe.name}</h1>
        </div>
    </header>
    <form:form id="insert" name="insert" method="POST" enctype="multipart/form-data"  action="/recipe/insertRecipe" modelAttribute="paramRecipe">
    <div class="container">
        <div class="form-group">
            <div class="controls">
                <h4 class="title">
                ${resultStyle.categoryNumber}${resultStyle.styleLetter}. ${resultStyle.koreanName}
                </h4>
                <input type="file" name="file" id="fileInput" value="${paramRecipe.coverImageFile}" />
                <button class="btn btn-default"  type="submit" id="insertRecipe" name="insertRecipe">저장</button>
            </div>
        </div>
    </div>
    </form:form>

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
                    <h3 class="title">${resultStyle.categoryNumber}${resultStyle.styleLetter}. ${resultStyle.koreanName}</h3>
                </header>
                <a href="portfolio-single.html" class="work">
                    <img src="/resources/recipe/2/recipe_2.jpg" width="270" height="270" alt="">
                    <span class="shadow"></span>
                    <div class="bg-hover"></div>
                    <div class="work-title">
                        <h3 class="title">${resultRecipe.name}</h3>
                        <div class="description">이 맥주는 시트러한 아로마로 시작해 Earth한 피니시로 마무리되며, 밝은 적갈색에 25IBU로 여름에 세션비어로 디자인되어 있다.</div>
                    </div>
                </a>
                <ul class="progress-list">
                    <li class="active">
                        <div class="table-responsive">
                        <table class="table table-striped table-bordered text-left my-orders-table">
                            <tbody>
                            <tr class="first last">
                                <td>OG</td>
                                <td>${resultStyle.ogMin} ~ ${resultStyle.ogMax}</td>
                                <td class="text-primary"><em>통과</em></td>
                            </tr>
                            <tr class="first last">
                                <td>FG</td>
                                <td>${resultStyle.fgMin} ~ ${resultStyle.fgMax}</td>
                                <td class="text-primary"><em>통과</em></td>
                            </tr>
                            <tr class="first last">
                                <td>SRM</td>
                                <td>${resultStyle.colorMin} ~ ${resultStyle.colorMax}</td>
                                <td class="text-primary"><em>통과</em></td>
                            </tr>
                            <tr class="first last">
                                <td>IBU</td>
                                <td>${resultStyle.ibuMin} ~ ${resultStyle.ibuMax}</td>
                                <td class="text-primary"><em>통과</em></td>
                            </tr>
                            <tr class="first last">
                                <td>ABV</td>
                                <td>${resultStyle.abvMin} ~ ${resultStyle.abvMax}</td>
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