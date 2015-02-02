
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="row">
    <div class="col-lg-3">
        <ul class="nav navbar-nav navbar-left list-unstyled list-inline text-amber date-list">
            <li><i class="fontello-th text-amber"></i>
            </li>
            <li id="Date"></li>
        </ul>
        <ul class="nav navbar-nav navbar-left list-unstyled list-inline text-amber date-list">
            <li><i class="fontello-stopwatch text-amber"></i>
            </li>
            <li id="hours"></li>
            <li class="point">:</li>
            <li id="min"></li>
            <li class="point">:</li>
            <li id="sec"></li>
        </ul>


    </div>
    <div class="col-lg-6">
        <!--div style="margin-bottom:0;" class="alert text-white ">
            <button data-dismiss="alert" class="close" type="button">×</button>
            <span class="entypo-info-circled"></span>
            <strong>다시 돌아오셔서 반갑습니다!</strong>&nbsp;&nbsp;oo님, 당신의 마지막 로그인은 1일전입니다. 좋은 하루되세요!
        </div-->
    </div>

    <div class="col-lg-3">
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a data-toggle="dropdown" class="dropdown-toggle text-white" href="#">
                    <img alt="" class="admin-pic img-circle"
                         src="http://api.randomuser.me/portraits/thumb/men/23.jpg">Hi, 홍길동 님<b
                        class="caret"></b>
                </a>
                <ul style="margin:25px 15px 0 0;" role="menu"
                    class="dropdown-setting dropdown-menu bg-amber">
                    <li>
                        <a href="#">
                            <span class="entypo-user"></span>&nbsp;&nbsp;프로필 설정</a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="entypo-vcard"></span>&nbsp;&nbsp;계정 설정</a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="entypo-lifebuoy"></span>&nbsp;&nbsp;고객 센터</a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="entypo-lock"></span>&nbsp;&nbsp;로그 아웃</a>
                    </li>
                </ul>
            </li>

        </ul>
    </div>

</div>
