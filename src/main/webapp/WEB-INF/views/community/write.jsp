<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<section>
<ol class="breadcrumb">
    <li><a href="/">홈</a></li>
    <li class="active">공지사항</li>
</ol>
<div class="section-header">
    <h3 class="text-standard"><i class="fa fa-fw fa-arrow-circle-right text-gray-light"></i> 글쓰기 <small>공지사항 글을 작성합니다.</small></h3>
</div>
<div class="section-body">
<div class="row">
    <div class="col-lg-12">
        <div class="box box-tiles style-gray">
            <!-- START BLOG POST HEADER -->
            <div class="row box-body-darken style-support1">
                <div class="col-sm-9">
                    <div class="box-body style-inverse">
                        <h2> <input id="nttSj" name="nttSj" type="text"  class="form-control" value=""></h2>
                        <div class="text-muted">Posted by <a href="#">Admin</a></div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="box-body">
                        <div class="hidden-xs">
                            <h3 class="text-light"><strong>15</strong> Jan</h3>
                            <a href="#">2 comments <i class="fa fa-comment-o"></i></a>
                            <div class="stick-top-right">
                                <a class="btn btn-support1 btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Contact me"><i class="fa fa-envelope"></i></a><br/>
                                <a class="btn btn-support1 btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Follow me"><i class="fa fa-twitter"></i></a><br/>
                                <a class="btn btn-support1 btn-equal" data-toggle="tooltip" data-placement="top" data-original-title="Personal info"><i class="fa fa-facebook"></i></a>
                            </div>
                        </div>
                        <div class="visible-xs">
                            <strong>15</strong> Jan <a href="#">2 comments <i class="fa fa-comment-o"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END BLOG POST HEADER -->

            <div class="row">
                <!-- START BLOG POST TEXT -->
                <div class="col-md-9">
                    <article class="style-white">
                        <div class="box-body">
                            <textarea id="ckeditor" name="nttCn" class="form-control control-12-rows" placeholder="Enter text ..." >
                                ${noticeView.contents}
                            </textarea>

                            <br/>
                            <div class="well clearfix">
                                <h4>About the author: Daniel Johnson</h4>
                                <img class="height-3 pull-right img-circle" src="/resources/expert/img/avatar1.jpg?1401297311" alt="" />
                                <p>Aliquam vehicula sem ut pede. Cras purus lectus, egestas eu, vehicula at, imperdiet sed, nibh. Morbi consectetuer luctus felis. Donec vitae nisi. Aliquam tincidunt feugiat elit. Duis sed elit ut turpis ullamcorper feugiat. Praesent pretium, mauris sed fermentum hendrerit.</p>
                            </div>
                        </div>
                    </article>
                </div>
                <!-- END BLOG POST TEXT -->

                <!-- START BLOG POST SIDEBAR -->
                <div class="col-md-3">
                    <div class="box-body">
                        <h3 class="text-light">Categories</h3>
                        <ul class="nav nav-pills nav-stacked nav-transparent">
                            <li><a href="#"><span class="badge pull-right">42</span>Design</a></li>
                            <li><a href="#"><span class="badge pull-right">32</span>Technology</a></li>
                            <li><a href="#"><span class="badge pull-right">12</span>Video</a></li>
                            <li><a href="#"><span class="badge pull-right">5</span>Music</a></li>
                            <li><a href="#"><span class="badge pull-right">28</span>Uncategorized</a></li>
                        </ul>
                        <h3 class="text-light">Tags</h3>
                        <div class="list-tags">
                            <a class="btn btn-xs btn-support1">Wordpress</a>
                            <a class="btn btn-xs btn-support1">Technology</a>
                            <a class="btn btn-xs btn-support1">HTML5</a>
                            <a class="btn btn-xs btn-support1">Illustrator</a>
                            <a class="btn btn-xs btn-support1">Music</a>
                            <a class="btn btn-xs btn-support1">CSS3</a>
                            <a class="btn btn-xs btn-support1">Video</a>
                            <a class="btn btn-xs btn-support1">Photoshop</a>
                            <a class="btn btn-xs btn-support1">jQuery</a>
                        </div>
                    </div>
                </div><!--end .col-md-3 -->
                <!-- END BLOG POST SIDEBAR -->

            </div><!--end .row -->
        </div><!--end .box -->
    </div><!--end .col-lg-12 -->
</div><!--end .row -->
<!-- START COMMENTS -->
<!-- END COMMENTS -->


</div><!--end .section-body -->
</section>


<content tag="local_script">
    <script src="/resources/expert/js/core/BootstrapFixed.js"></script>
    <script src="/resources/expert/js/libs/ckeditor/ckeditor.js"></script>
    <script src="/resources/expert/js/libs/ckeditor/adapters/jquery.js"></script>
    <script src="/resources/expert/js/core/demo/DemoFormEditors.js"></script>

    <script type = "text/javascript">

    </script>
</content>