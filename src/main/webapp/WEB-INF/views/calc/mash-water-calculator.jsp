<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<section>
    <ol class="breadcrumb">
        <li><a href="#">홈</a></li>
        <li><a href="#">계산기</a></li>
        <li class="active">Mash Water <small> Calculator</small></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i>당화용 물 <strong class="text-support3">계산기</strong></h3>
    </div>
    <div class="section-body">
    <div class="row">
    <div class="col-lg-12">
    <div class="box box-outlined">
    <div class="box-body no-padding">
        <form class="form-horizontal form-banded form-bordered" accept-charset="utf-8" method="post">
            <div class="form-group">
                <div class="col-md-2">
                    <label class="control-label">시간 <small>Time</small></label>
                </div>
                <div class="col-md-10">
                    <input id="mash-time" name="mash-time" type="text" value="60" class="form-control" >
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <label class="control-label">온도<small>Temperature</small></label>
                </div>
                <div class="col-md-10">
                    <input id="saccharification-temp" name="saccharification-temp" type="text" class="form-control" value="68" >
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <label class="control-label">곡물 무게<small>Grain weight</small></label>
                </div>
                <div class="col-md-10">
                    <input id="grain-weight" name="grain-weight" type="text" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <label class="control-label">Boil volume <small>Boil volume</small></label>
                </div>
                <div class="col-md-10">
                    <input id="boil-volume" name="boil-volume" type="text" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <label class="control-label">Lauter deadspace <small>Lauter deadspace</small></label>
                </div>
                <div class="col-md-10">
                    <input id="lauter-deadspace" name="lauter-deadspace" type="text" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <label class="control-label">Mash thickness <small>Mash thickness</small></label>
                </div>
                <div class="col-md-10">
                    <input id="mash-thickness" name="mash-thickness" type="text" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <label class="control-label">Boiling temperature <small>Boiling temperature</small></label>
                </div>
                <div class="col-md-10">
                    <input id="boiling-temp" name="boiling-temp" type="text" class="form-control" value="100" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-3">
                    <label class="control-label">Grain absorption factor <small>Grain absorption factor</small></label>
                </div>
                <div class="col-md-9">
                    <input id="grain-absorption-factor" name="grain-absorption-factor" type="text" class="form-control">
                </div>
            </div>
            <div class="form-footer col-md-offset-2 col-sm-offset-3">
                <select id="equipment-profile" class="small" disabled=&quot;disabled&quot;>
                    <option id="55422" data-grain-absorption-factor="0.1" data-boiling-temp="100.0" data-mash-thickness="1.2" data-lauter-deadspace="1.89">Default</option>
                </select>
                <select id="mash-profile">
                    <option value="1">Single Infusion, Batch Sparge</option>
                    <option value="2">Single Infusion, Mash Out, Batch Sparge</option>
                    <option value="3">Single Infusion, Mash Out, Batch Sparge (Equal Runnings)</option>
                    <option value="4">Single Infusion, Two Equal Batch Sparges</option>
                    <option value="5">Single Infusion, No Sparge (BIAB)</option>
                    <option value="6">Single Infusion, Sparge Rinse (BIAB)</option>
                </select>
               <p id="mash-schedule" />
            </div>
        </form>
        </div><!--end .box-body -->
    </div><!--end .box -->
    </div><!--end .col-lg-12 -->
    </div><!--end .row -->
    </div><!--end .section-body -->
</section>

<content tag="local_script">
    <script>
        $(document).ready(function() {
            function recalculate() {
                var valid = true;

                $('fieldset input').each(function(idx) {
                    if(isNaN(parseFloat($(this).val()))) {
                        valid = false;
                        $(this).addClass('invalid');
                    } else {
                        $(this).removeClass('invalid');
                    }
                });

                if(valid === false) {
                    $('#mash-schedule').hide();
                    $('#mash-schedule-error').show();
                    return;
                } else {
                    $('#mash-schedule-error').hide();
                    $('#mash-schedule').show();
                }

                var mashCalc = new MashWaterCalculator({
                    metric:                true,
                    grainWeight:           parseFloat($('#grain-weight').val()),
                    boilVolume:            parseFloat($('#boil-volume').val()),
                    grainAbsorptionFactor: parseFloat($('#grain-absorption-factor').val()),
                    lauterDeadspace:       parseFloat($('#lauter-deadspace').val()),
                    mashThickness:         parseFloat($('#mash-thickness').val()),
                    mashTemp:              parseFloat($('#saccharification-temp').val()),
                    mashTime:              parseFloat($('#mash-time').val()),
                    boilingTemp:           parseFloat($('#boiling-temp').val())
                });

                var schedule,
                        profile = parseInt($('#mash-profile').val());

                switch(profile) {
                    case 1:
                        schedule = mashCalc.singleInfusionBatchSparge();
                        break;
                    case 2:
                        schedule = mashCalc.singleInfusionMashOutBatchSparge();
                        break;
                    case 3:
                        schedule = mashCalc.singleInfusionMashOutBatchSpargeEqualRunnings();
                        break;
                    case 4:
                        schedule = mashCalc.singleInfusionTwoEqualBatchSparges();
                        break;
                    case 5:
                        schedule = mashCalc.singleInfusionNoSpargeBiab();
                        break;
                    case 6:
                        schedule = mashCalc.singleInfusionSpargeRinseBiab();
                        break;
                    default:
                        return;
                }

                $('#mash-schedule').html(schedule);
            }

            $('input, select').on('keyup change', recalculate)

            function loadEquipmentProfile() {
                var metric = $('body').attr('data-metric') === 'true';
                var $equipmentProfile = $(this).find(":selected");

                var grainAbsorptionFactor = parseFloat($equipmentProfile.attr('data-grain-absorption-factor')),
                        boilingTemp           = parseFloat($equipmentProfile.attr('data-boiling-temp')),
                        mashThickness         = parseFloat($equipmentProfile.attr('data-mash-thickness')),
                        lauterDeadspace       = parseFloat($equipmentProfile.attr('data-lauter-deadspace'));

                if(isNaN(grainAbsorptionFactor)) {
                    if(metric) {
                        grainAbsorptionFactor = 0.8345;
                    } else {
                        grainAbsorptionFactor = 0.1
                    }
                }

                if(isNaN(mashThickness)) {
                    if(metric) {
                        mashThickness = 2.6079
                    } else {
                        mashThickness = 0.3125
                    }
                }

                if(isNaN(lauterDeadspace)) {
                    if(metric) {
                        lauterDeadspace = 2
                    } else {
                        lauterDeadspace = 0.5
                    }
                }

                $('#grain-absorption-factor').val(grainAbsorptionFactor);
                $('#mash-thickness').val(mashThickness);
                $('#lauter-deadspace').val(lauterDeadspace);

                recalculate();
            }

            $('#equipment-profile').change(function() {
                loadEquipmentProfile();
            });

            loadEquipmentProfile();
        });
    </script>

</content>