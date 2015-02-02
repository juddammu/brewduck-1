<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<section>
    <ol class="breadcrumb">
        <li><a href="#">홈</a></li>
        <li><a href="#">계산기</a></li>
        <li class="active">ABV(Alcohol By Volume)
            <small> Calculator</small>
        </li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i>알콜
            함유량 <strong class="text-support3">계산기</strong></h3>
    </div>
    <div class="section-body">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined">
                    <div class="box-head">
                        <header><h4 class="text-light"><i class="fa fa-pencil fa-fw"></i>Remember to
                            calibrate your equipment and adjust for <strong> temperature.</strong>
                        </h4></header>
                    </div>
                    <div class="box-body no-padding">
                        <form class="form-horizontal form-banded form-bordered"
                              accept-charset="utf-8" method="post">
                            <div class="form-group">
                                <div class="col-md-2">
                                    <label class="control-label">초기 비중
                                        <small>Original Gravity</small>
                                    </label>
                                </div>
                                <div class="col-md-10">
                                    <input id="og" name="og" type="text" class="form-control"
                                           placeholder="예를들면 1.05">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-2">
                                    <label class="control-label">종료 비중
                                        <small>Final Gravity</small>
                                    </label>
                                </div>
                                <div class="col-md-10">
                                    <input id="fg" name="fg" type="text" class="form-control"
                                           placeholder="예를들면 1.01">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-2">
                                    <label class="control-label">초기 브릭스
                                        <small>Original Brix</small>
                                    </label>
                                </div>
                                <div class="col-md-10">
                                    <input id="oBrix" name="oBrix" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-2">
                                    <label class="control-label">Measured Final Brix
                                        <small>Final Gravity</small>
                                    </label>
                                </div>
                                <div class="col-md-10">
                                    <input id="mBrix" name="mBrix" type="text" class="form-control">
                                    <small>Alcohol affects the measured index of refraction, so we
                                        need to correct for that post-fermentation using the
                                        Original Brix measurement.
                                    </small>
                                </div>
                            </div>
                            <div class="form-footer col-md-offset-2 col-sm-offset-3">
                                <h3 class="text-light"><strong class="text-support3">ABV(Alcohol By
                                    Volume) : <span id="abv">&ndash;</span></strong>
                                </h3>
                                <small>ABW(Alcohol by Weight) : <span id="abw">&ndash;</span>
                                </small>
                            </div>
                        </form>
                    </div>
                    <!--end .box-body -->
                </div>
                <!--end .box -->
            </div>
            <!--end .col-lg-12 -->
        </div>
        <!--end .row -->
    </div>
    <!--end .section-body -->
</section>

<content tag="local_script">
    <script>
        $(document).ready(function () {


            function brixToGravity(brix) {
                brix = parseFloat(brix);
                if (isNaN(brix)) {
                    return;
                }
                return (brix / (258.6 - (brix / 258.2 * 227.1))) + 1;
            }

            function gravityToBrix(s) {
                s = parseFloat(s);
                if (isNaN(s)) {
                    return;
                }
                return (((182.4601 * s - 775.6821) * s + 1262.7794) * s - 669.5622)

            }

            function measuredBrixtoFinal() {
                oBrix = parseFloat($('#oBrix').val());
                mBrix = parseFloat($('#mBrix').val());

                if (isNaN(oBrix) || isNaN(mBrix)) {
                    return;
                }

                debugger;


                var gravity = 1.001843 - 0.002318474 * oBrix - 0.000007775 * oBrix * oBrix - 0.000000034 * oBrix * oBrix * oBrix + 0.00574 * mBrix + 0.00003344 * mBrix * mBrix + 0.000000086 * mBrix * mBrix * mBrix

                var fBrix = gravityToBrix(gravity);

                $('#fg').val(gravity.toFixed(3));
                $('#fBrix').val(fBrix.toFixed(2));
            }

            function calcAbv() {
                var og = parseFloat($('#og').val());
                var fg = parseFloat($('#fg').val());
                if (isNaN(og) || isNaN(fg)) {
                    $('#abv').html('&ndash;');
                    return;
                }

                var abv = (og - fg) * 131;

                $('#abv').html(abv.toFixed(1) + '%');

                calcAbw(abv);
            }

            function calcAbw(abv) {
                var abw = abv * 0.79336;
                $('#abw').html(abw.toFixed(1) + '%');

            }

            $('input').on('keyup', function () {
                var $this = $(this);
                if ($this.attr('id') === 'oBrix') {
                    $('#og').val(brixToGravity($this.val()).toFixed(3));
                    measuredBrixtoFinal();
                }
                if ($this.attr('id') === 'fBrix') {
                    $('#fg').val(brixToGravity($this.val()).toFixed(3));
                }
                if ($this.attr('id') === 'mBrix') {
                    measuredBrixtoFinal();
                }
                if ($this.attr('id') === 'og') {
                    $('#oBrix').val(gravityToBrix($this.val()).toFixed(2));
                    $('#mBrix').val('');
                }
                if ($this.attr('id') === 'fg') {
                    $('#fBrix').val(gravityToBrix($this.val()).toFixed(2));
                    $('#mBrix').val('');
                }
                calcAbv();
            });
            $("#og").focus();              //이름칸으로 포커스

        });
    </script>
</content>
