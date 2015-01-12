<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<title>알콜 함유량 계산기</title>
<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>알콜 함유량 계산기 <small>ABV(Alcohol By Volume) Calculator</small></h1>
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
                <div class="portlet light bordered">
                    <div class="portlet-body form">
                        <!-- BEGIN FORM-->
                        <form class="form-horizontal" role="form">
                            <div class="form-body">
                                <h4 class="form-section">장비에 눈금을 맞춰놓고 온도를 조절해야 한다는 것을 기억하세요.</h4>
                                <div class="row">
                                    <div class="form-group">
                                        <label class="control-label col-md-3">초기 비중 </label>
                                        <div class="col-md-9">
                                            <input id="og" name="og" type="text" class="form-control" placeholder="예를들면 1.05">
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <!--/row-->
                                <div class="row">
                                    <div class="form-group">
                                        <label class="control-label col-md-3">종료 비중 </label>
                                        <div class="col-md-9">
                                            <input id="fg" name="fg" type="text" class="form-control" placeholder="예를들면 1.01">
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <!--/row-->
                                <div class="row">
                                    <div class="form-group">
                                        <label class="control-label col-md-3">초기 브릭스 </label>

                                        <div class="col-md-9">
                                            <input id="oBrix" name="oBrix" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <!--/row-->

                                <div class="row">
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Measured Final Brix <small>Final Gravity</small></label>
                                        <div class="col-md-9">
                                            <input id="mBrix" name="mBrix" type="text" class="form-control">
                                            <!--small>Alcohol affects the measured index of refraction, so we need to correct for that post-fermentation using the Original Brix measurement.</small-->
                                            <small>알코올은 측정된 굴절률에 영향을 미치므로 당도 측정기를 이용하여 발효 후의 브릭스를 다시 재야합니다.</small>      <br/>
                                            <small>Brix값은 당용굴절계를 사용하여 자당의 중량 백분율에 상당하는 굴절률로부터 당도를 측정합니다.</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions">
                                <div class="row">


                                    <label class="control-label col-md-3"> </label>

                                    <div class="col-md-3">

                                        <div class="dashboard-stat blue">
                                            <div class="visual">
                                                <i class="fa fa-beer"></i>
                                            </div>
                                            <div class="details">
                                                <div class="number" id="abv">
                                                    0 %
                                                </div>
                                                <div class="desc">
                                                    ABV(Alcohol By Volume)
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-md-3">

                                        <div class="dashboard-stat blue">
                                            <div class="visual">
                                                <i class="fa fa-flask"></i>
                                            </div>
                                            <div class="details">
                                                <div class="number" id="abw">
                                                    0 %
                                                </div>
                                                <div class="desc">
                                                    ABW(Alcohol by Weight)
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </div>

                            </div>

                        </form>
                        <!-- END FORM-->
                    </div>
                </div>
        </div>
<!-- END PAGE CONTENT INNER -->
    </div>
</div>
<!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->


</div>

<content tag="local_script">
    <script>
        $(document).ready(function() {



            function brixToGravity(brix){
                brix = parseFloat(brix);
                if(isNaN(brix)) {
                    return;
                }
                return (brix/(258.6-(brix/258.2*227.1))) + 1;
            }
            function gravityToBrix(s){
                s = parseFloat(s);
                if(isNaN(s)) {
                    return;
                }
                return (((182.4601*s -775.6821)*s +1262.7794)*s -669.5622)

            }

            function measuredBrixtoFinal(){
                oBrix = parseFloat($('#oBrix').val());
                mBrix = parseFloat($('#mBrix').val());

                if(isNaN(oBrix) || isNaN(mBrix)) {
                    return;
                }

                debugger;

                var gravity = 1.001843 - 0.002318474*oBrix - 0.000007775*oBrix*oBrix - 0.000000034*oBrix*oBrix*oBrix + 0.00574*mBrix + 0.00003344*mBrix*mBrix + 0.000000086*mBrix*mBrix*mBrix

                var fBrix = gravityToBrix(gravity);

                $('#fg').val(gravity.toFixed(3));
                $('#fBrix').val(fBrix.toFixed(2));
            }

            function calcAbv() {
                var og = parseFloat($('#og').val());
                var fg = parseFloat($('#fg').val());
                if(isNaN(og) || isNaN(fg)) {
                    $('#abv').html('&ndash;');
                    return;
                }

                var abv = (og - fg) * 131;

                $('#abv').html(abv.toFixed(1) + '%');

                calcAbw(abv);
            }

            function calcAbw(abv){
                var abw = abv * 0.79336;
                $('#abw').html(abw.toFixed(1) + '%');

            }

            $('input').on('keyup', function(){
                var $this = $(this);
                if($this.attr('id') === 'oBrix'){
                    $('#og').val(brixToGravity($this.val()).toFixed(3));
                    measuredBrixtoFinal();
                }
                if($this.attr('id') === 'fBrix'){
                    $('#fg').val(brixToGravity($this.val()).toFixed(3));
                }
                if($this.attr('id') === 'mBrix'){
                    measuredBrixtoFinal();
                }
                if($this.attr('id') === 'og'){
                    $('#oBrix').val(gravityToBrix($this.val()).toFixed(2));
                    $('#mBrix').val('');
                }
                if($this.attr('id') === 'fg'){
                    $('#fBrix').val(gravityToBrix($this.val()).toFixed(2));
                    $('#mBrix').val('');
                }
                calcAbv();
            });
            $("#og").focus();              //이름칸으로 포커스

        });
    </script>
</content>






    </div>

    </div>

</div>