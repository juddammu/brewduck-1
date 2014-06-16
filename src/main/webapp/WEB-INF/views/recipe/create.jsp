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
        <h1 class="title">Checkout</h1>
    </div>
</header>
    <div class="container">
        <div class="row">
        <article class="content col-sm-9 col-md-9">
        <ul id="checkoutsteps" class="clearfix panel-group">
        <li class="panel">
            <a href="#step-1" class="step-title" data-parent="#checkoutsteps" data-toggle="collapse">
                <div class="number">1</div>
                <h6>Checkout Method</h6>
            </a>

            <div id="step-1" class="collapse in">
                <div class="step-content">
                    <div class="row">
                        <div class="col-sm-6 col-md-6 bottom-padding-mobile">
                            <h3 class="title">Checkout as a Guest or Register</h3>
                            <p>Register with us for future convenience:</p>
                            <div class="register-radio">
                                <label class="radio"><input type="radio" name="register"> Checkout as Guest</label>
                                <label class="radio"><input type="radio" name="register"> Register</label>
                            </div>
                            <p>Register and save time!<br> Register with us for future convenience:</p>
                            <ul>
                                <li>Fast and easy check out</li>
                                <li>Easy access to your order history and status</li>
                            </ul>
                            <div class="buttons-box clearfix">
                                <button type="button" class="btn btn-continue btn-default">Continue</button>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-6">
                            <h3 class="title">Login</h3>
                            <p>If you have an account with us, please log in.</p>
                            <form class="checkout-login">
                                <label>Email Adress: <span class="required">*</span></label>
                                <input class="form-control" type="email">

                                <label>Password: <span class="required">*</span></label>
                                <input class="last form-control" type="password">

                                <label class="checkbox">
                                    <input type="checkbox"> Remember password
                                </label>
                            </form><!-- .checkout-login -->
                            <div class="clearfix"></div>
                            <div class="buttons-box clearfix">
                                <button type="button" class="btn btn-default">Login</button>
                                <a href="#" class="forgot">Forgot Your Password?</a>
                                <span class="required"><b>*</b> Required Field</span>
                            </div><!-- .buttons-box -->
                        </div>
                    </div>
                </div>
            </div>
        </li>

        <li class="panel">
            <a href="#step-2" class="collapsed step-title" data-parent="#checkoutsteps" data-toggle="collapse">
                <div class="number">2</div>
                <h6>Billing Information</h6>
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
                    <h3 class="title">Your Checkout Progress</h3>
                </header>
                <ul class="progress-list">
                    <li class="active"><a href="#" class="edit"><i class="fa fa-pencil"></i> Edit</a>Checkout Method</li>
                    <li><a href="#" class="edit"><i class="fa fa-pencil"></i> Edit</a>Billing Address</li>
                    <li><a href="#" class="edit"><i class="fa fa-pencil"></i> Edit</a>Shipping Address</li>
                    <li><a href="#" class="edit"><i class="fa fa-pencil"></i> Edit</a>Shipping Method</li>
                    <li><a href="#" class="edit"><i class="fa fa-pencil"></i> Edit</a>Payment Method</li>
                </ul>
            </aside>
        </div><!-- .sidebar -->
    </div>
</section><!-- #main -->

