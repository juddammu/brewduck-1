<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<title>단위 변환</title>
<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>단위 변환
                <small>Unit Converter</small>
            </h1>
        </div>
        <!-- END PAGE TITLE -->
    </div>
</div>
<!-- END PAGE HEAD -->


<div class="page-container">
<!-- BEGIN PAGE HEAD -->


<!-- BEGIN PAGE CONTENT -->
<div class="page-content">
<div class="container-fluid">
<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<!-- BEGIN PAGE CONTENT INNER -->
<div class="row">
    <div class="col-md-12">

        <div class="portlet light">
            <div class="portlet-body">
                <div class=" portlet-tabs">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#portlet_tab1" data-toggle="tab">
                                무게 (Weight) </a>
                        </li>
                        <li>
                            <a href="#portlet_tab2" data-toggle="tab">
                                온도 (Temperature) </a>
                        </li>
                        <li>
                            <a href="#portlet_tab3" data-toggle="tab">
                                부피 (Volume) </a>
                        </li>
                    </ul>
                    <div class="tab-content">

                        <div class="tab-pane active" id="portlet_tab1">
                            <div class="portlet light bordered">
                                <div class="portlet-body form">
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="control-label col-md-2">온즈
                                                (Ounces)</label>

                                            <div class="col-md-10">

                                                <div class="input-group input-medium">
                                                    <input type="text" id="oz" name="oz"
                                                           class="form-control" value="16.00">

                                                    <div class="input-group-btn">
                                                        <button type="button"
                                                                class="btn yellow dropdown-toggle">
                                                            oz
                                                        </button>
                                                    </div>
                                                    <!-- /btn-group -->
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <!--/row-->
                                    </br>
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="control-label col-md-2">파운드
                                                (Pounds)</label>

                                            <div class="col-md-10">

                                                <div class="input-group input-medium">
                                                    <input type="text" id="pounds" name="pounds"
                                                           class="form-control" value="1.00">

                                                    <div class="input-group-btn">
                                                        <button type="button"
                                                                class="btn yellow dropdown-toggle">
                                                            lbs
                                                        </button>
                                                    </div>
                                                    <!-- /btn-group -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    </br>
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="control-label col-md-2">그램 (Grams)</label>

                                            <div class="col-md-10">

                                                <div class="input-group input-medium">
                                                    <input type="text" id="gram" name="gram"
                                                           class="form-control" value="453.6">

                                                    <div class="input-group-btn">
                                                        <button type="button"
                                                                class="btn yellow dropdown-toggle">
                                                            g
                                                        </button>
                                                    </div>
                                                    <!-- /btn-group -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    </br>
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="control-label col-md-2">킬로그램
                                                (kilograms)</label>

                                            <div class="col-md-10">

                                                <div class="input-group input-medium">
                                                    <input type="text" id="kilogram" name="kilogram"
                                                           class="form-control" value="0.45">

                                                    <div class="input-group-btn">
                                                        <button type="button"
                                                                class="btn yellow dropdown-toggle">
                                                            kg
                                                        </button>
                                                    </div>
                                                    <!-- /btn-group -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="portlet_tab2">
                            <div class="portlet light bordered ">
                                <div class="portlet-body form">
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="control-label col-md-2">화씨
                                                (Farenheit)</label>

                                            <div class="col-md-10">

                                                <div class="input-group input-medium">
                                                    <input type="text" id="farenheit"
                                                           name="farenheit" class="form-control"
                                                           value="72.0">

                                                    <div class="input-group-btn">
                                                        <button type="button"
                                                                class="btn yellow dropdown-toggle">
                                                            F
                                                        </button>
                                                    </div>
                                                    <!-- /btn-group -->
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <!--/row-->
                                    </br>
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="control-label col-md-2">섭씨
                                                (Celsius)</label>

                                            <div class="col-md-10">

                                                <div class="input-group input-medium">
                                                    <input type="text" id="celsius" name="celsius"
                                                           class="form-control" value="22.2">

                                                    <div class="input-group-btn">
                                                        <button type="button"
                                                                class="btn yellow dropdown-toggle">
                                                            lbs
                                                        </button>
                                                    </div>
                                                    <!-- /btn-group -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="portlet_tab3">
                            <div class="portlet light bordered">
                                <div class="portlet-body">
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="control-label col-md-2">밀리리터</label>

                                            <div class="col-md-10">

                                                <div class="input-group input-medium">
                                                    <input type="text" id="milliliter"
                                                           name="milliliter" class="form-control"
                                                           value="72.0">

                                                    <div class="input-group-btn">
                                                        <button type="button"
                                                                class="btn yellow dropdown-toggle">
                                                            ㎖
                                                        </button>
                                                    </div>
                                                    <!-- /btn-group -->
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    </br>
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="control-label col-md-2">리터</label>

                                            <div class="col-md-10">

                                                <div class="input-group input-medium">
                                                    <input type="text" id="liter" name="liter"
                                                           class="form-control" value="72.0">

                                                    <div class="input-group-btn">
                                                        <button type="button"
                                                                class="btn yellow dropdown-toggle">
                                                            ℓ
                                                        </button>
                                                    </div>
                                                    <!-- /btn-group -->
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    </br>
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="control-label col-md-2">온스</label>

                                            <div class="col-md-10">

                                                <div class="input-group input-medium">
                                                    <input type="text" id="ozforvaloume"
                                                           name="ozforvaloume" class="form-control"
                                                           value="72.0">

                                                    <div class="input-group-btn">
                                                        <button type="button"
                                                                class="btn yellow dropdown-toggle">
                                                            oz
                                                        </button>
                                                    </div>
                                                    <!-- /btn-group -->
                                                </div>
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END TAB PORTLET-->

        <!-- END PAGE CONTENT INNER -->
    </div>
