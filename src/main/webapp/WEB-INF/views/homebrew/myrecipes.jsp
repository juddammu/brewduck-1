<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<section>
    <ol class="breadcrumb">
        <li><a href="#">홈</a></li>
        <li class="active"><a href="#">재료 데이터베이스</a></li>
    </ol>
    <div class="section-body">

        <!-- BEGIN BASIC FORM INPUTS -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined">
                    <div class="box-body no-padding">
                        <form:form class="form-horizontal form-banded form-bordered" action="/style/list" id="searchForm"  name="searchForm" modelAttribute="paramStyle">
                            <div class="form-group">
                                <div class="col-md-2">
                                    <label class="control-label">이름</label>
                                </div>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <input class="form-control" placeholder="검색어를 입력하세요." name="name" id="name" onkeypress="if(event.keyCode==13){return false;};"  >
                                        <span class="input-group-addon"><i id="search" name="search" class="fa fa-search"></i></span>
                                    </div>
                                </div>
                            </div>
                        </form:form>
                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->
        <!-- END BASIC FORM INPUTS -->

        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined" id="result_list">
                    <div class="box-head">
                        <header><h4 class="text-light">레시피 <strong>목록</strong></h4></header>
                    </div>
                    <div class="box-body">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>일련번호</th>
                                <th>레시피명</th>
                                <th>스타일</th>
                                <th>배치용량</th>
                                <th>ABV</th>
                                <th>IBU</th>
                                <th>Color</th>
                                <th class="text-right1" style="width:90px">액션</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${recipeList}" var="list">
                            <tr>
                                <td><span class="label label-success">공개</span></td>
                                <td><a href="${list.seq}/${list.titleInUrl}">${list.name}</a></td>
                                <td>${list.styleName}</td>
                                <td>${list.batchSize}리터</td>
                                <td>7.0%</td>
                                <td>40 IBU</td>
                                <td>7 SRM</td>
                                <td class="text-right">
                                    <button type="button" class="btn btn-xs btn-default btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Edit row"><i class="fa fa-pencil"></i></button>
                                    <button type="button" class="btn btn-xs btn-default btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Copy row"><i class="fa fa-copy"></i></button>
                                    <button type="button" class="btn btn-xs btn-default btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Delete row"><i class="fa fa-trash-o"></i></button>
                                </td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->
        <!-- END FORM TOOLS -->

    </div><!--end .section-body -->



</section>

<content tag="local_script">
    <script>
    </script>
</content>