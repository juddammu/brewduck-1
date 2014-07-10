<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<section>
<ol class="breadcrumb">
    <li><a href="http://localhost/CodeCovers/www.codecovers.com/boostbox">home</a></li>
    <li class="active">Profile</li>
</ol>
<div class="section-header">
    <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i> Profile <small>Welcome Daniel Johnson</small></h3>
</div>
<div class="section-body">
<div class="row">
<div class="col-lg-12">
<div class="box style-transparent">
<!-- START PROFILE TABS -->
<div class="box-head">
    <ul class="nav nav-tabs tabs-transparent" data-toggle="tabs">
        <li class="active"><a href="#overview"><i class="fa fa-inbox"></i> 요약</a></li>
        <li><a href="#editDetails"><i class="fa fa-edit"></i> 프로필 수정</a></li>
    </ul>
</div>
<!-- END PROFILE TABS -->

<div class="tab-content">
<!-- START PROFILE OVERVIEW -->
<div class="tab-pane active" id="overview">
    <div class="box-tiles style-white">
        <div class="row">
            <!-- START PROFILE SIDEBAR -->
            <div class="col-sm-3 style-inverse">
                <div class="holder">
                    <img class="img-rounded img-responsive" src="/resources/expert/img/img8.jpg?1401297311" alt="" />
                    <div class="stick-bottom-left">
                        <a class="btn btn-inverse btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Contact me"><i class="fa fa-envelope"></i></a>
                        <a class="btn btn-inverse btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Follow me"><i class="fa fa-twitter"></i></a>
                        <a class="btn btn-inverse btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Personal info"><i class="fa fa-facebook"></i></a>
                    </div>
                </div>
                <div class="box-body style-inverse">
                    <p class="text-support5-alt">
                        <span class="text-xl text-light">임 세환님</span><br/>
                        <span class="text-sm">beer master <span class="label label-default">12</span></span>
                    </p>
                </div>
                <div class="box-body-darken style-inverse">
                    <ul class="nav nav-pills nav-stacked nav-transparent">
                        <li><a href="#"><span class="badge pull-right">42</span>레시피</a></li>
                        <li><a href="#"><span class="badge pull-right">3</span>장비</a></li>
                        <li><a href="#"><span class="badge pull-right">6</span>Messages</a></li>
                    </ul>
                </div>
                <div class="box-body style-inverse">
                    <address class="text-support5-alt">
                        <strong>임 세환.</strong><br>
                        gangnam Brewing company
                    </address>
                    <address class="text-support5-alt">
                        <abbr title="Phone"><i class="fa fa-phone fa-fw"></i></abbr> (02) 000-0000<br>
                        <abbr title="Birthday"><i class="fa fa-gift fa-fw"></i></abbr> 8월 14일
                    </address>
                </div>
            </div><!--end .col-sm-3 -->
            <!-- END PROFILE SIDEBAR -->

            <!-- START PROFILE CONTENT -->
            <div class="col-sm-9">
                <div class="alert alert-warning">
                    <i class="fa fa-comments"></i> 확인하지 않은 댓글이 7개있습니다.
                    <a href="#" class="link-default">더 보기</a>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-sm-8">
                            <p class="lead">Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes.</p>
                            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>
                        </div>
                        <div class="col-sm-4">
                            <div class="pie-chart flot text-center">
                                <div class="chart size-3 v-inline-middle" data-title="Site visits" data-color="#FBEED5,#2E383D"></div>
                                <div class="legend v-inline-middle text-left"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">&nbsp;</div><!-- Extra row gap-->
                    <div class="row">
                        <div class="col-md-8">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Username</th>
                                        <th>Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                        <td>
                                            <button type="button" class="btn btn-xs btn-inverse btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Edit row"><i class="fa fa-pencil"></i></button>
                                            <button type="button" class="btn btn-xs btn-inverse btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Copy row"><i class="fa fa-copy"></i></button>
                                            <button type="button" class="btn btn-xs btn-inverse btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Delete row"><i class="fa fa-trash-o"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                        <td>
                                            <button type="button" class="btn btn-xs btn-inverse btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Edit row"><i class="fa fa-pencil"></i></button>
                                            <button type="button" class="btn btn-xs btn-inverse btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Copy row"><i class="fa fa-copy"></i></button>
                                            <button type="button" class="btn btn-xs btn-inverse btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Delete row"><i class="fa fa-trash-o"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                        <td>
                                            <button type="button" class="btn btn-xs btn-inverse btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Edit row"><i class="fa fa-pencil"></i></button>
                                            <button type="button" class="btn btn-xs btn-inverse btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Copy row"><i class="fa fa-copy"></i></button>
                                            <button type="button" class="btn btn-xs btn-inverse btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Delete row"><i class="fa fa-trash-o"></i></button>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div><!--end .table-responsive -->
                        </div><!--end .col-sm-8 -->
                        <div class="col-md-4">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <span class="badge">$ 300</span>
                                    Sales Today
                                </li>
                                <li class="list-group-item">
                                    <span class="badge">$ 2.100</span>
                                    Sales this week
                                </li>
                                <li class="list-group-item">
                                    <span class="badge">$ 198.000</span>
                                    Total sales
                                </li>
                            </ul>
                        </div><!--end .col-sm-4 -->
                    </div><!--end .row -->
                </div>
            </div><!--end .col-sm-9 -->
            <!-- END PROFILE CONTENT -->

        </div><!--end .row -->
    </div><!--end .box-body -->
