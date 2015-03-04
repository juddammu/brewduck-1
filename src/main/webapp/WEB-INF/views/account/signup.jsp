<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="box text-center">
    <div class="box-head">
        <h2 class="text-light text-white"><strong>맥덕</strong> 모드 인증 시스템<i
                class="fa fa-rocket fa-fw"></i></h2>
        <h4 class="text-light text-inverse-alt">브루덕에 가입하기</h4>
    </div>

    <c:if test="${loginError eq 'false'}">
        <div class="alert alert-danger">
            <button class="close" data-close="alert"></button>
            <span>${errorMessage}</span>
        </div>
    </c:if>

    <div class="box-body box-centered style-inverse">
        <form:form id="authentication" class="form-content login-form" method="POST"
                   action="/account/join" modelAttribute="account">
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                    <input id="name" name="name" class="form-control" type="text"
                           placeholder="성명을 입력하세요." maxlength="40">

                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-flash"></i></span>
                    <input id="email" name="email" class="form-control" type="email"
                           placeholder="이메일 주소를 입력하세요." maxlength="100">
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                    <input id="password" name="password" class="form-control" type="password"
                           placeholder="패스워드를 입력하세요." maxlength="20">

                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                    <input id="rePassword" name="rePassword" class="form-control" type="password"
                           placeholder="패스워드를 다시 입력하세요." maxlength="20">
                </div>
            </div>
            <div class="form-group">
                <button class="btn btn-primary" type="submit"><i class="fa fa-key"></i> 가입하기
                </button>
            </div>
        </form:form>
    </div>
    <!--end .box-body -->
    <div class="box-footer force-padding text-white">
        <c:if test="${loginError eq 'false'}">
            <h4 class="rs title-box fc-orange">${errorMessage}</h4>
        </c:if>
    </div>
</div>


<%--<div class="container_12 pop-content">
    <div class="grid_12 wrap-btn-close ta-r">
        <i class="icon"></i>
    </div>
    <div class="grid_7 prefix_3">
        <div class="form login-form">
            <form:form id="join" method="POST" action="/account/join" modelAttribute="account">
                <h3 class="rs title-form">브루덕에 합류하기 (Register)</h3>
                <div class="box-white">
                    <h4 class="rs title-box">브루덕에 처음이신가요?</h4>
                    <c:if test="${message != null}">
                        <h4 class="rs title-box fc-orange">${message}</h4>
                    </c:if>
                    <p class="rs">다양한 서비스를 자유롭게 사용해보세요!</p>
                    <div class="form-action">
                        <label for="name">
                            <input id="name" name="name" class="txt fill-width" type="text" placeholder="성명을 입력하세요." maxlength="40" />
                            <form:errors path="name" />
                        </label>
                        <div class="wrap-2col clearfix">
                            <div class="col">
                                <label for="email">
                                    <input id="email" name="email" class="txt fill-width" type="email" placeholder="이메일 주소를 입력하세요." maxlength="100" />
                                    <form:errors path="email" />
                                </label>
                                <label for="reEmail">
                                    <input id="reEmail" name="reEmail" class="txt fill-width" type="email" placeholder="이메일 주소를 다시 입력하세요." maxlength="100" />
                                </label>
                            </div>
                            <div class="col">
                                <label for="password">
                                    <input id="password" name="password" class="txt fill-width" type="password" placeholder="패스워드를 입력하세요." maxlength="20" />
                                    <form:errors path="password" />
                                </label>
                                <label for="rePassword">
                                    <input id="rePassword" name="rePassword" class="txt fill-width" type="password" placeholder="패스워드를 다시 입력하세요." maxlength="20" />
                                </label>
                            </div>
                        </div>
                        <p class="rs pb10">가입하기을 클릭하시면 <a href="#" class="fc-orange">약관</a>에 동의하며 <a href="#" class="fc-orange">쿠키 사용</a>을
                            포함한 </br><a href="#" class="fc-orange">데이터 사용 정책</a>을 숙지하신 것으로 간주됩니다.</p>
                        <p class="rs ta-c">
                            <button class="btn btn-red btn-submit" type="submit">합류하기</button>
                        </p>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
    <div class="clear"></div>
</div>--%>
