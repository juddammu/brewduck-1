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
        <!--header><h4 class="text-light"><i class="fa fa-pencil fa-fw"></i>Enter a number in any of the three inputs, and the other two will be calculated <strong>automatically.</strong></h4></header-->
        <header><h4 class="text-light"><i class="fa fa-pencil fa-fw"></i>세 곳 중 한곳에 수치를 입력하면 나머지 두 곳은  <strong>자동</strong>으로 계산됩니다</h4></header>

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
                <!--This tool allows you to easily convert between the three most common methods used to measure color in brewing: SRM, EBC, and Degrees Lovibond. The processes used to measure EBC and SRM are largely similar with EBC being, very roughly 2 × SRM. EBC and SRM are typically used to measure wort color. Lovibond is a much older method and is most often used to measure the color of malt.-->
                이 툴은 양조 시 색을 측정할 때 가장 많이 사용되는 세가지 방식인 SRM, EBC, Lovibond 간의 변환을 쉽게 할 수 있도록 해줍니다. EBC와 SRM을 측정하는 과정은 매우 유사하며 EBC 수치가 SRM의 약 두 배라고 볼 수 있습니다. EBC와 SRM은 일반적으로 맥아즙의 색을 측정할 때 쓰이며 로비본드는 훨씬 오래된 방식으로 몰트의 색을 측정할 때 가장 많이 쓰입니다.
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