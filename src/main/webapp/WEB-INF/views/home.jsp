<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="page-content">
<div class="container">
<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                Widget settings form goes here
            </div>
            <div class="modal-footer">
                <button type="button" class="btn blue">Save changes</button>
                <button type="button" class="btn default" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<!-- BEGIN PAGE CONTENT INNER -->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN INLINE NOTIFICATIONS PORTLET-->
        <div class="portlet light">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-cogs"></i>추천 레시피
                </div>
            </div>
            <div class="portlet-body">
                <div class="row margin-bottom-40">
                    <!-- Pricing -->
                    <div class="col-md-3">
                        <div class="pricing hover-effect">
                            <div class="pricing-head">
                                <h3>PUNK IPA CLONE <span>
									인디아 페일 에일 </span>
                                </h3>
                                <h4>8<i>%</i>
											<span>
											ABV </span>
                                </h4>
                            </div>
                            <ul class="pricing-content list-unstyled">
                                <li>
                                    <i class="fa fa-tags"></i> 3 SRM
                                </li>
                                <li>
                                    <i class="fa fa-asterisk"></i> 17 IBU
                                </li>
                                <li>
                                    <i class="fa fa-heart"></i> 8% ABV
                                </li>
                                <li>
                                    <i class="fa fa-star"></i> 270 Cal
                                </li>
                            </ul>
                            <div class="pricing-footer">
                                <p>
                                    PUNK IPA 클론 레시피로 산뜻하게 먹을수 있는것이 특징이다.
                                </p>
                                <a href="javascript:;" class="btn yellow-crusta">
                                    레시피 보기 <i class="m-icon-swapright m-icon-white"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="pricing hover-effect">
                            <div class="pricing-head">
                                <h3>블랙펄의 저주 <span>
									임페리얼 스타우트 </span>
                                </h3>
                                <h4>8<i>%</i>
											<span>
											ABV </span>
                                </h4>
                            </div>
                            <ul class="pricing-content list-unstyled">
                                <li>
                                    <i class="fa fa-tags"></i> 3 SRM
                                </li>
                                <li>
                                    <i class="fa fa-asterisk"></i> 17 IBU
                                </li>
                                <li>
                                    <i class="fa fa-heart"></i> 8% ABV
                                </li>
                                <li>
                                    <i class="fa fa-star"></i> 270 Cal
                                </li>
                            </ul>
                            <div class="pricing-footer">
                                <p>
                                    PUNK IPA 클론 레시피로 산뜻하게 먹을수 있는것이 특징이다.
                                </p>
                                <a href="javascript:;" class="btn yellow-crusta">
                                    레시피 보기 <i class="m-icon-swapright m-icon-white"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="pricing hover-effect">
                            <div class="pricing-head">
                                <h3>토요일 라거 <span>
									미국식 밝은 라거 </span>
                                </h3>
                                <h4>8<i>%</i>
											<span>
											ABV </span>
                                </h4>
                            </div>
                            <ul class="pricing-content list-unstyled">
                                <li>
                                    <i class="fa fa-tags"></i> 3 SRM
                                </li>
                                <li>
                                    <i class="fa fa-asterisk"></i> 17 IBU
                                </li>
                                <li>
                                    <i class="fa fa-heart"></i> 8% ABV
                                </li>
                                <li>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </li>
                            </ul>
                            <div class="pricing-footer">
                                <p>
                                    PUNK IPA 클론 레시피로 산뜻하게 먹을수 있는것이 특징이다.
                                </p>
                                <a href="javascript:;" class="btn yellow-crusta">
                                    레시피 보기 <i class="m-icon-swapright m-icon-white"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="pricing hover-effect">
                            <div class="pricing-head">
                                <h3>PUNK IPA CLONE <span>
									인디아 페일 에일 </span>
                                </h3>
                                <h4>8<i>%</i>
											<span>
											ABV </span>
                                </h4>
                            </div>
                            <ul class="pricing-content list-unstyled">
                                <li>
                                    <i class="fa fa-tags"></i> 3 SRM
                                </li>
                                <li>
                                    <i class="fa fa-asterisk"></i> 17 IBU
                                </li>
                                <li>
                                    <i class="fa fa-heart"></i> 8% ABV
                                </li>
                                <li>
                                    <i class="fa fa-star"></i> 270 Cal
                                </li>
                            </ul>
                            <div class="pricing-footer">
                                <p>
                                    PUNK IPA 클론 레시피로 산뜻하게 먹을수 있는것이 특징이다.
                                </p>
                                <a href="javascript:;" class="btn yellow-crusta">
                                    레시피 보기 <i class="m-icon-swapright m-icon-white"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END INLINE NOTIFICATIONS PORTLET-->
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <!-- BEGIN INLINE NOTIFICATIONS PORTLET-->
        <div class="portlet light">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-cogs"></i>신규 레시피
                </div>
            </div>
            <div class="portlet-body">
                <div class="row margin-bottom-40">
                    <!-- Pricing -->
                    <div class="col-md-3">
                        <div class="pricing hover-effect">
                            <div class="pricing-head">
                                <h3>PUNK IPA CLONE <span>
									인디아 페일 에일 </span>
                                </h3>
                                <h4>8<i>%</i>
											<span>
											ABV </span>
                                </h4>
                            </div>
                            <ul class="pricing-content list-unstyled">
                                <li>
                                    <i class="fa fa-tags"></i> 3 SRM
                                </li>
                                <li>
                                    <i class="fa fa-asterisk"></i> 17 IBU
                                </li>
                                <li>
                                    <i class="fa fa-heart"></i> 8% ABV
                                </li>
                                <li>
                                    <i class="fa fa-star"></i> 270 Cal
                                </li>
                            </ul>
                            <div class="pricing-footer">
                                <p>
                                    PUNK IPA 클론 레시피로 산뜻하게 먹을수 있는것이 특징이다.
                                </p>
                                <a href="javascript:;" class="btn yellow-crusta">
                                    레시피 보기 <i class="m-icon-swapright m-icon-white"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="pricing hover-effect">
                            <div class="pricing-head">
                                <h3>블랙펄의 저주 <span>
									임페리얼 스타우트 </span>
                                </h3>
                                <h4>8<i>%</i>
											<span>
											ABV </span>
                                </h4>
                            </div>
                            <ul class="pricing-content list-unstyled">
                                <li>
                                    <i class="fa fa-tags"></i> 3 SRM
                                </li>
                                <li>
                                    <i class="fa fa-asterisk"></i> 17 IBU
                                </li>
                                <li>
                                    <i class="fa fa-heart"></i> 8% ABV
                                </li>
                                <li>
                                    <i class="fa fa-star"></i> 270 Cal
                                </li>
                            </ul>
                            <div class="pricing-footer">
                                <p>
                                    PUNK IPA 클론 레시피로 산뜻하게 먹을수 있는것이 특징이다.
                                </p>
                                <a href="javascript:;" class="btn yellow-crusta">
                                    레시피 보기 <i class="m-icon-swapright m-icon-white"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="pricing hover-effect">
                            <div class="pricing-head">
                                <h3>토요일 라거 <span>
									미국식 밝은 라거 </span>
                                </h3>
                                <h4>8<i>%</i>
											<span>
											ABV </span>
                                </h4>
                            </div>
                            <ul class="pricing-content list-unstyled">
                                <li>
                                    <i class="fa fa-tags"></i> 3 SRM
                                </li>
                                <li>
                                    <i class="fa fa-asterisk"></i> 17 IBU
                                </li>
                                <li>
                                    <i class="fa fa-heart"></i> 8% ABV
                                </li>
                                <li>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </li>
                            </ul>
                            <div class="pricing-footer">
                                <p>
                                    PUNK IPA 클론 레시피로 산뜻하게 먹을수 있는것이 특징이다.
                                </p>
                                <a href="javascript:;" class="btn yellow-crusta">
                                    레시피 보기 <i class="m-icon-swapright m-icon-white"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="pricing hover-effect">
                            <div class="pricing-head">
                                <h3>PUNK IPA CLONE <span>
									인디아 페일 에일 </span>
                                </h3>
                                <h4>8<i>%</i>
											<span>
											ABV </span>
                                </h4>
                            </div>
                            <ul class="pricing-content list-unstyled">
                                <li>
                                    <i class="fa fa-tags"></i> 3 SRM
                                </li>
                                <li>
                                    <i class="fa fa-asterisk"></i> 17 IBU
                                </li>
                                <li>
                                    <i class="fa fa-heart"></i> 8% ABV
                                </li>
                                <li>
                                    <i class="fa fa-star"></i> 270 Cal
                                </li>
                            </ul>
                            <div class="pricing-footer">
                                <p>
                                    PUNK IPA 클론 레시피로 산뜻하게 먹을수 있는것이 특징이다.
                                </p>
                                <a href="javascript:;" class="btn yellow-crusta">
                                    레시피 보기 <i class="m-icon-swapright m-icon-white"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END INLINE NOTIFICATIONS PORTLET-->
    </div>
</div>
<!-- END PAGE CONTENT INNER -->
</div>
<!-- BEGIN PAGE CONTENT -->
</div>