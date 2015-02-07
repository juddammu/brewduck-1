<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<form:form id="authentication" method="POST"
           action="/account/authentication" modelAttribute="account" class="login-form">
    <h3 class="form-title text-center">맥덕모드 인증 시스템</h3>

    <c:if test="${loginError eq 'false'}">
        <div class="alert alert-danger">
            <button class="close" data-close="alert"></button>
            <span>${errorMessage}</span>
        </div>
    </c:if>

    <div class="alert alert-danger display-hide">
        <button class="close" data-close="alert"></button>
			<span>
			계정과 패스워드를 입력하세요.</span>



    </div>
    <div class="form-group">
        <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
        <label class="control-label visible-ie8 visible-ie9">Username</label>
        <div class="input-icon">
            <i class="fa fa-user"></i>
            <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="아이디를 입력하세요." id="email" name="email" type="text"
                   placeholder="아이디를 입력하세요." value="" maxlength="40" />
        </div>
    </div>
    <div class="form-group">
        <label class="control-label visible-ie8 visible-ie9">Password</label>
        <div class="input-icon">
            <i class="fa fa-lock"></i>
            <input class="form-control" type="password" autocomplete="off" placeholder="패스워드를 입력하세요." id="password" name="password" value="" maxlength="100" />


        </div>
    </div>
    <div class="form-actions">
        <label class="checkbox">        </label>
            <!--input type="checkbox" name="remember" value="1"/> Remember me </label-->
        <button type="submit" class="btn blue pull-right">
            로그인 <i class="m-icon-swapright m-icon-white"></i>
        </button>

    </div>
    <!--div class="login-options">
        <h4>Or login with</h4>
        <ul class="social-icons">
            <li>
                </a>
            </li>
            <li>
                <a class="twitter" data-original-title="Twitter" href="#">
                </a>
            </li>
            <li>
                <a class="googleplus" data-original-title="Goole Plus" href="#">
                </a>
            </li>
            <li>
                <a class="linkedin" data-original-title="Linkedin" href="#">
                </a>
            </li>
        </ul>
    </div-->
    <div class="forget-password">
        <h4>패스워드를 분실하셨나요 ?</h4>
        <p>
            걱정하지 마세요. <a href="javascript:;" id="forget-password">
            여기 </a>
            를 클릭하여 리셋하세요.
        </p>
    </div>
    <div class="create-account">
        <p>
            계정이 없으신가요 ?&nbsp; <a href="javascript:;" id="register-btn">
            계정 만들기 </a>
        </p>
    </div>
</form:form>

<form class="forget-form" action="index.html" method="post">
    <h3 class="form-title text-center">맥덕모드 인증 시스템</h3>
    <h4 class="text-center">패스워드 찾기</h4>
    <p>
        가입시 등록하신 이메일 주소를 입력해주세요.
    </p>
    <div class="form-group">
        <div class="input-icon">
            <i class="fa fa-envelope"></i>
            <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="이메일 주소를 입력하세요." name="email"/>
        </div>
    </div>
    <div class="form-actions">
        <button type="button" id="back-btn" class="btn">
            <i class="m-icon-swapleft"></i> Back </button>
        <button type="submit" class="btn blue pull-right">
            확인 <i class="m-icon-swapright m-icon-white"></i>
        </button>
    </div>
</form>

<form:form class="register-form" id="authentication" method="POST"
           action="/account/join" modelAttribute="account">
<h3 class="form-title text-center">맥덕모드 인증 시스템</h3>
<h4>회원 가입</h4>
<%--<p>
    가입 정보를 작성해 주십시오.
</p>--%>
<div class="form-group">
    <label class="control-label visible-ie8 visible-ie9">성명 입력</label>
    <div class="input-icon">
        <i class="fa fa-user"></i>
        <input class="form-control placeholder-no-fix" id="name" name="name" type="text" placeholder="성명을 입력하세요."/>
    </div>
</div>
<div class="form-group">
    <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
    <label class="control-label visible-ie8 visible-ie9">이메일 주소 입력</label>
    <div class="input-icon">
        <i class="fa fa-envelope"></i>
        <input class="form-control placeholder-no-fix" id="email" name="email" type="text" placeholder="이메일 주소를 입력하세요."/>
    </div>
