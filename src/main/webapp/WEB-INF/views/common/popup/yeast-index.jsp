<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <h4 class="modal-title">효모 - YEASTS</h4>
    <input type="hidden" id="typeCode" name="typeCode" value="0" />
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-md-12">
            <div class="tabbable">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#fermentable_tab_1" onclick="javascript:search(1);" data-toggle="tab">
                            전체 </a>
                    </li>
                    <li>
                        <a href="#fermentable_tab_2" onclick="javascript:search(2);" data-toggle="tab">
                            액상 </a>
                    </li>
                    <li>
                        <a href="#fermentable_tab_4" onclick="javascript:search(3);" data-toggle="tab">
                            가루 </a>
                    </li>
                </ul>

            <div class="tab-content no-space">
                <div class="tab-pane active" id="yeast_tab_1">
                    <table cellspacing="0"
                           class="table table-small-font table-bordered table-striped">
                        <thead>
                        <tr>
                            <th data-hide="phone" data-priority="0"> </th>
                            <th data-hide="phone" data-priority="1">영문명</th>
                            <th data-hide="phone" data-priority="2">재료명</th>
                            <th data-hide="phone" data-priority="3">품번</th>
                            <th data-hide="phone" data-priority="4">형태</th>
                            <th data-hide="phone" data-priority="5">온도</th>
                            <th data-hide="phone" data-priority="6">제조사</th>
                            <th data-hide="phone" data-priority="5">발효도</th>
                        </tr>
                        </thead>
                        <tbody id="yeast_list">
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane" id="yeast_tab_2">
                 2
                </div>
                <div class="tab-pane" id="yeast_tab_3">
                    3
                </div>
            </div>
            </div>
        </div>
    </div>
</div>
<div class="modal-footer">
    <button type="button" class="btn blue" data-dismiss="modal">닫기</button>
</div>
<script src="/resources/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script>

    function search(){
        var yeastHtml = "";

        $.ajax({
            type: "POST"
            ,url: "/common/popup/yeasts/list"
            ,data: {typeCode:0}
            ,success:function(data){
                $.each(data, function (i) {

                    var yeastData = data[i].id + "^" + data[i].koreanName + "^" + data[i].productId + "^" + data[i].laboratory+ "^" + data[i].attenuation+ "^" + data[i].typeCode;
                    //onclick='parent_fuction(this.value);'

                    yeastHtml = yeastHtml + "<tr>";
                    yeastHtml = yeastHtml + "<td><button type='button' onclick='add_yeast(this.value);' value='" + yeastData + "' class='btn btn-default'><i class='fa fa-plus'></i></a></td>";
                    yeastHtml = yeastHtml + "<td>" + data[i].name + " </td>";
                    yeastHtml = yeastHtml + "<td>" + data[i].koreanName + "</td>";
                    yeastHtml = yeastHtml + "<td>" + data[i].productId + "</td>";
                    yeastHtml = yeastHtml + "<td>" + data[i].typeCode + "</td>";
                    yeastHtml = yeastHtml + "<td>" + data[i].minTemperature + "~" + data[i].maxTemperature + "°C</td>";
                    yeastHtml = yeastHtml + "<td>" + data[i].laboratory + "</td>";
                    yeastHtml = yeastHtml + "<td>" + data[i].minAttenuation + "~" + data[i].maxAttenuation + "%</td>";
                    yeastHtml = yeastHtml + "/<tr>";
                });

                $("#yeast_list").append(yeastHtml);
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
