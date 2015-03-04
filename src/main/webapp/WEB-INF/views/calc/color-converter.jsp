<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<title>알콜 함유량 계산기</title>
<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>색상 변환기
                <small>Color Converter</small>
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
                    <div class="portlet light bordered">
                        <div class="portlet-body form">
                            <!-- BEGIN FORM-->
                            <form class="form-horizontal" role="form">
                                <div class="form-body">
                                    <h4 class="form-section">세 곳 중 한곳에
                                        수치를 입력하면 나머지 두 곳은 <strong>자동</strong>으로 계산됩니다</h4>

                                    <div class="row">
                                        <div class="form-group">
                                            <label class="control-label col-md-3">SRM </label>

                                            <div class="col-md-9">
                                                <input id="srm" name="srm" type="text"
                                                       class="form-control">
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <!--/row-->
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="control-label col-md-3">° L lovibond</label>

                                            <div class="col-md-9">
                                                <input id="lovibond" name="lovibond" type="text"
                                                       class="form-control">
                                            </div>
                                        </div>
                                        <!--/span-->
                                    </div>
                                    <!--/row-->
                                    <div class="row">
                                        <div class="form-group">
                                            <label class="control-label col-md-3">EBC</label>

                                            <div class="col-md-9">
                                                <input id="ebc" name="ebc" type="text"
                                                       class="form-control">

                                                <br/>
                                                <small>이 툴은 양조 시 색을 측정할 때 가장 많이 사용되는 세가지 방식인 SRM, EBC, Lovibond 간의 변환을 쉽게 할
                                                    수 있도록 해줍니다.
                                                </small>
                                                <br/><br/>
                                                <small>EBC와 SRM을 측정하는 과정은 매우 유사하며 EBC 수치가 SRM의 약 두 배라고 볼 수
                                                    있습니다.
                                                </small>
                                                <br/><br/>
                                                <small>EBC와 SRM은 일반적으로 맥아즙의 색을 측정할 때 쓰이며 로비본드는 훨씬 오래된 방식으로 몰트의 색을 측정할
                                                    때 가장 많이 쓰입니다.
                                                </small>

                                            </div>
                                        </div>
                                    </div>
                                    <!--/row-->

                                </div>
                                <div class="form-actions">
                                    <div class="row">


                                        <label class="control-label col-md-3"> </label>

                                        <div class="col-md-3">
                                        </div>

                                        <div class="col-md-3">



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
        $(document).ready(function () {

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

            $('#srm').keyup(function () {
                if ($(this).val() === '') {
                    $('#ebc').val('');
                    $('#lovibond').val('');
                    return;
                }
                var srm = parseFloat($(this).val());
                $('#ebc').val(srm_to_ebc(srm));
                $('#lovibond').val(srm_to_lovibond(srm));
            });

            $('#ebc').keyup(function () {
                if ($(this).val() === '') {
                    $('#srm').val('');
                    $('#lovibond').val('');
                    return;
                }
                var ebc = parseFloat($(this).val());
                $('#srm').val(ebc_to_srm(ebc));
                $('#lovibond').val(ebc_to_lovibond(ebc));
            });

            $('#lovibond').keyup(function () {
                if ($(this).val() === '') {
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
