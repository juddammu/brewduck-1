<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-header">
                <!-- tools box -->
                <div class="pull-right box-tools">
                    <span class="box-btn" data-widget="collapse"><i class="fa fa-minus"></i>
                    </span>
                    <span class="box-btn" data-widget="remove"><i class="fa fa-times"></i>
                    </span>
                </div>
                <h3 class="box-title"><i class="fontello-doc"></i>
                    <span>스타일 - BJCP-2008</span>
                </h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="row" style="margin-bottom:10px;">
                    <div class="col-sm-4">
                        <input class="form-control" id="filter" placeholder="Search..." type="text" />
                    </div>
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-6">
                        <a href="#clear" style="margin-left:10px;" class="pull-right btn bg-red clear-filter" title="clear filter">초기화</a>

                    </div>

                </div>
                <table  id="footable-res2" class="demo footable-res footable metro-blue" data-filter="#filter" data-filter-text-only="true" data-page-size="30">
                    <thead>
                    <tr>
                        <th data-hide="phone">
                            #
                        </th>
                        <th>
                            스타일명
                        </th>
                        <th data-hide="phone">
                            영문명
                        </th>
                        <th data-hide="phone">
                            초기비중
                        </th>
                        <th data-hide="phone,tablet">
                            최종비중
                        </th>
                        <th>
                            IBU
                        </th>
                        <th data-hide="phone,tablet">
                            SRM
                        </th>
                        <th data-hide="phone,tablet">
                            ABV
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="list">
                        <tr onclick="goDetail('${list.seq}', '${list.titleInUrl}');">
                            <td>${list.categoryNumber}${list.styleLetter}</td>
                            <td> ${list.koreanName}</td>
                            <td> ${list.name}</td>
                            <td>
                                <span class="badge">${list.ogMax}</span>
                            </td>
                            <td>
                                <span class="badge">${list.fgMax}</span>
                            </td>
                            <td>
                                <span class="badge">${list.ogMax}</span>
                            </td>
                            <td>
                                    ${list.colorMax} °L
                            </td>
                            <td>
                                    ${list.abvMax} %
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="8">
                            <div class="pagination pagination-centered"></div>
                        </td>
                    </tr>
                    </tfoot>
                </table>
                <br>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
</div>

<content tag="local_script">

    <script>
        (function($) {
            "use strict";
            $('#footable-res2').footable().bind('footable_filtering', function(e) {

                var selected = $('.filter-status').find(':selected').text();
                if (selected && selected.length > 0) {
                    e.filter += (e.filter && e.filter.length > 0) ? ' ' + selected : selected;
                    e.clear = !e.filter;
                }
            });

            $('.clear-filter').click(function(e) {
                e.preventDefault();
                $('.filter-status').val('');
                $('table.demo').trigger('footable_clear_filter');
            });

            $('.filter-status').change(function(e) {
                e.preventDefault();
                $('table.demo').trigger('footable_filter', {
                    filter: $('#filter').val()
                });
            });
        })(jQuery);
    </script>
</content>