<div class="content">
    <div class="row">
        <div class="col-md-11">
            <div class="grid simple">
                <div class="grid-body no-border invoice-body">
                    <!--div class="pull-left"> <img src="/resources/assets/profile/picture/samadams.jpg" data-src="/resources/assets/profile/picture/samadams.jpg" data-src-retina="/resources/assets/profile/picture/samadams.jpg"
                                                 width="141" height="103" class="invoice-logo" alt="">
                        <address>
                            <strong>밝은 미국식 라거 - 부분곡물</strong><br>
                            4.9%ABV - 3.8%ABW<br>
                            30 IBU<br>
                            <abbr title="색상">SRM</abbr> 11 (A deep amber to golden)
                        </address>
                    </div-->
                    <div class="pull-left">
                        <%--<h1>보스턴 라거 클론</h1>--%>
                            <div class="form-group">
                                <label class="form-label">레시피 이름을 입력하세요.</label>
                                <span class="help">예를들면 "유자 페일에일"</span>
                                <div class="controls">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="radio radio-success">
                                    <input id="1" type="radio" name="optionyes" value="1">
                                    <label for="1">완전곡물</label>
                                    <input id="2" type="radio" name="optionyes" value="2" checked="checked">
                                    <label for="2">부분곡물</label>
                                    <input id="3" type="radio" name="optionyes" value="3">
                                    <label for="3">캔</label>
                                </div>
                                </br>
                            </div>
                            <select id="source" style="width:50%">
                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                    <option value="AK">Alaska</option>
                                    <option value="HI">Hawaii</option>
                                </optgroup>
                                <optgroup label="Pacific Time Zone">
                                    <option value="CA">California</option>
                                    <option value="NV">Nevada</option>
                                    <option value="OR">Oregon</option>
                                    <option value="WA">Washington</option>
                                </optgroup>
                                <optgroup label="Mountain Time Zone">
                                    <option value="AZ">Arizona</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                            <button type="button" class="btn btn-warning btn-sm btn-small">1A. 라이트 미국식 라거</button>
                        <button type="button" class="btn btn-primary btn-sm btn-small">부분곡물</button>
                        <button type="button" class="btn btn-white btn-sm btn-small">4.9% ABV</button>
                    </div>

                    <div class="pull-right">
                        <br>
                        <address>
                            <strong> </strong><br>
                            795 Folsom Ave, Suite 600<br>
                            San Francisco, CA 94107<br>
                            <abbr title="Phone">P:</abbr> (123) 456-7890
                        </address>

                    </div>
                    <div class="clearfix"></div>
                    <br>
                    <div class="row">
                        <div class="col-md-9">
                            <blockquote  class="margin-top-20">
                                <p>사무엘 아담스 라거는 세션비어로 누구나 쉽게 먹을수 있게 디자인되어있다.</p>
                            </blockquote>
                        </div>
                    </div>
                </div>
                <br>
                <ul class="nav nav-tabs" id="tab-01">
                    <li class="active"><a href="#tab1hellowWorld">레시피 </a></li>
                    <li><a href="#tab1hellowWorld">브루잉 로그</a></li>
                    <li><a href="#tab1FollowUs">리뷰 <span class="badge badge-important">2</span></a></li>
                    <li><a href="#tab1Inspire">댓글 <span class="badge badge-important">4</span></a></li>
                </ul>

                <div class="grid-body no-border invoice-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <td colspan="4" class="text-left"><h4 class="semi-bold">발효재료</h4></td>
                            <td colspan="2" class="text-right"><h5 class="semi-bold">19리터</h5></td>
                        </tr>
                        <tr>
                            <th style="width:30px" class="unseen text-center">No</th>
                            <th class="text-left">발효재료</th>
                            <th style="width:120px" class="unseen text-center">수량</th>
                            <th style="width:160px" class="text-right">사용처</th>
                            <th style="width:70px" class="text-right">PPG</th>
                            <th style="width:70px" class="text-right">COLOR</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><strong> 1 </strong>  </td>
                            <td class="unseen text-left">Crystal (60L) 몰트</td>
                            <td><strong>450 g </strong>  &nbsp;&nbsp;&nbsp;&nbsp; 20 %</td>
                            <td class="text-right">Steep</td>
                            <td class="text-right">34</td>
                            <td class="text-right">20  °L</td>
                        </tr>
                        <tr>
                            <td><strong> 2 </strong>  </td>
                            <td class="unseen text-left">Briess Amber Liquid Extract</td>
                            <td><strong>1.5 kg </strong>  &nbsp;&nbsp;&nbsp; 40 %</td>
                            <td class="text-right">Boil</td>
                            <td class="text-right">34</td>
                            <td class="text-right">40  °L</td>
                        </tr>
                        <tr>
                            <td><strong> 3 </strong>  </td>
                            <td class="unseen text-left">Briess Golden Light Dry Extract</td>
                            <td><strong>1.5 kg </strong>  &nbsp;&nbsp;&nbsp; 40 %</td>
                            <td class="text-right">Boil</td>
                            <td class="text-right">34</td>
                            <td class="text-right">20  °L</td>
                        </tr>
                        </tbody>
                    </table>
                    <br>
                    <table class="table">
                        <thead>
                        <tr>
                            <td colspan="5" class="text-left"><h4 class="semi-bold">홉</h4></td>
                            <td colspan="2" class="text-right"><h5 class="semi-bold">60분</h5></td>
                        </tr>
                        <tr>
                            <th style="width:30px" class="unseen text-center">No</th>
                            <th class="text-left">이름</th>
                            <th style="width:120px" class="unseen text-center">수량</th>
                            <th style="width:160px" class="text-right">시간</th>
                            <th style="width:70px" class="text-right">사용처</th>
                            <th style="width:70px" class="text-right">형태</th>
                            <th style="width:70px" class="text-right">알파 값</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><strong> 1 </strong>  </td>
                            <td class="unseen text-left">Tettnang</td>
                            <td class="unseen text-center"><strong>1oz </strong></td>
                            <td class="text-right">60 분</td>
                            <td class="text-right">Boil</td>
                            <td class="text-right">펠렛</td>
                            <td class="text-right">12.0%</td>
                        </tr>
                        <tr>
                            <td><strong> 1 </strong>  </td>
                            <td class="unseen text-left">Hallertau</td>
                            <td class="unseen text-center"><strong>1oz </strong></td>
                            <td class="text-right">20 분</td>
                            <td class="text-right">Boil</td>
                            <td class="text-right">펠렛</td>
                            <td class="text-right">12.0%</td>
                        </tr>
                        <tr>
                            <td><strong> 1 </strong>  </td>
                            <td class="unseen text-left">Hallertau</td>
                            <td class="unseen text-center"><strong>1oz </strong></td>
                            <td class="text-right">10 분</td>
                            <td class="text-right">Boil</td>
                            <td class="text-right">펠렛</td>
                            <td class="text-right">12.0%</td>
                        </tr>
                        <tr>
                            <td><strong> 1 </strong>  </td>
                            <td class="unseen text-left">Hallertau</td>
                            <td class="unseen text-center"><strong>1oz </strong></td>
                            <td class="text-right">0 분</td>
                            <td class="text-right">Boil</td>
                            <td class="text-right">펠렛</td>
                            <td class="text-right">12.0%</td>
                        </tr>
                        </tbody>
                    </table>
                    <br>
                    <table class="table">
                        <thead>
                        <tr>
                            <td colspan="7" class="text-left"><h4 class="semi-bold">효모</h4></td>
                        </tr>
                        <tr>
                            <th style="width:30px" class="unseen text-center">No</th>
                            <th class="text-left">이름</th>
                            <th style="width:120px" class="unseen text-center">제조사</th>
                            <th style="width:160px" class="text-right">평균 발효도</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><strong> 1 </strong>  </td>
                            <td class="unseen text-left">2035</td>
                            <td class="unseen text-center"><strong>Wyeast </strong></td>
                            <td class="text-right">75%</td>
                        </tr>
                        </tbody>
                    </table>
                    <br><br>
                    <h5 class="text-right text-black">1차 발효 : 7일</h5>
                    <h5 class="text-right semi-bold text-black">2차 발효 : 14일</h5>
                    <br>
                    <br>
                </div>
            </div>
        </div>
        <div class="col-md-1">
            <div class="invoice-button-action-set">
                <p>
                    <button class="btn btn-primary" type="button"><i class="fa fa-print"></i></button>
                </p>
                <p>
                    <button class="btn " type="button"><i class="fa fa-cloud-download"></i></button>
                </p>
            </div>
        </div>
    </div>
</div>


<content tag="local_script">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#source").select2();
            getStyleList();
        });

        function getStyleList(){

            var styleHtml = "";

            $.get("/style/list", function(data, status){
                $.each(data, function(i){

                    styleHtml = styleHtml +  "<input id='aromaCode"+ data[i].aromaCode +"' type='checkbox' value='"+ data[i].aromaCode +"'>";
                    styleHtml = styleHtml +  "<label for='aromaCode"+ data[i].aromaCode +"'>"+data[i].aromaName+"</label>";

                });

                alert(styleHtml);
               // $("#aromaArea").append(aromaHtml);

            })
        }
    </script>
</content>