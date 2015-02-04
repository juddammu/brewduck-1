<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- BEGIN PAGE HEAD -->
<div class="page-head">
    <div class="container-fluid">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h1>홈브루 포트폴리오
                <small>Homebrew Portfolio</small>
            </h1>
        </div>
        <!-- END PAGE TITLE -->
    </div>
</div>


<!-- BEGIN PAGE CONTENT -->
<div class="page-content">
<div class="container-fluid">


<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

<!-- END PAGE BREADCRUMB -->
<!-- BEGIN PAGE CONTENT INNER -->
<div class="row margin-top-10">
<div class="col-md-12">
<!-- BEGIN PROFILE SIDEBAR -->
<div class="profile-sidebar" style="width: 250px;">
    <!-- PORTLET MAIN -->
    <div class="portlet light profile-sidebar-portlet">
        <!-- SIDEBAR USERPIC -->
        <div class="profile-userpic">
            <img src="/resources/assets/admin/pages/media/profile/profile_user.jpg" class="img-responsive" alt="">
        </div>
        <!-- END SIDEBAR USERPIC -->
        <!-- SIDEBAR USER TITLE -->
        <div class="profile-usertitle">
            <div class="profile-usertitle-name">
                홍 길동
            </div>
            <div class="profile-usertitle-job">
                계급 : 오리알
            </div>
        </div>
        <!-- END SIDEBAR USER TITLE -->
        <!-- SIDEBAR BUTTONS -->
        <div class="profile-userbuttons">
            <button type="button" class="btn btn-circle green-haze btn-sm">스토킹</button>
            <button type="button" class="btn btn-circle btn-danger btn-sm">메시지</button>
        </div>
        <!-- END SIDEBAR BUTTONS -->
        <!-- SIDEBAR MENU -->
        <div class="profile-usermenu">
            <ul class="nav">
                <li>
                    <a href="/homebrew/">
                        <i class="icon-home"></i>
                        대시보드 </a>
                </li>
                <li class="active">
                    <a href="#">
                        <i class="icon-settings"></i>
                        계정설정 </a>
                </li>
                <li>
                    <a href="#" target="_blank">
                        <i class="icon-check"></i>
                        레시피 </a>
                </li>
                <li>
                    <a href="#">
                        <i class="icon-info"></i>
                        질문답변 게시판 </a>
                </li>
            </ul>
        </div>
        <!-- END MENU -->
    </div>
    <!-- END PORTLET MAIN -->
    <!-- PORTLET MAIN -->
    <div class="portlet light">
        <!-- STAT -->
        <div class="row list-separated profile-stat">
            <div class="col-md-4 col-sm-4 col-xs-6">
                <div class="uppercase profile-stat-title">
                    37
                </div>
                <div class="uppercase profile-stat-text">
                    레시피
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-6">
                <div class="uppercase profile-stat-title">
                    51
                </div>
                <div class="uppercase profile-stat-text">
                    작업
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-6">
                <div class="uppercase profile-stat-title">
                    61
                </div>
                <div class="uppercase profile-stat-text">
                    포인트
                </div>
            </div>
        </div>
        <!-- END STAT -->
        <div>
            <h4 class="profile-desc-title">홍 길동</h4>
            <span class="profile-desc-text"> 대한민국 홈브루어 </span>
            <div class="margin-top-20 profile-desc-link">
                <i class="fa fa-facebook"></i>
                <a href="http://www.facebook.com/hukoru/">페이스북</a>
            </div>
        </div>
    </div>
    <!-- END PORTLET MAIN -->