</div>
<!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->


</div>

<content tag="local_script">
    <script>

        function ozToPounds(oz) {
            oz = parseFloat(oz);
            if (isNaN(oz)) {
                return;
            }
            return oz * 0.0625;
        }
        function ozToGrams(oz) {
            oz = parseFloat(oz);
            if (isNaN(oz)) {
                return;
            }
            return oz * 28.3495231;
        }
        function ozToKilograms(oz) {
            oz = parseFloat(oz);
            if (isNaN(oz)) {
                return;
            }
            return oz * 0.0283495231;
        }

        function poundsToOunces(pounds) {
            pounds = parseFloat(pounds);
            if (isNaN(pounds)) {
                return;
            }
            return pounds * 16;
        }
        function poundsToGrams(pounds) {
            oz = parseFloat(pounds);
            if (isNaN(pounds)) {
                return;
            }
            return pounds * 453.59237;
        }
        function poundsToKilorams(pounds) {
            oz = parseFloat(pounds);
            if (isNaN(pounds)) {
                return;
            }
            return pounds * 0.453592;
        }

        function gramsToOunces(grams) {
            pounds = parseFloat(grams);
            if (isNaN(grams)) {
                return;
            }
            return grams * 0.035274;
        }
        function gramsToPounds(grams) {
            oz = parseFloat(grams);
            if (isNaN(grams)) {
                return;
            }
            return grams * 0.002205;
        }
        function gramsToKilorams(grams) {
            oz = parseFloat(grams);
            if (isNaN(grams)) {
                return;
            }
            return grams * 0.001;
        }

        function kilogramsToOunces(kilograms) {
            pounds = parseFloat(kilograms);
            if (isNaN(kilograms)) {
                return;
            }
            return kilograms * 35.273962;
        }
        function kilogramsToPounds(kilograms) {
            oz = parseFloat(kilograms);
            if (isNaN(kilograms)) {
                return;
            }
            return kilograms * 2.204623;
        }
        function kilogramsTograms(kilograms) {
            oz = parseFloat(kilograms);
            if (isNaN(kilograms)) {
                return;
            }
            return kilograms * 1000;
        }
        function farenheitToCelsius(farenheit) {
            farenheit = parseFloat(farenheit);
            if (isNaN(farenheit)) {
                return;
            }
            return (farenheit - 32) / 1.8;
        }
        function celsiusToFarenheit(celsius) {
            celsius = parseFloat(celsius);
            if (isNaN(celsius)) {
                return;
            }
            return (1.8 * celsius) + 32;
        }

        $(document).ready(function () {

            $('input').on('keyup', function () {
                var $this = $(this);
                //무게변환
                if ($this.attr('id') === 'oz') {
                    $('#pounds').val(ozToPounds($this.val()).toFixed(3));
                    $('#gram').val(ozToGrams($this.val()).toFixed(3));
                    $('#kilogram').val(ozToKilograms($this.val()).toFixed(3));

                }
                if ($this.attr('id') === 'pounds') {
                    $('#oz').val(poundsToOunces($this.val()).toFixed(3));
                    $('#gram').val(poundsToGrams($this.val()).toFixed(3));
                    $('#kilogram').val(poundsToKilorams($this.val()).toFixed(3));
                }

                if ($this.attr('id') === 'gram') {
                    $('#oz').val(gramsToOunces($this.val()).toFixed(3));
                    $('#pounds').val(gramsToPounds($this.val()).toFixed(3));
                    $('#kilogram').val(gramsToKilorams($this.val()).toFixed(3));
                }
                if ($this.attr('id') === 'kilogram') {
                    $('#oz').val(kilogramsToOunces($this.val()).toFixed(3));
                    $('#pounds').val(kilogramsToPounds($this.val()).toFixed(3));
                    $('#gram').val(kilogramsTograms($this.val()).toFixed(3));
                }

                //온도변환

                if ($this.attr('id') === 'farenheit') {
                    $('#celsius').val(farenheitToCelsius($this.val()).toFixed(3));
                }
                if ($this.attr('id') === 'celsius') {
                    $('#farenheit').val(celsiusToFarenheit($this.val()).toFixed(3));
                }
            });
            $("#oz").focus();              //이름칸으로 포커스

        });
    </script>
</content>


</div>

</div>

</div>