</div>
<div class="form-group">
    <label class="control-label visible-ie8 visible-ie9">패스워드 입력</label>
    <div class="input-icon">
        <i class="fa fa-lock"></i>
        <input class="form-control placeholder-no-fix" id="password" name="password" type="password" autocomplete="off" placeholder="패스워드를 입력하세요."/>
    </div>
</div>
<div class="form-group">
    <label class="control-label visible-ie8 visible-ie9">패스워드 재 입력</label>
    <div class="controls">
        <div class="input-icon">
            <i class="fa fa-check"></i>
            <input class="form-control placeholder-no-fix" id="rePassword" name="rePassword" type="password" autocomplete="off" placeholder="패스워드를 다시 입력하세요."/>
        </div>
    </div>
</div>
<%--<div class="form-group">
    <label class="control-label visible-ie8 visible-ie9">Address</label>
    <div class="input-icon">
        <i class="fa fa-check"></i>
        <input class="form-control placeholder-no-fix" type="text" placeholder="Address" name="address"/>
    </div>
</div>--%>
<%--<div class="form-group">
    <label class="control-label visible-ie8 visible-ie9">City/Town</label>
    <div class="input-icon">
        <i class="fa fa-location-arrow"></i>
        <input class="form-control placeholder-no-fix" type="text" placeholder="City/Town" name="city"/>
    </div>
</div>--%>
<div class="form-group">
<label class="control-label visible-ie8 visible-ie9">country</label>
<select name="country" id="select2_sample4" class="select2 form-control">
<option value=""></option>
<option value="KR">대한민국(Korea, Republic of)</option>
<%--<option value="AL">Albania</option>
<option value="DZ">Algeria</option>
<option value="AS">American Samoa</option>
<option value="AD">Andorra</option>
<option value="AO">Angola</option>
<option value="AI">Anguilla</option>

