<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="row">
    <div class="col-sm-12">
        <ul class="list-unstyled list-inline mail-btn">
            <li><i class="fontello-pencil-1"></i> &nbsp;<b> 레시피 작성</b>
            <li><i class="fontello-paper-plane"></i> &nbsp;<b>보내기</b>
            </li>
            <li><i class="fontello-rss"></i><b>담아온 레시피
                <small>68</small>
            </b>
            </li>
            <li><i class="fontello-trash-2"></i><b>휴지통
                <small>23</small>
            </b>
            </li>
        </ul>
    </div>
</div>
<div class="row">

    <!-- CONTENT MAIL -->
    <div class="col-sm-12">
        <div class="mail_header">
            <div class="row">
                <div class="col-sm-6">
                    <div style="margin-right:10px" class="btn-group pull-left">
                        <div class="btn btn-sm btn-default bg-amber">
                            <input type="checkbox"
                                   style="margin:0 5px;padding:0;position:relative;top:2px;">All
                        </div>
                        <button type="button"
                                class="btn btn-sm btn-default dropdown-toggle bg-amber"
                                data-toggle="dropdown">
                            <span class="caret"></span>
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">전체</a>
                            </li>
                            <li><a href="#">공개</a>
                            </li>
                            <li><a href="#">비공개</a>
                            </li>
                        </ul>
                    </div>


                    <div style="margin-right:10px" class="btn-group pull-left">
                        <button type="button"
                                class="btn btn-sm btn-default dropdown-toggle bg-amber"
                                data-toggle="dropdown">More
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a>
                            </li>
                            <li><a href="#"><i class="fa fa-ban"></i> Spam</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a>
                            </li>
                        </ul>
                    </div>

                    <button style="margin-right:10px" type="button" data-color="#39B3D7"
                            data-opacity="0.95"
                            class="btn btn-sm btn-default button test pull-left bg-amber">
                        <span class="fontello-loop"></span>&nbsp;&nbsp;Refresh
                    </button>
                </div>


                <div class="col-sm-6">
                    <div class="btn-group  pull-right ">
                        <button type="button" class="btn btn-sm btn-default bg-amber">
                            <span class="fontello-left-open-outline"></span>
                        </button>
                        <button type="button" class="btn btn-default btn-sm bg-amber">
                            <span class="fontello-right-open-outline"></span>
                        </button>
                    </div>

                    <div class="btn-group pull-right " style="margin-right:10px;">
                        <button type="button" class="btn btn-default btn-sm bg-amber">1-50 of 124
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div id="content-mail" class="bg-amber">

            <div class="box-body table-responsive no-padding">
                <!-- THE MESSAGES -->
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>레시피명</th>
                        <th>스타일</th>
                        <th>배치용량</th>
                        <th>레시피 완성도</th>
                    </tr>
                    </thead>
                    <c:forEach items="${recipeList}" var="list">
                        <tr class="unread">
                            <td class="small-col">
                                <input type="checkbox"/>
                            </td>
                            <td>
                                <a href="/homebrew/publish/${list.id}">
                                    <c:choose>
                                        <c:when test="${list.status=='2'}">
                                            <span class="label label-primary">OPEN</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="status-metro status-disabled">CLOSE</span>
                                        </c:otherwise>
                                    </c:choose>
                                </a>
                            </td>
                            <td>
                                <a href="/homebrew/${list.id}/${list.titleInUrl}">${list.name}</a>
                            </td>
                            <td>${list.styleName}</td>
                            <td>${list.batchSize}리터</td>
                            <td>
                                <c:choose>
                                    <c:when test="${list.completeness=='0'}">
                                        <div class="progress no-margin">
                                            <div class="progress-bar progress-bar-danger"
                                                 style="width: 25%"></div>
                                        </div>
                                    </c:when>
                                    <c:when test="${list.completeness=='1'}">
                                        <div class="progress no-margin">
                                            <div class="progress-bar progress-bar-warning"
                                                 style="width: 50%"></div>
                                        </div>
                                    </c:when>
                                    <c:when test="${list.completeness=='2'}">
                                        <div class="progress no-margin">
                                            <div class="progress-bar progress-bar-success"
                                                 style="width: 75%"></div>
                                        </div>
                                    </c:when>
                                    <c:when test="${list.completeness=='3'}">
                                        <div class="progress no-margin">
                                            <div class="progress-bar progress-bar-info"
                                                 style="width: 100%"></div>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        -
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <!-- /.table-responsive -->


        </div>

    </div>
</div>


<!-- #/paper bg -->
<content tag="local_script">

    <script>
    </script>
</content>