</div><!--end .tab-pane -->
<!-- END PROFILE OVERVIEW -->

<!-- START PROFILE EDITOR -->
<div class="tab-pane" id="editDetails">
    <div class="box-body style-white">
        <div class="well">
            <span class="label label-success"><i class="fa fa-comment"></i></span>
            <span>Add a personal message here.</span>
        </div>
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <div class="col-lg-1 col-md-2 col-sm-3">
                    <label for="email1" class="control-label">Email</label>
                </div>
                <div class="col-lg-11 col-md-10 col-sm-9">
                    <input type="email" name="email1" id="email1" class="form-control" placeholder="Email">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <div class="col-lg-2 col-md-4 col-sm-6">
                            <label for="password1" class="control-label">Password</label>
                        </div>
                        <div class="col-lg-10 col-md-8 col-sm-6">
                            <input type="password" name="password1" id="password1" class="form-control" placeholder="Password">
                            <p class="help-block">Use Alphanumeric characters.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <div class="col-lg-2 col-md-4 col-sm-6">
                            <label for="repeatpassword1" class="control-label">Repeat</label>
                        </div>
                        <div class="col-lg-10 col-md-8 col-sm-6">
                            <input type="password" name="repeatpassword1" id="repeatpassword1" class="form-control" placeholder="Repeat password">
                            <p class="help-block">Retype your password.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-1 col-md-2 col-sm-3">
                    <label for="select1" class="control-label">Select</label>
                </div>
                <div class="col-lg-11 col-md-10 col-sm-9">
                    <select name="select1" id="select1" class="form-control">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                    <p class="help-block">This is supporting text for this field.</p>
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-1 col-md-2 col-sm-3">
                    <label for="textarea1" class="control-label">
                        Textarea
                        <small>Info about this field</small>
                    </label>
                </div>
                <div class="col-lg-11 col-md-10 col-sm-9">
                    <textarea name="textarea1" id="textarea1" class="form-control" rows="3" placeholder="Textarea"></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-1 col-md-2 col-sm-3">
                    <label class="control-label">
                        Checkboxes
                    </label>
                </div>
                <div class="col-lg-11 col-md-10 col-sm-9">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="cb1" > Check me out
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-footer col-lg-offset-1 col-md-offset-2 col-sm-offset-3">
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="submit" class="btn btn-default">Reset</button>
            </div>
        </form>
    </div><!--end .box-body -->
</div><!--end .tab-pane -->
<!-- END PROFILE EDITOR -->

</div><!--end .tab-content -->
</div><!--end .box -->
</div><!--end .col-lg-12 -->
</div><!--end .row -->
</div><!--end .section-body -->
</section>

<content tag="local_script">
    <script type = "text/javascript">

    </script>
</content>