<option value="AR">Argentina</option>
<option value="AM">Armenia</option>
<option value="AW">Aruba</option>
<option value="AU">Australia</option>
<option value="AT">Austria</option>
<option value="AZ">Azerbaijan</option>
<option value="BS">Bahamas</option>
<option value="BH">Bahrain</option>
<option value="BD">Bangladesh</option>
<option value="BB">Barbados</option>
<option value="BY">Belarus</option>
<option value="BE">Belgium</option>
<option value="BZ">Belize</option>
<option value="BJ">Benin</option>
<option value="BM">Bermuda</option>
<option value="BT">Bhutan</option>
<option value="BO">Bolivia</option>
<option value="BA">Bosnia and Herzegowina</option>
<option value="BW">Botswana</option>
<option value="BV">Bouvet Island</option>
<option value="BR">Brazil</option>
<option value="IO">British Indian Ocean Territory</option>
<option value="BN">Brunei Darussalam</option>
<option value="BG">Bulgaria</option>
<option value="BF">Burkina Faso</option>
<option value="BI">Burundi</option>
<option value="KH">Cambodia</option>
<option value="CM">Cameroon</option>
<option value="CA">Canada</option>
<option value="CV">Cape Verde</option>
<option value="KY">Cayman Islands</option>
<option value="CF">Central African Republic</option>
<option value="TD">Chad</option>
<option value="CL">Chile</option>
<option value="CN">China</option>
<option value="CX">Christmas Island</option>
<option value="CC">Cocos (Keeling) Islands</option>
<option value="CO">Colombia</option>
<option value="KM">Comoros</option>
<option value="CG">Congo</option>
<option value="CD">Congo, the Democratic Republic of the</option>
<option value="CK">Cook Islands</option>
<option value="CR">Costa Rica</option>
<option value="CI">Cote d'Ivoire</option>
<option value="HR">Croatia (Hrvatska)</option>
<option value="CU">Cuba</option>
<option value="CY">Cyprus</option>
<option value="CZ">Czech Republic</option>
<option value="DK">Denmark</option>
<option value="DJ">Djibouti</option>
<option value="DM">Dominica</option>
<option value="DO">Dominican Republic</option>
<option value="EC">Ecuador</option>
<option value="EG">Egypt</option>
<option value="SV">El Salvador</option>
<option value="GQ">Equatorial Guinea</option>
<option value="ER">Eritrea</option>
<option value="EE">Estonia</option>
<option value="ET">Ethiopia</option>
<option value="FK">Falkland Islands (Malvinas)</option>
<option value="FO">Faroe Islands</option>
<option value="FJ">Fiji</option>
<option value="FI">Finland</option>
<option value="FR">France</option>
<option value="GF">French Guiana</option>
<option value="PF">French Polynesia</option>
<option value="TF">French Southern Territories</option>
<option value="GA">Gabon</option>
<option value="GM">Gambia</option>
<option value="GE">Georgia</option>
<option value="DE">Germany</option>
<option value="GH">Ghana</option>
<option value="GI">Gibraltar</option>
<option value="GR">Greece</option>
<option value="GL">Greenland</option>
<option value="GD">Grenada</option>
<option value="GP">Guadeloupe</option>
<option value="GU">Guam</option>
<option value="GT">Guatemala</option>
<option value="GN">Guinea</option>
<option value="GW">Guinea-Bissau</option>
<option value="GY">Guyana</option>
<option value="HT">Haiti</option>
<option value="HM">Heard and Mc Donald Islands</option>
<option value="VA">Holy See (Vatican City State)</option>
<option value="HN">Honduras</option>
<option value="HK">Hong Kong</option>
<option value="HU">Hungary</option>
<option value="IS">Iceland</option>
<option value="IN">India</option>
<option value="ID">Indonesia</option>
<option value="IR">Iran (Islamic Republic of)</option>
<option value="IQ">Iraq</option>
<option value="IE">Ireland</option>
<option value="IL">Israel</option>
<option value="IT">Italy</option>
<option value="JM">Jamaica</option>
<option value="JP">Japan</option>
<option value="JO">Jordan</option>
<option value="KZ">Kazakhstan</option>
<option value="KE">Kenya</option>
<option value="KI">Kiribati</option>
<option value="KP">Korea, Democratic People's Republic of</option>
<option value="KR">Korea, Republic of</option>
<option value="KW">Kuwait</option>
<option value="KG">Kyrgyzstan</option>
<option value="LA">Lao People's Democratic Republic</option>
<option value="LV">Latvia</option>
<option value="LB">Lebanon</option>
<option value="LS">Lesotho</option>
<option value="LR">Liberia</option>
<option value="LY">Libyan Arab Jamahiriya</option>
<option value="LI">Liechtenstein</option>
<option value="LT">Lithuania</option>
<option value="LU">Luxembourg</option>
<option value="MO">Macau</option>
<option value="MK">Macedonia, The Former Yugoslav Republic of</option>
<option value="MG">Madagascar</option>
<option value="MW">Malawi</option>
<option value="MY">Malaysia</option>
<option value="MV">Maldives</option>
<option value="ML">Mali</option>
<option value="MT">Malta</option>
<option value="MH">Marshall Islands</option>
<option value="MQ">Martinique</option>
<option value="MR">Mauritania</option>
<option value="MU">Mauritius</option>
<option value="YT">Mayotte</option>
<option value="MX">Mexico</option>
<option value="FM">Micronesia, Federated States of</option>
<option value="MD">Moldova, Republic of</option>
<option value="MC">Monaco</option>
<option value="MN">Mongolia</option>
<option value="MS">Montserrat</option>
<option value="MA">Morocco</option>
<option value="MZ">Mozambique</option>
<option value="MM">Myanmar</option>
<option value="NA">Namibia</option>
<option value="NR">Nauru</option>
<option value="NP">Nepal</option>
<option value="NL">Netherlands</option>
<option value="AN">Netherlands Antilles</option>
<option value="NC">New Caledonia</option>
<option value="NZ">New Zealand</option>
<option value="NI">Nicaragua</option>
<option value="NE">Niger</option>
<option value="NG">Nigeria</option>
<option value="NU">Niue</option>
<option value="NF">Norfolk Island</option>
<option value="MP">Northern Mariana Islands</option>
<option value="NO">Norway</option>
<option value="OM">Oman</option>
<option value="PK">Pakistan</option>
<option value="PW">Palau</option>
<option value="PA">Panama</option>
<option value="PG">Papua New Guinea</option>
<option value="PY">Paraguay</option>
<option value="PE">Peru</option>
<option value="PH">Philippines</option>
<option value="PN">Pitcairn</option>
<option value="PL">Poland</option>
<option value="PT">Portugal</option>
<option value="PR">Puerto Rico</option>
<option value="QA">Qatar</option>
<option value="RE">Reunion</option>
<option value="RO">Romania</option>
<option value="RU">Russian Federation</option>
<option value="RW">Rwanda</option>
<option value="KN">Saint Kitts and Nevis</option>
<option value="LC">Saint LUCIA</option>
<option value="VC">Saint Vincent and the Grenadines</option>
<option value="WS">Samoa</option>
<option value="SM">San Marino</option>
<option value="ST">Sao Tome and Principe</option>
<option value="SA">Saudi Arabia</option>
<option value="SN">Senegal</option>
<option value="SC">Seychelles</option>
<option value="SL">Sierra Leone</option>
<option value="SG">Singapore</option>
<option value="SK">Slovakia (Slovak Republic)</option>
<option value="SI">Slovenia</option>
<option value="SB">Solomon Islands</option>
<option value="SO">Somalia</option>
<option value="ZA">South Africa</option>
<option value="GS">South Georgia and the South Sandwich Islands</option>
<option value="ES">Spain</option>
<option value="LK">Sri Lanka</option>
<option value="SH">St. Helena</option>
<option value="PM">St. Pierre and Miquelon</option>
<option value="SD">Sudan</option>
<option value="SR">Suriname</option>
<option value="SJ">Svalbard and Jan Mayen Islands</option>
<option value="SZ">Swaziland</option>
<option value="SE">Sweden</option>
<option value="CH">Switzerland</option>
<option value="SY">Syrian Arab Republic</option>
<option value="TW">Taiwan, Province of China</option>
<option value="TJ">Tajikistan</option>
<option value="TZ">Tanzania, United Republic of</option>
<option value="TH">Thailand</option>
<option value="TG">Togo</option>
<option value="TK">Tokelau</option>
<option value="TO">Tonga</option>
<option value="TT">Trinidad and Tobago</option>
<option value="TN">Tunisia</option>
<option value="TR">Turkey</option>
<option value="TM">Turkmenistan</option>
<option value="TC">Turks and Caicos Islands</option>
<option value="TV">Tuvalu</option>
<option value="UG">Uganda</option>
<option value="UA">Ukraine</option>
<option value="AE">United Arab Emirates</option>
<option value="GB">United Kingdom</option>
<option value="US">United States</option>
<option value="UM">United States Minor Outlying Islands</option>
<option value="UY">Uruguay</option>
<option value="UZ">Uzbekistan</option>
<option value="VU">Vanuatu</option>
<option value="VE">Venezuela</option>
<option value="VN">Viet Nam</option>
<option value="VG">Virgin Islands (British)</option>
<option value="VI">Virgin Islands (U.S.)</option>
<option value="WF">Wallis and Futuna Islands</option>
<option value="EH">Western Sahara</option>
<option value="YE">Yemen</option>
<option value="ZM">Zambia</option>
<option value="ZW">Zimbabwe</option>--%>
</select>
</div>
<%--<p>
    Enter your account details below:
