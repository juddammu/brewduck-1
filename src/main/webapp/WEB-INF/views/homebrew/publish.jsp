<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<section id="main_data">
    <ol class="breadcrumb">
        <li><a href="#">홈</a></li>
        <li class="active">레시피 출판</li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i
                class="fa fa-fw fa-arrow-circle-right text-gray-light"></i> ${recipeDetail.name}
            <small>${recipeDetail.styleName}</small>
        </h3>
    </div>
    <div class="section-body">
        <div class="row">
            <div class="row">
                <div class="col-lg-12">
                    <div class="box box-outlined">
                        <div class="box-body no-padding">
                            <form:form id="insert"
                                       class="form-horizontal form-banded form-bordered form-validate"
                                       name="insert" method="POST" enctype="multipart/form-data"
                                       action="/homebrew/publish/update"
                                       modelAttribute="paramRecipe">
                                <input id="status" name="status" value="${recipeDetail.status}"
                                       type="hidden">
                                <input id="seq" name="seq" value="${recipeDetail.seq}"
                                       type="hidden">

                                <div class="form-group">
                                    <div class="col-md-2">
                                        <label class="control-label">공개 설정</label>
                                    </div>
                                    <div class="col-md-10">
                                        <div data-toggle="buttons">
                                            <label class="btn radio-inline btn-radio-primary-inverse active"
                                                   onclick="setStatus(0)">
                                                <input type="radio" id="hidden" name="type"
                                                       value="0" checked> 비공개 - Private Recipe
                                            </label>
                                            <label class="btn radio-inline btn-radio-primary-inverse"
                                                   onclick="setStatus(2)">
                                                <input type="radio" id="open" name="type" value="2">
                                                공개 - Publish Recipe
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div id="coverImage" class="form-group">
                                    <div class="col-md-2">
                                        <label class="control-label">커버 이미지
                                            <small>큰사이즈</small>
                                        </label>
                                    </div>
                                    <div class="col-md-10">
                                        <input name="coverFile" id="coverFile" type="file"
                                               multiple/>
                                        <label class="control-label" name="coverFileNm"
                                               id="coverFileNm">${recipeDetail.atchCoverFileName}</label>

                                        <p class="help-block">이미지 사이즈는 350x150으로 올려주세요.</p>
                                    </div>
                                </div>
                                <div id="thurmnailImage" class="form-group">
                                    <div class="col-md-2">
                                        <label class="control-label">썸네일
                                            <small>작은 사이즈</small>
                                        </label>
                                    </div>
                                    <div class="col-md-10">
                                        <input name="file" id="file" type="file" multiple/>
                                        <label class="control-label" name="fileNm"
                                               id="fileNm">${recipeDetail.atchFileName}</label>

                                        <p class="help-block">이미지 사이즈는 190x140으로 올려주세요.</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-2">
                                        <label class="control-label">태그</label>
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" value="에일,BJCP,RECIPE"
                                               data-role="tagsinput"/>
                                    </div>
                                </div>
                                <div class="form-footer col-md-12 align">
                                    <button type="submit" class="btn btn-primary" id="insertRecipe"
                                            name="insertRecipe">완료
                                    </button>
                                    <!--button type="button" class="btn btn-info" id="checkRecipe" name="checkRecipe">정합성 체크</button-->
                                </div>
                            </form:form>
                        </div>
                        <!--end .box-body -->
                    </div>
                    <!--end .box -->
                </div>
                <!--end .col-lg-12 -->
            </div>
            <!--end .row -->
        </div>
        <!--end .row -->
    </div>
    <!--end .section-body -->
</section>
<content tag="local_script">
    <script>

        function setStatus(data) {
            $("#status").val(data);
        }

        $(document).ready(function () {
            if ($("#status").val() == 0) {
                $($("#hidden").attr("checked", true)).parent().attr({class: 'btn radio-inline btn-radio-primary-inverse active'})
                $($("#open").attr("checked", false)).parent().attr({class: 'btn radio-inline btn-radio-primary-inverse'});
            }
            if ($("#status").val() == 2) {
                $($("#open").attr("checked", true)).parent().attr({class: 'btn radio-inline btn-radio-primary-inverse active'});
                $($("#hidden").attr("checked", false)).parent().attr({class: 'btn radio-inline btn-radio-primary-inverse'})
            }
        });
        /*

         $($("#open").parent().attr({class : 'btn radio-inline btn-radio-primary-inverse active'})).click(setStatus);
         $($("#hidden").parent().attr({class : 'btn radio-inline btn-radio-primary-inverse'})).click(setStatus);
         */


    </script>
</content>
