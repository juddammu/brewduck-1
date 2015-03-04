<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <h4 class="modal-title">기타재료 - miscellaneous</h4>
    <input type="hidden" id="typeCode" name="typeCode" value="0" />
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-md-12">

                    <table cellspacing="0"
                           class="table table-small-font table-bordered table-striped">
                        <thead>
                        <tr>
                            <th data-priority="0"> </th>
                            <th data-hide="phone" data-priority="1">영문명</th>
                            <th data-hide="phone" data-priority="2">재료명</th>
                            <th data-hide="phone" data-priority="3">타입</th>
                            <th data-hide="phone" data-priority="4">용도</th>
                        </tr>

                        </thead>
                        <tbody id="misc_list">
                        </tbody>
                    </table>

        </div>
    </div>
</div>
<div class="modal-footer">
    <button type="button" class="btn blue" data-dismiss="modal">닫기</button>
</div>
<script src="/resources/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script>

    function search(){
        var miscHtml = "";

        $.ajax({
            type: "POST"
            ,url: "/common/popup/miscs/list"
            ,data: {typeCode:''}
            ,success:function(data){
                $.each(data, function (i) {

                    var miscData = data[i].id + "^" +  data[i].name;
                    //onclick='parent_fuction(this.value);'

                    miscHtml = miscHtml + "<tr>";
                    miscHtml = miscHtml + "<td><button type='button' onclick='add_misc(this.value);' value='" + miscData + "' class='btn btn-default'><i class='fa fa-plus'></i> 추가</a></td>";
                    miscHtml = miscHtml + "<td>" + data[i].name + " </td>";
                    miscHtml = miscHtml + "<td>" + data[i].koreanName + "</td>";
                    miscHtml = miscHtml + "<td>" + data[i].typeKorean + "</td>";
                    miscHtml = miscHtml + "<td>" + data[i].useForKorean + "</td>";
                    miscHtml = miscHtml + "/<tr>";
                });

                $("#misc_list").append(miscHtml);
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