</div>
<!-- END BEGIN PROFILE SIDEBAR -->
<!-- BEGIN PROFILE CONTENT -->
<!-- BEGIN PROFILE CONTENT -->
<div class="profile-content">
    <div class="row">
        <div class="col-md-12">
            <div class="portlet light">
                <div class="portlet-title tabbable-line">
                    <div class="caption caption-md">
                        <i class="icon-globe theme-font hide"></i>
                        <span class="caption-subject font-blue-madison bold uppercase">Profile Account</span>
                    </div>
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#tab_1_1" data-toggle="tab">Personal Info</a>
                        </li>
                        <li>
                            <a href="#tab_1_2" data-toggle="tab">Change Avatar</a>
                        </li>
                        <li>
                            <a href="#tab_1_3" data-toggle="tab">Change Password</a>
                        </li>
                        <li>
                            <a href="#tab_1_4" data-toggle="tab">Privacy Settings</a>
                        </li>
                    </ul>
                </div>
                <div class="portlet-body">
                    <div class="tab-content">
                        <!-- PERSONAL INFO TAB -->
                        <div class="tab-pane active" id="tab_1_1">
                            <form role="form" action="#">
                                <div class="form-group">
                                    <label class="control-label">First Name</label>
                                    <input type="text" placeholder="John" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Last Name</label>
                                    <input type="text" placeholder="Doe" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Mobile Number</label>
                                    <input type="text" placeholder="+1 646 580 DEMO (6284)" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Interests</label>
                                    <input type="text" placeholder="Design, Web etc." class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Occupation</label>
                                    <input type="text" placeholder="Web Developer" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">About</label>
                                    <textarea class="form-control" rows="3" placeholder="We are KeenThemes!!!"></textarea>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Website Url</label>
                                    <input type="text" placeholder="http://www.mywebsite.com" class="form-control"/>
                                </div>
                                <div class="margiv-top-10">
                                    <a href="#" class="btn green-haze">
                                        Save Changes </a>
                                    <a href="#" class="btn default">
                                        Cancel </a>
                                </div>
                            </form>
                        </div>
                        <!-- END PERSONAL INFO TAB -->
                        <!-- CHANGE AVATAR TAB -->
                        <div class="tab-pane" id="tab_1_2">
                            <p>
                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                            </p>
                            <form action="#" role="form">
                                <div class="form-group">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                            <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt=""/>
                                        </div>
                                        <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;">
                                        </div>
                                        <div>
																<span class="btn default btn-file">
																<span class="fileinput-new">
																Select image </span>
																<span class="fileinput-exists">
																Change </span>
																<input type="file" name="...">
																</span>
                                            <a href="#" class="btn default fileinput-exists" data-dismiss="fileinput">
                                                Remove </a>
                                        </div>
                                    </div>
                                    <div class="clearfix margin-top-10">
                                        <span class="label label-danger">NOTE! </span>
                                        <span>Attached image thumbnail is supported in Latest Firefox, Chrome, Opera, Safari and Internet Explorer 10 only </span>
                                    </div>
                                </div>
                                <div class="margin-top-10">
                                    <a href="#" class="btn green-haze">
                                        Submit </a>
                                    <a href="#" class="btn default">
                                        Cancel </a>
                                </div>
                            </form>
                        </div>
                        <!-- END CHANGE AVATAR TAB -->
                        <!-- CHANGE PASSWORD TAB -->
                        <div class="tab-pane" id="tab_1_3">
                            <form action="#">
                                <div class="form-group">
                                    <label class="control-label">Current Password</label>
                                    <input type="password" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">New Password</label>
                                    <input type="password" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Re-type New Password</label>
                                    <input type="password" class="form-control"/>
                                </div>
                                <div class="margin-top-10">
                                    <a href="#" class="btn green-haze">
                                        Change Password </a>
                                    <a href="#" class="btn default">
                                        Cancel </a>
                                </div>
                            </form>
                        </div>
                        <!-- END CHANGE PASSWORD TAB -->
                        <!-- PRIVACY SETTINGS TAB -->
                        <div class="tab-pane" id="tab_1_4">
                            <form action="#">
                                <table class="table table-light table-hover">
                                    <tr>
                                        <td>
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus..
                                        </td>
                                        <td>
                                            <label class="uniform-inline">
                                                <input type="radio" name="optionsRadios1" value="option1"/>
                                                Yes </label>
                                            <label class="uniform-inline">
                                                <input type="radio" name="optionsRadios1" value="option2" checked/>
                                                No </label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Enim eiusmod high life accusamus terry richardson ad squid wolf moon
                                        </td>
                                        <td>
                                            <label class="uniform-inline">
                                                <input type="checkbox" value=""/> Yes </label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Enim eiusmod high life accusamus terry richardson ad squid wolf moon
                                        </td>
                                        <td>
                                            <label class="uniform-inline">
                                                <input type="checkbox" value=""/> Yes </label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Enim eiusmod high life accusamus terry richardson ad squid wolf moon
                                        </td>
                                        <td>
                                            <label class="uniform-inline">
                                                <input type="checkbox" value=""/> Yes </label>
                                        </td>
                                    </tr>
                                </table>
                                <!--end profile-settings-->
                                <div class="margin-top-10">
                                    <a href="#" class="btn green-haze">
                                        Save Changes </a>
                                    <a href="#" class="btn default">
                                        Cancel </a>
                                </div>
                            </form>
                        </div>
                        <!-- END PRIVACY SETTINGS TAB -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END PROFILE CONTENT -->

</div>
</div>
<!-- END PAGE CONTENT INNER -->
</div>
</div>
<!-- END PAGE CONTENT -->


<!-- #/paper bg -->
<content tag="local_script">
    <link href="/resources/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/admin/pages/css/profile.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/assets/admin/pages/css/tasks.css" rel="stylesheet" type="text/css"/>

    <script src="/resources/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js" type="text/javascript"></script>
    <script src="/resources/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
    <script src="/resources/assets/admin/pages/scripts/profile.js" type="text/javascript"></script>
    <script>
        jQuery(document).ready(function() {
            // initiate layout and plugins
            Profile.init(); // init page demo
        });
    </script>
</content>
