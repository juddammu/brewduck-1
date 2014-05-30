<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="content">
    <div class="row">
        <div class="col-md-11">
            <div class="grid simple">
                <div class="grid-body no-border invoice-body">
                    <!--div class="pull-left"> <img src="/resources/assets/profile/picture/samadams.jpg" data-src="/resources/assets/profile/picture/samadams.jpg" data-src-retina="/resources/assets/profile/picture/samadams.jpg"
                                                 width="141" height="103" class="invoice-logo" alt="">
                        <address>
                            <strong>밝은 미국식 라거 - 부분곡물</strong><br>
                            4.9%ABV - 3.8%ABW<br>
                            30 IBU<br>
                            <abbr title="색상">SRM</abbr> 11 (A deep amber to golden)
                        </address>
                    </div-->
                    <div class="pull-left">
                        <%--<h1>보스턴 라거 클론</h1>--%>
                        <h1>보스턴 라거 클론</h1>
                        <button type="button" class="btn btn-warning btn-sm btn-small">1A. 라이트 미국식 라거</button>
                        <button type="button" class="btn btn-primary btn-sm btn-small">부분곡물</button>
                        <button type="button" class="btn btn-white btn-sm btn-small">4.9% ABV</button>
                    </div>

                    <div class="pull-right">
                        <br>
                        <address>
                            <strong> </strong><br>
                            795 Folsom Ave, Suite 600<br>
                            San Francisco, CA 94107<br>
                            <abbr title="Phone">P:</abbr> (123) 456-7890
                        </address>

                    </div>
                    <div class="clearfix"></div>
                    <br>
                    <div class="row">
                        <div class="col-md-9">
                            <blockquote  class="margin-top-20">
                                <p>사무엘 아담스 라거는 세션비어로 누구나 쉽게 먹을수 있게 디자인되어있다.</p>
                            </blockquote>
                        </div>
                    </div>
                </div>
                <br>
                <ul class="nav nav-tabs" id="tab-01">
                    <li class="active"><a href="#tab1hellowWorld">레시피 </a></li>
                    <li><a href="#tab1hellowWorld">브루잉 로그</a></li>
                    <li><a href="#tab1FollowUs">리뷰 <span class="badge badge-important">2</span></a></li>
                    <li><a href="#tab1Inspire">댓글 <span class="badge badge-important">4</span></a></li>
                </ul>

                <div class="grid-body no-border invoice-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <td colspan="4" class="text-left"><h4 class="semi-bold">발효재료</h4></td>
                            <td colspan="2" class="text-right"><h5 class="semi-bold">19리터</h5></td>
                        </tr>
                        <tr>
                            <th style="width:30px" class="unseen text-center">No</th>
                            <th class="text-left">발효재료</th>
                            <th style="width:120px" class="unseen text-center">수량</th>
                            <th style="width:160px" class="text-right">사용처</th>
                            <th style="width:70px" class="text-right">PPG</th>
                            <th style="width:70px" class="text-right">COLOR</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><strong> 1 </strong>  </td>
                            <td class="unseen text-left">Crystal (60L) 몰트</td>
                            <td><strong>450 g </strong>  &nbsp;&nbsp;&nbsp;&nbsp; 20 %</td>
                            <td class="text-right">Steep</td>
                            <td class="text-right">34</td>
                            <td class="text-right">20  °L</td>
                        </tr>
                        <tr>
                            <td><strong> 2 </strong>  </td>
                            <td class="unseen text-left">Briess Amber Liquid Extract</td>
                            <td><strong>1.5 kg </strong>  &nbsp;&nbsp;&nbsp; 40 %</td>
                            <td class="text-right">Boil</td>
                            <td class="text-right">34</td>
                            <td class="text-right">40  °L</td>
                        </tr>
                        <tr>
                            <td><strong> 3 </strong>  </td>
                            <td class="unseen text-left">Briess Golden Light Dry Extract</td>
                            <td><strong>1.5 kg </strong>  &nbsp;&nbsp;&nbsp; 40 %</td>
                            <td class="text-right">Boil</td>
                            <td class="text-right">34</td>
                            <td class="text-right">20  °L</td>
                        </tr>
                        </tbody>
                    </table>
                    <br>
                    <table class="table">
                        <thead>
                        <tr>
                            <td colspan="5" class="text-left"><h4 class="semi-bold">홉</h4></td>
                            <td colspan="2" class="text-right"><h5 class="semi-bold">60분</h5></td>
                        </tr>
                        <tr>
                            <th style="width:30px" class="unseen text-center">No</th>
                            <th class="text-left">이름</th>
                            <th style="width:120px" class="unseen text-center">수량</th>
                            <th style="width:160px" class="text-right">시간</th>
                            <th style="width:70px" class="text-right">사용처</th>
                            <th style="width:70px" class="text-right">형태</th>
                            <th style="width:70px" class="text-right">알파 값</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><strong> 1 </strong>  </td>
                            <td class="unseen text-left">Tettnang</td>
                            <td class="unseen text-center"><strong>1oz </strong></td>
                            <td class="text-right">60 분</td>
                            <td class="text-right">Boil</td>
                            <td class="text-right">펠렛</td>
                            <td class="text-right">12.0%</td>
                        </tr>
                        <tr>
                            <td><strong> 1 </strong>  </td>
                            <td class="unseen text-left">Hallertau</td>
                            <td class="unseen text-center"><strong>1oz </strong></td>
                            <td class="text-right">20 분</td>
                            <td class="text-right">Boil</td>
                            <td class="text-right">펠렛</td>
                            <td class="text-right">12.0%</td>
                        </tr>
                        <tr>
                            <td><strong> 1 </strong>  </td>
                            <td class="unseen text-left">Hallertau</td>
                            <td class="unseen text-center"><strong>1oz </strong></td>
                            <td class="text-right">10 분</td>
                            <td class="text-right">Boil</td>
                            <td class="text-right">펠렛</td>
                            <td class="text-right">12.0%</td>
                        </tr>
                        <tr>
                            <td><strong> 1 </strong>  </td>
                            <td class="unseen text-left">Hallertau</td>
                            <td class="unseen text-center"><strong>1oz </strong></td>
                            <td class="text-right">0 분</td>
                            <td class="text-right">Boil</td>
                            <td class="text-right">펠렛</td>
                            <td class="text-right">12.0%</td>
                        </tr>
                        </tbody>
                    </table>
                    <br>
                    <table class="table">
                        <thead>
                        <tr>
                            <td colspan="7" class="text-left"><h4 class="semi-bold">효모</h4></td>
                        </tr>
                        <tr>
                            <th style="width:30px" class="unseen text-center">No</th>
                            <th class="text-left">이름</th>
                            <th style="width:120px" class="unseen text-center">제조사</th>
                            <th style="width:160px" class="text-right">평균 발효도</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><strong> 1 </strong>  </td>
                            <td class="unseen text-left">2035</td>
                            <td class="unseen text-center"><strong>Wyeast </strong></td>
                            <td class="text-right">75%</td>
                        </tr>
                        </tbody>
                    </table>
                    <br><br>
                    <h5 class="text-right text-black">1차 발효 : 7일</h5>
                    <h5 class="text-right semi-bold text-black">2차 발효 : 14일</h5>
                    <br>
                    <br>
                </div>
            </div>
        </div>
        <div class="col-md-1">
            <div class="invoice-button-action-set">
                <p>
                    <button class="btn btn-primary" type="button"><i class="fa fa-print"></i></button>
                </p>
                <p>
                    <button class="btn " type="button"><i class="fa fa-cloud-download"></i></button>
                </p>
            </div>
        </div>
    </div>
</div>