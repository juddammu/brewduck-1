<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8" />
    <title>BREWDUCK - 맥주의 모든것</title>
    <meta name="Author" content="brewduck, http://www.brewduck.com, 맥주 대동여지도" />
    <meta content="" name="description" />
    <meta name="description" content="BRWEDUCK - 세상에는 당신이 맛보지 않은 맥주들이 너무나 많습니다." />
    <meta name="keywords" content="ale, beer, brewduck, Home Brewing, lager, SOMA, 곡주, 공방, 과실주, 라거, 맥주, 문화, 바이젠, 발효, 배병우, 소마, 숙성, 양조, 에일, 옥수동, 옥토버페스트, 와인, 맥만동, 임세환, 제조, 주조, 증류주, 포도주, 프로젝트, 홈 브루잉, 효모" />

    <!-- BEGIN STYLESHEETS -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,300,400,600,700,800' rel='stylesheet' type='text/css'/>
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/bootstrap.css?1400695306" />
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/boostbox.css?1401297311" />
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/boostbox_responsive.css?1400695309" />
    <link type="text/css" rel="stylesheet" href="/resources/expert/css/theme-default/font-awesome.min.css?1400333030" />
    <!-- END STYLESHEETS -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/resources/expert/js/libs/utils/html5shiv.js?1400333019"></script>
    <script type="text/javascript" src="/resources/expert/js/libs/utils/respond.min.js?1400333017"></script>
    <![endif]-->
</head>
<body class="body-dark">
<!-- START LOGIN BOX -->
<div class="box-type-login">
    <div class="box text-center">
        <div class="box-head">
            <h2 class="text-light text-white"> <strong>맥덕</strong> 모드 인증 시스템<i class="fa fa-rocket fa-fw"></i></h2>
            <h4 class="text-light text-inverse-alt">맥Duck Mode</h4>
        </div>
        <div class="box-body box-centered style-inverse">
            <h2 class="text-light">계정을 입력하세요.</h2>
            <br/>
            <form:form id="authentication" class="form-content login-form" method="POST" action="/account/authentication" modelAttribute="account">
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input class="form-control" id="email" name="email" type="text" placeholder="아이디를 입력하세요." value="hukoru@naver.com" maxlength="40">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input class="form-control" id="password" name="password" type="password" placeholder="패스워드를 입력하세요." value="123456" maxlength="100">
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6 text-left">
                        <div data-toggle="buttons">
                            <label class="btn checkbox-inline btn-checkbox-primary-inverse">
                                <input type="checkbox" value="default-inverse1"> 아이디 저장
                            </label>
                        </div>
                    </div>
                    <div class="col-xs-6 text-right">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-key"></i> 로그인</button>
                    </div>
                </div>
            </form:form>
        </div><!--end .box-body -->
        <div class="box-footer force-padding text-white">
            <c:if test="${loginError eq 'false'}">
                <h4 class="rs title-box fc-orange">${errorMessage}</h4>
            </c:if>
        </div>
    </div>
</div>
<!-- END LOGIN BOX -->

<!-- BEGIN JAVASCRIPT -->
<script src="/resources/expert/js/libs/jquery/jquery-1.11.0.min.js"></script>
<script src="/resources/expert/js/libs/jquery/jquery-migrate-1.2.1.min.js"></script>
<script src="/resources/expert/js/core/BootstrapFixed.js"></script>
<script src="/resources/expert/js/libs/bootstrap/bootstrap.min.js"></script>
<script src="/resources/expert/js/libs/spin.js/spin.min.js"></script>
<script src="/resources/expert/js/libs/slimscroll/jquery.slimscroll.min.js"></script>
<script src="/resources/expert/js/core/App.js"></script>
<script src="/resources/expert/js/core/demo/Demo.js"></script>
<!-- END JAVASCRIPT -->
<script>
    $(document).ready(function() {
        $("#email").focus();
    });
</script>
</body>
</html>