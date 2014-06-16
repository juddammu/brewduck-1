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
                <select class="selectpicker" data-style="btn-primary">
                    <option>도르트문트 엑스포트</option>
                    <option>라이트 미국식 라거</option>
                    <option>뮤닉 헬레스</option>
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
            <a href="#step-1" class="step-title" data-parent="#checkoutsteps" data-toggle="collapse">
                <div class="number"><button type="button" class="btn btn-primary btn-sm">추가</button></div>
                <h6>발효재료</h6>
            </a>
            <div id="step-1" class="collapse in">
                <div class="step-content">
                    <div class="row">
                        <div class="col-sm-12 col-md-12 bottom-padding-mobile">
                            <table class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>발효재료</th>
                                    <th colspan="2">Amount</th>
                                    <th>Maltster</th>
                                    <th>Use</th>
                                    <th colspan="2">Type</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>2-Row (US)</td>
                                    <td><input type="text"></td>
                                    <td>
                                        <select class="selectpicker">
                                            <option>kg</option>
                                            <option>g</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="selectpicker">
                                            <option>kg</option>
                                            <option>g</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="selectpicker">
                                            <option value="">Choose...</option><option value="3">Boil</option><option value="4">Late Boil</option><option value="1">Mash</option><option value="2">Steep</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="bootstrap-select">
                                            <option value="5">Adjunct</option><option value="6">Base Malt</option><option value="7">Caramel/Crystal Malt</option><option value="4">Dry Extract</option><option value="1">Grain</option><option value="8">Kilned Malt</option><option value="3">Liquid Extract</option><option value="9">Roasted Malt</option><option value="2">Sugar</option>
                                        </select>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-continue btn-info btn-sm">삭제</button>
                                    </td>
                                </tr>
                                </tbody>
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
                    <h3 class="title">스타일 적합성 체크</h3>
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

<content tag="local_script">
    <script type="text/javascript">
        $(document).ready(function () {
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