</p>--%>
<%--<div class="form-group">
    <label class="control-label visible-ie8 visible-ie9">Username</label>
    <div class="input-icon">
        <i class="fa fa-user"></i>
        <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" name="username"/>
    </div>
</div>
<div class="form-group">
    <label class="control-label visible-ie8 visible-ie9">Password</label>
    <div class="input-icon">
        <i class="fa fa-lock"></i>
        <input class="form-control placeholder-no-fix" type="password" autocomplete="off" id="register_password" placeholder="Password" name="password"/>
    </div>
</div>
<div class="form-group">
    <label class="control-label visible-ie8 visible-ie9">Re-type Your Password</label>
    <div class="controls">
        <div class="input-icon">
            <i class="fa fa-check"></i>
            <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Re-type Your Password" name="rpassword"/>
        </div>
    </div>
</div>--%>
<div class="form-group">
    <label>
        <input type="checkbox" name="tnc"/> <a href="#">
        약관 </a>
        과 <a href="#">
        데이터 사용정책 </a>에 동의합니다.
    </label>
    <div id="register_tnc_error">
    </div>
</div>
<div class="form-actions">
    <button id="register-back-btn" type="button" class="btn">
        <i class="m-icon-swapleft"></i> Back </button>
    <button type="submit" id="register-submit-btn" class="btn blue pull-right">
        회원가입 <i class="m-icon-swapright m-icon-white"></i>
    </button>
