<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<section>
    <ol class="breadcrumb">
        <li><a href="#">홈</a></li>
        <li><a href="#">계산기</a></li>
        <li class="active">Color <small> Converter</small></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i>색상 <strong class="text-support3">변환기</strong></h3>
    </div>
    <div class="section-body">
    <div class="row">
    <div class="col-lg-12">
    <div class="box box-outlined">
    <div class="box-head">
        <header><h4 class="text-light"><i class="fa fa-pencil fa-fw"></i>Enter a number in any of the three inputs, and the other two will be calculated <strong>automatically.</strong></h4></header>
    </div>
    <div class="box-body no-padding">
        <form class="form-horizontal form-banded form-bordered" accept-charset="utf-8" method="post">
            <div class="form-group">
                <div class="col-md-2">
                    <label class="control-label">SRM <small>SRM</small></label>
                </div>
                <div class="col-md-10">
                    <input id="srm" name="srm" type="text" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <label class="control-label">° L <small>lovibond</small></label>
                </div>
                <div class="col-md-10">
                    <input id="lovibond" name="lovibond" type="text" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <label class="control-label">EBC<small>EBC</small></label>
                </div>
                <div class="col-md-10">
                    <input id="ebc" name="ebc" type="text" class="form-control">
                </div>
            </div>
            <div class="form-footer col-md-offset-2 col-sm-offset-3">
                This tool allows you to easily convert between the three most common methods used to measure color in brewing: SRM, EBC, and Degrees Lovibond. The processes used to measure EBC and SRM are largely similar with EBC being, very roughly 2 × SRM. EBC and SRM are typically used to measure wort color. Lovibond is a much older method and is most often used to measure the color of malt.
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

            function srm_to_lovibond(srm) {
                return (srm + 0.76) / 1.3546;
            }

            function srm_to_ebc(srm) {
                return srm * 1.97;
            }

            function ebc_to_lovibond(ebc) {
                return srm_to_lovibond(ebc_to_srm(ebc));
            }

            function ebc_to_srm(ebc) {
                return ebc * 0.508;
            }

            function lovibond_to_srm(lovibond) {
                return (1.3546 * lovibond) - 0.76;
            }

            function lovibond_to_ebc(lovibond) {
                return srm_to_ebc(lovibond_to_srm(lovibond));
            }

            $('#srm').keyup(function() {
                if($(this).val() === '') {
                    $('#ebc').val('');
                    $('#lovibond').val('');
                    return;
                }
                var srm = parseFloat($(this).val());
                $('#ebc').val(srm_to_ebc(srm));
                $('#lovibond').val(srm_to_lovibond(srm));
            });

            $('#ebc').keyup(function() {
                if($(this).val() === '') {
                    $('#srm').val('');
                    $('#lovibond').val('');
                    return;
                }
                var ebc = parseFloat($(this).val());
                $('#srm').val(ebc_to_srm(ebc));
                $('#lovibond').val(ebc_to_lovibond(ebc));
            });

            $('#lovibond').keyup(function() {
                if($(this).val() === '') {
                    $('#srm').val('');
                    $('#ebc').val('');
                    return;
                }
                var lovibond = parseFloat($(this).val());
                $('#srm').val(lovibond_to_srm(lovibond));
                $('#ebc').val(lovibond_to_ebc(lovibond));
            });

            $("#srm").focus();              //이름칸으로 포커스

        });
    </script>
</content>