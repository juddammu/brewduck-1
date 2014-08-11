<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.brewduck.framework.security.AuthenticationUtils" %>
<%@ page import="com.brewduck.web.domain.Account" %>
<%@ page import="com.brewduck.web.domain.Board" %>


<section>
    <ol class="breadcrumb">
        <li><a href="/">홈</a></li>
        <li class="active"><a href="/admin/main">브루덕 회원목록</a></li>
    </ol>
    <div class="section-header">
        <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i>브루덕 회원목록</h3>
    </div>
    <div class="section-body">
        <!-- BEGIN BASIC FORM INPUTS -->
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-outlined" id="result_list">
                    <div class="box-body no-padding style-white">
                        <table class="table table-hover no-margin">
                            <thead>
                                <tr>
                                    <th> ID </th>
                                    <th>이름</th>
                                    <th>메일</th>
                                    <th>권한</th>
                                    <th>활성화</th>
                                    <th>가입일</th>
                                </tr>
                            </thead>
                            <tbody id="result">
                            </tbody>
                        </table>
                    </div><!--end .box-body -->
                </div><!--end .box -->
            </div><!--end .col-lg-12 -->
        </div><!--end .row -->
    <!-- END FORM TOOLS -->
    </div><!--end .section-body -->
</section><!-- #main -->

<content tag="local_script">
    <script>

        function search(){

            $("#result").html("");
            $("#result").load("/admin/userList");
        }

        $(document).ready(function() {

            search();                                                       //조회

        });

    </script>
</content>