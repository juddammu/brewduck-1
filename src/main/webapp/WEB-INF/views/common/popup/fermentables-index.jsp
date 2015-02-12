<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <h4 class="modal-title">발효재료 - FERMENTABLES</h4>
    <input type="hidden" id="typeCode" name="typeCode" value="0" />
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-md-12">
            <div class="tabbable">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#fermentable_tab_1" onclick="javascript:search(1);" data-toggle="tab">
                            곡물 </a>
                    </li>
                    <li>
                        <a href="#fermentable_tab_2" onclick="javascript:search(2);" data-toggle="tab">
                            노트 </a>
                    </li>
                    <li>
                        <a href="#fermentable_tab_4" onclick="javascript:search(3);" data-toggle="tab">
                            설정 </a>
                    </li>
                </ul>

            <div class="tab-content no-space">
                <div class="tab-pane active" id="fermentable_tab_1">
                    <table cellspacing="0"
                           class="table table-small-font table-bordered table-striped">
                        <thead>
                        <tr>
                            <th data-hide="phone" data-priority="0"> </th>
                            <th data-hide="phone" data-priority="1">영문명</th>
                            <th data-hide="phone" data-priority="2">재료명</th>
                            <th data-hide="phone" data-priority="3">원산지</th>
                            <th data-hide="phone" data-priority="4">SG</th>
                            <th data-hide="phone" colspan="2" data-priority="5">색상</th>

                        </tr>
                        </thead>
                        <tbody id="fermentable_list">
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane" id="fermentable_tab_2">
                 2
                </div>
                <div class="tab-pane" id="fermentable_tab_3">
                    3
                </div>
            </div>
            </div>
        </div>
    </div>
</div>
<div class="modal-footer">
    <button type="button" class="btn blue">닫기</button>
</div>
<script src="/resources/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script>

    function search(){
        var fermentableHtml = "";

        $.ajax({
            type: "POST"
            ,url: "/common/popup/fermentables/list"
            ,data: {typeCode:0}
            ,success:function(data){
                $.each(data, function (i) {


                    fermentableHtml = fermentableHtml + "<tr>";

                    fermentableHtml = fermentableHtml + "<td><a href=javascript:parent_fuction('" + data[i].id + "'); class='btn btn-default' value='" + data[i].color + "'><i class='fa fa-plus'></i> 추가</a></td>";
                    fermentableHtml = fermentableHtml + "<td>" + data[i].name + " </td>";
                    fermentableHtml = fermentableHtml + "<td>" + data[i].koreanName + "</td>";
                    fermentableHtml = fermentableHtml + "<td>" + data[i].originKorean + "</td>";
                    fermentableHtml = fermentableHtml + "<td>" + data[i].specificGravity + "</td>";

                    fermentableHtml = fermentableHtml + "<td><div class='input-group'>";
                    fermentableHtml = fermentableHtml + "<ul class='icheck-colors'>";
                    fermentableHtml = fermentableHtml + "<li class='purple' style='background:"+data[i].colorCode+"'>";
                    fermentableHtml = fermentableHtml + "        ";
                    fermentableHtml = fermentableHtml + "</ul>";
                    fermentableHtml = fermentableHtml + "</div></td>";

                    fermentableHtml = fermentableHtml + "<td>"+data[i].color+" °L</td>";

                    fermentableHtml = fermentableHtml + "/<tr>";
                });

                $("#fermentable_list").append(fermentableHtml);
            }
            ,error:function(data){
                alert("error");
            }
        });
    }

jQuery(document).ready(function ($) {
//alert();
    search();


});
</script>
