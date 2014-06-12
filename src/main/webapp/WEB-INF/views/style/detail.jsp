<%--
  Created by IntelliJ IDEA.
  User: ChaJunYoung
  Date: 14. 6. 11
  Time: 오전 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="content">
    <div class="page-title"> <a href="/style/"><i class="icon-custom-left"></i></a>
        <h3>${StyleDetail.koreanName} - <span class="semi-bold">${StyleDetail.name}</span></h3>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <div class="grid simple ">
                <div class="grid-title">
                    <div class="row column-seperation">
                        <div class="col-md-6">
                            <div class="grid-title no-border">
<%--                                <h4>Style <span class="semi-bold">Overview</span></h4>--%>
                                <h4>스타일<span class="semi-bold"> 정보</span></h4 >
                            </div>
                            <div class="grid-body no-border">
                                <div class="row-fluid">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-4"><h5><span class="semi-bold">타입(TYPE)</span></h5><span  class="label label-info">${StyleDetail.type}</span></div>
                                            <div class="col-md-4"><h5><span class="semi-bold">초기비중(OG)</span></h5><span  class="label label-info">${StyleDetail.ogMin} ~ ${StyleDetail.ogMax}</span></div>
                                            <div class="col-md-4"><h5><span class="semi-bold">종료비중(FG)</span></h5><span  class="label label-info">${StyleDetail.fgMin} ~ ${StyleDetail.fgMax}</span></div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-4"><h5><span class="semi-bold">쓴맛(IBU)</span></h5><span  class="label label-info">${StyleDetail.ibuMin} ~ ${StyleDetail.ibuMax}</span></div>
                                            <div class="col-md-4"><h5><span class="semi-bold">색상(COLOR)</span></h5><span  class="label label-info">${StyleDetail.colorMin}°L  ~ ${StyleDetail.colorMax}°L</span></div>
                                            <div class="col-md-4"><h5><span class="semi-bold">도수(ABV)</span></h5><span  class="label label-info">${StyleDetail.abvMin}%  ~ ${StyleDetail.abvMax}%</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="grid-title no-border">
                                <%--<h4>Style <span class="semi-bold">Note</span></h4>--%>
                                <h4>스타일<span class="semi-bold"> 내용</span></h4 >
                            </div>
                            <div class="grid-body no-border">
                                <div class="row-fluid">
                                    <div class="col-md-12">
                                            <div class="grid-body no-border">
                                                <div class="row-fluid">
                                                    <div class="col-md-12">
                                                        <blockquote  class="margin-top-20">
                                                            <p> ${StyleDetail.notes}</p>
                                                        </blockquote>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <div class="row-fluid">
        <div class="span12">
            <div class="grid simple ">
                <div class="grid-title">
                    <div class="row column-seperation">
                        <div class="col-md-12">
                            <div class="row  column-seperation">
                                <div class="col-md-12">
                                    <div class="tiles alert">
                                        <textarea rows="3"  class="form-control user-status-box post-input"  placeholder="Whats on your mind?"></textarea>
                                    </div>
                                    <div class="tiles grey padding-10">
                                        <div class="pull-left">
                                            <button class="btn btn-default btn-sm btn-small" type="button"><i class="fa fa-camera"></i></button>
                                            <button class="btn btn-default btn-sm btn-small" type="button"><i class="fa fa-map-marker"></i></button>
                                        </div>
                                        <div class="pull-right">
                                            <button class="btn btn-primary btn-sm btn-small" type="button">POST</button>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="m-l-10 ">
                    <div class="tiles white ">
                        <div class="p-t-20 p-b-15 b-b b-grey">
                            <div class="post overlap-left-10">
                                <div class="user-profile-pic-wrapper">
                                    <div class="user-profile-pic-2x white-border">
                                        <img width="45" height="45" src="/resources/assets/img/profiles/avatar.jpg" data-src="/resources/assets/img/profiles/avatar.jpg" data-src-retina="/resources/assets/img/profiles/avatar2x.jpg" alt="">
                                    </div>
                                </div>
                                <div class="info-wrapper small-width inline">
                                    <div class="info text-black ">
                                        <p>"페일에일의 전형적인 홉으로 가장 기본적인 베이스 홉이다.” </p>
                                        <p class="muted small-text"> 2 분전</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <!--div class="inline pull-right">
                                    <div class="tiles text-white p-t-5 p-l-5 p-b-5 p-r-5 inline"> <i class="fa fa-heart-o fa-lg"></i> </div>
                                    <div class="tiles white p-t-5 p-l-5 p-b-5 p-r-5 inline"> <i class="fa fa-comment-o fa-lg"></i> </div>
                                </div-->
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="tiles grey p-t-5 p-b-5 ">
                        <p class="text-center"> <a href="javascript:;" class="text-black semi-bold  small-text">전체 보기</a></p>
                    </div>
                </div>

                <br/><br/>

                <div class="grid-body ">
                    <table class="table table-striped" id="example2" >
                        <thead>
                        <tr>
                            <th class="small-cell"> </th>
                            <th>이름</th>
                            <th>영문명</th>
                            <th>초기비중(OG)</th>
                            <th>종료비중(FG)</th>
                            <th>쓴맛(IBU)</th>
                            <th>색상(ABV)</th>
                        </tr>
                        </thead>
                        <tbody id="result" name="result">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


<content tag="local_script">
    <script>
        function loadAnimatedWidget_pure_white(){
            var icons = new Skycons({"color": "white"});
            icons.play();
        }

        function goDetail(seq, titleInUrl){
            location.href = "/style/"+seq+"/"+titleInUrl;
        }

        function search(){
            //   getLoadingTime();                                                   //로딩 아이콘 호출
            $("#result").html("");
            $("#result").load("/style/list", $("#searchForm").serialize());
            //getResult();
        }


        $(document).ready(function() {
            $('.slider-element').slider();  //슬라이더 초기화
            $('#popover').popover();
            $('.tip').tooltip();
            loadAnimatedWidget_pure_white();
            search();                          //조회
        });

    </script>
</content>
