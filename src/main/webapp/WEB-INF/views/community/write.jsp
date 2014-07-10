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
                            <textarea id="nttCn" name="nttCn"  placeholder="내용 입력..." class="form-control" rows="10" style="width:auto; height:400px;"></textarea>
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

<!-- START LEAVE COMMENT -->
<div class="row">
    <div class="col-md-9">
        <h4>Leave a comment</h4>
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <div class="col-md-2">
                    <label for="name" class="control-label">Name</label>
                </div>
                <div class="col-md-10">
                    <input type="email" id="name" class="form-control control-width-normal" placeholder="Name">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <label for="email" class="control-label">Email</label>
                </div>
                <div class="col-md-10">
                    <input type="text" id="email" class="form-control control-width-normal" placeholder="Email">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <label for="website" class="control-label">Website</label>
                </div>
                <div class="col-md-10">
                    <input type="text" id="website" class="form-control control-width-normal" placeholder="Website">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <label for="textarea1" class="control-label">Comment</label>
                </div>
                <div class="col-md-10">
                    <textarea name="textarea1" id="textarea1" class="form-control" rows="6" placeholder="Leave a comment"></textarea>
                </div>
            </div>
            <div class="form-footer col-md-offset-2">
                <button type="submit" class="btn btn-primary">Post comment</button>
            </div>
        </form>
    </div><!--end .col-md-9 -->
</div><!--end .row -->
<!-- END LEAVE COMMENT -->

</div><!--end .section-body -->
</section>

<section id="main" class="page">
    <header class="page-header">
        <div class="container">
            <h3>게시글 작성 - POST ON</h3>
        </div>
    </header>
    <div class="container">
        <script type="text/javascript" src="/resources/asset/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
        <div class="row">
            <div class="content search-result list col-sm-12 col-md-12">
                <form:form id="board" name="board"  method="POST" action="/board/writeBoardArticle" modelAttribute="board" >
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-3 ">
                                    <h6>제목 <span class="required">*</span></h6>
                                </div>
                                <div class="col-md-9">
                                    <input id="nttSj" name="nttSj" type="text"  class="form-control" value="">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <h6>내용 <span class="required">*</span></h6>
                                </div>
                                <div class="col-md-9">

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <h6>첨부파일</h6>
                                </div>
                                <div class="form-group col-md-9">
                                    <input name="file" type="file" multiple />
                                    <p class="help-block">Example block-level help text here.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions">
                        <div class="pull-right">
                            <button type="button" id ="create" class="btn btn-danger"  onclick="fn_egov_regist_notice()"><i class="icon-ok"></i> 등록 </button>
                            <button type="button" id = "list" class="btn btn-primary"> 목록 </button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>

<content tag="local_script">
    <script type = "text/javascript">
        var oEditors = [];
        nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "nttCn",
        sSkinURI: "/resources/asset/smarteditor/SmartEditor2Skin.html",
        fCreator: "createSEditor2"
        });

        function fn_egov_regist_notice() {

            oEditors.getById["nttCn"].exec("UPDATE_CONTENTS_FIELD", []);

            try {
                alert("게시물을 등록 하시겠습니까?");
                document.board.action = "<c:url value='/board/writeBoardArticle'/>";
                document.board.submit();
            } catch(e) {}
        }

        function goList(){
            location.href = "/board/freeBoard";
        }


        $(document).ready(function() {

            $("#nttSj").focus();              //제목칸 포커스
            //document.getElementById("loading").style.display="none"; //로딩 아이콘 숨김

        });

        $("#list").click(function(){
            goList();
        });
    </script>
</content>