</div>
</form:form>

<%--<div class="row login-container animated fadeInUp">
    <div class="col-md-7 col-md-offset-2 tiles white no-padding">
        <div class="p-t-30 p-l-40 p-b-20 xs-p-t-10 xs-p-l-10 xs-p-b-10">
            <h2 class="normal">브루덕 합류하기</h2>
            <p>페이스북, 다음, 네이버 회원이신가요?<br></p>
            <p class="p-b-20">별도의 입력없이 회원이 될 수 있습니다.</p>
            <c:if test="${loginError eq 'false'}">
                <h4 class="rs title-box fc-orange">${errorMessage}</h4>
            </c:if>
            <button type="button" class="btn btn-primary btn-cons" id="login_toggle">로그인</button> 아니면&nbsp;&nbsp;<button type="button" class="btn btn-info btn-cons" id="register_toggle">
            계정 생성</button>
        </div>
        <div class="tiles grey p-t-20 p-b-20 text-black">
            <form:form id="authentication" class="animated fadeIn" method="POST" action="/account/authentication" modelAttribute="account">
                <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="col-md-4 col-sm-4 ">
                        <input id="email" name="email" type="email" class="txt fill-width" placeholder="이메일 주소를 입력하세요." maxlength="40" />
                        <form:errors path="email" />
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <input id="password" name="password" type="password" class="txt fill-width" placeholder="패스워드를 입력하세요." maxlength="100" />
                        <form:errors path="password" />
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <button class="btn btn-primary btn-cons" type="submit">로그인</button>
                    </div>

                </div>
                <div class="row p-t-10 m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="control-group  col-md-10">
                        <div class="checkbox checkbox check-success">
                            <input type="checkbox" id="checkbox1" value="1">
                            <label for="checkbox1">로그인 상태 유지 </label>
                        </div>
                    </div>
                </div>
                <div class="row p-t-10 m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="control-group  col-md-10">
                        <div class="checkbox checkbox check-success"> <a href="#">로그인에 문제가 생기셨나요?</a>&nbsp;&nbsp;
                        </div>
                    </div>
                </div>
            </form:form>

            <form:form id="join" method="POST" action="/account/join" class="animated fadeIn" modelAttribute="account" style="display:none">
                <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="col-md-12">
                        <c:if test="${message != null}">
                            <h4 class="rs title-box fc-orange">${message}</h4>
                        </c:if>
                    </div>
                </div>
                <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="col-md-12">
                        <input id="name" name="name" class="txt fill-width" type="text" placeholder="성명을 입력하세요." maxlength="40" />
                        <form:errors path="name" />
                    </div>
                </div>
                <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="col-md-6 col-sm-6">
                        <input id="email" name="email" class="txt fill-width" type="email" placeholder="이메일 주소를 입력하세요." maxlength="100" />
                        <form:errors path="email" />
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <input id="reEmail" name="reEmail" class="txt fill-width" type="email" placeholder="이메일 주소를 다시 입력하세요." maxlength="100" />
                    </div>
                </div>
                <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="col-md-6 col-sm-6">
                        <input id="password" name="password" class="txt fill-width" type="password" placeholder="패스워드를 입력하세요." maxlength="20" />
                        <form:errors path="password" />
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <input id="rePassword" name="rePassword" class="txt fill-width" type="password" placeholder="패스워드를 다시 입력하세요." maxlength="20" />
                    </div>
                    <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                        <p >가입하기을 클릭하시면 <a href="#" class="fc-orange">약관</a>에 동의하며 <a href="#" class="fc-orange">쿠키 사용</a>을
                            포함한 </br><a href="#" class="fc-orange">데이터 사용 정책</a>을 숙지하신 것으로 간주됩니다.</p>
                        <p>
                            <button class="btn btn-red btn-submit" type="submit">합류하기</button>
                        </p>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>--%>

<content tag="local_script">
    <script>
        $(document).ready(function () {

            $("#email").focus();              //이름칸으로 포커스("#email").focus();              //이름칸으로 포커스

            if ($.cookie("myAppKey") != null) {
                //alert();
                // $("#j_username").val($.cookie("saveUserId"));
                //$("#checkSaveId").attr("checked", "checked");
            }
        });
    </script>
</content>
