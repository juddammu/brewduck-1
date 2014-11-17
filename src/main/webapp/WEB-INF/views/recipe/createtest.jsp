<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="row">
<div class="col-lg-12">
    <div class="box">
        <!-- /.box-header -->
        <div class="box-body">



            <form class="bs-example bs-example-form" role="form">
                <div class="row">
                    <div class="col-lg-12">
                        <input class="form-control input-lg" type="text" placeholder="레시피 이름">
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <div class="radio">
                                <label class="radio-inline btn-radio-primary-inverse active">
                                    <input type="radio" id="type" name="type" value="1" checked> 완전 곡물 - All Grain
                                </label>
                                <label class="radio-inline btn-radio-primary-inverse">
                                    <input type="radio" id="type" name="type" value="2"> 부분곡물 - Partial Mash
                                </label>
                                <label class="radio-inline btn-radio-primary-inverse">
                                    <input type="radio" id="type" name="type" value="3"> 원액 캔 - Extract
                                </label>
                            </div>
                        </div>

                    </div>
                    <!-- /.col-lg-6 -->
                </div>
                <!-- /.row -->
            </form>
            <div class="row">
                <div class="col-lg-5">
                    <select class="form-group select2-list" style="display: block;" id="styleSeq" name="styleSeq" data-placeholder="Select an item">
                        <optgroup label="1. LIGHT LAGER">
                            <option value="14">라이트 미국식 라거</option>
                            <option value="53">스탠다드 미국식 라거</option>
                            <option value="21">뮤닉 헬레스</option>
                            <option value="8">도르트문트 엑스포트</option>
                        </optgroup>
                        <optgroup label="2. PILSNER">
                            <option value="10">독일식 필스너</option>
                            <option value="40">보헤미안 필스너</option>
                            <option value="75">클래식 미국식 필스너</option>
                        </optgroup>
                        <optgroup label="3. EUROPEAN AMBER LAGER">
                            <option value="46">비엔나 라거</option>
                            <option value="65">옥토버페스트</option>
                        </optgroup>
                        <optgroup label="4. DARK LAGER">
                            <option value="7">다크 미국식 라거</option>
                            <option value="20">뮤닉 둔켈</option>
                            <option value="48">슈바르츠비어(흑맥주)</option>
                        </optgroup>
                        <optgroup label="5. BOCK">
                            <option value="18">마이복/헬레스복</option>
                            <option value="69">전통복</option>
                            <option value="9">도펠복</option>
                            <option value="60">아이스복</option>
                        </optgroup>
                        <optgroup label="6. LIGHT HYBRID BEER">
                            <option value="73">크림 에일</option>
                            <option value="44">블론드 에일</option>
                            <option value="71">쾰시</option>
                            <option value="23">미국식 밀/호밀 맥주</option>
                        </optgroup>
                        <optgroup label="7. AMBER HYBRID BEER">
                            <option value="41">북독일 알트비어</option>
                            <option value="70">캘리포니아 커먼 맥주</option>
                            <option value="12">뒤셀도르프 알트비어</option>
                        </optgroup>
                        <optgroup label="8. ENGLISH PALE ALE">
                            <option value="54">스탠다드/보통 비터</option>
                            <option value="57">스페셜/베스트/프리미엄 비터</option>
                            <option value="61">엑스트라 스페셜/스트롱 비터(영국식 페일에일)</option>
                        </optgroup>
                        <optgroup label="9. SCOTTISH AND IRISH ALE">
                            <option value="50">스카티쉬 라이트 60</option>
                            <option value="52">스카티쉬 헤비 70</option>
                            <option value="51">스카티쉬 엑스포트 80</option>
                            <option value="59">아이리쉬 레드 에일</option>
                            <option value="56">스트롱 스카치 에일</option>
                        </optgroup>
                        <optgroup label="10. AMERICAN ALE">
                            <option value="28">미국식 페일 에일</option>
                            <option value="27">미국식 앰버 에일</option>
                            <option value="25">미국식 브라운 에일</option>
                        </optgroup>
                        <optgroup label="11. ENGLISH BROWN ALE">
                            <option value="19">마일드</option>
                            <option value="6">남부 영국식 브라운</option>
                            <option value="42">북부 영국식 브라운 에일</option>
                        </optgroup>
                        <optgroup label="12. PORTER">
                            <option value="43">브라운 포터</option>
                            <option value="17">로버스트 포터</option>
                            <option value="31">발틱 포터</option>
                        </optgroup>
                        <optgroup label="13. STOUT">
                            <option value="13">드라이 스타우트</option>
                            <option value="49">스위트 스타우트</option>
                            <option value="64">오트밀 스타우트</option>
                            <option value="26">미국식 스타우트</option>
                            <option value="15">러시안 임페리얼 스타우트</option>
                        </optgroup>
                        <optgroup label="14. INDIA PALE ALE (IPA)">
                            <option value="62">영국식 IPA</option>
                            <option value="22">미국식 IPA</option>
                            <option value="68">임페리얼 IPA</option>
                        </optgroup>
                        <optgroup label="15. GERMAN WHEAT AND RYE BEER">
                            <option value="29">바이젠/바이스비어</option>
                            <option value="11">둔켈바이젠</option>
                            <option value="30">바이젠복</option>
                            <option value="16">로겐비어 (독일식 호밀 맥주)</option>
                        </optgroup>
                        <optgroup label="16. BELGIAN AND FRENCH ALE">
                            <option value="67">윗비어</option>
                            <option value="38">벨지안 페일에일</option>
                            <option value="47">세종</option>
                            <option value="45">비에르드갸르드</option>
                            <option value="39">벨지안/프렌치 에일</option>
                        </optgroup>
                        <optgroup label="17. SOUR ALE">
                            <option value="32">베를리너 바이세</option>
                            <option value="55">스트레이트(언블렌디드) 람빅</option>
                            <option value="3">괴즈</option>
                            <option value="1">과일 람빅</option>
                        </optgroup>
                        <optgroup label="18. BELGIAN STRONG ALE">
                            <option value="36">벨지안 블론드 에일</option>
                            <option value="35">벨지안 두벨</option>
                            <option value="37">벨지안 트리펠</option>
                            <option value="33">벨지안 골든 스트롱 에일</option>
                            <option value="34">벨지안 다크 스트롱 에일</option>
                        </optgroup>
                        <optgroup label="19. STRONG ALE">
                            <option value="66">올드에일</option>
                            <option value="63">영국식 발리와인</option>
                            <option value="24">미국식 발리와인</option>
                        </optgroup>
                        <optgroup label="20. FRUIT BEER">
                            <option value="2">과일맥주</option>
                        </optgroup>
                        <optgroup label="21. SPICE/HERB/VEGETABLE BEER">
                            <option value="72">크리스마스/겨울 스페셜티 향신료 맥주</option>
                        </optgroup>
                        <optgroup label="22. SMOKE-FLAVORED/WOOD-AGED BEER">
                            <option value="74">클래식 라우흐비어</option>
                            <option value="4">기타 훈제 맥주</option>
                            <option value="5">나무숙성 맥주</option>
                        </optgroup>
                        <optgroup label="23. SPECIALTY BEER">
                            <option value="58">스페셜 맥주</option>
                        </optgroup>
                    </select>
                    </br>
                    <a class="btn btn-app">
                        <span class="badge bg-aqua">PASS</span>
                        <i class="fa fa-flask"></i> OG / FG
                    </a>
                    <a class="btn btn-app">
                        <span class="badge bg-red">FAIL</span>
                        <i class="fa fontello-beer-1"></i> SRM
                    </a>
                    <a class="btn btn-app">
                        <span class="badge bg-aqua">PASS</span>
                        <i class="fa fontello-bell"></i> IBU
                    </a>
                    <a class="btn btn-app">
                        <span class="badge bg-red">FAIL</span>
                        <i class="fa fontello-beer"></i> ABV
                    </a>
                    <a class="btn btn-app">
                        <i class="fa  fa-book"></i> 가이드
                    </a>

                </div>
                <div class="col-sm-7 invoice-col">
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <th style="width:20%">OG:</th>
                                <td>1.048 ~ 1.056</td>
                            </tr>
                            <tr>
                                <th>FG:</th>
                                <td>1.048 ~ 1.056</td>
                            </tr>
                            <tr>
                                <th>SRM:</th>
                                <td>4 ~ 6</td>
                            </tr>
                            <tr>
                                <th>IBU:</th>
                                <td>4 ~ 6</td>
                            </tr>
                            <tr>
                                <th>ABV:</th>
                                <td>2.8 ~ 4.2</td>
                            </tr>
                        </table>
                    </div>
                </div>


            </div>
        </div>
        <!-- /.box-body -->
    </div>
       <!-- /.box -->
</div>
</div>

<div class="row">
<div class="col-lg-12">

<ul class="timeline">


<!-- timeline item -->
<li>
    <i class="fa fontello-sunrise bg-green"></i>

    <div class="timeline-item bg-white">
        <h3 style="padding: 15px 20px 0 20px;" class="timeline-header text-white  no-border">
            <span class="text-gray"><i class="fontello-doc"></i>&nbsp;&nbsp;신규 레시피</span>
            <span class="text-gray pull-right fontello-wrench-outline"></span>
        </h3>

        <div class="timeline-body ">
            <span>
                <strong>Post&nbsp;&nbsp;</strong>from<i> &nbsp;&nbsp;Jennifer Paijo</i>
                <small>25/6/2014</small>
            </span>

            <br>Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle quora plaxo ideeli hulu weebly balihoo...
        </div>
        <div class='timeline-footer'>
            <a class="btn bg-white btn-xs">View comment</a>
        </div>
    </div>
</li>
<!-- END timeline item -->


<!-- timeline item -->
<li>
    <i class="fa fontello-sun-1 bg-aqua"></i>

    <div class="timeline-item bg-aqua">
        <h3 style="padding: 15px 20px 0 20px;" class="timeline-header text-aqua  no-border">
            <span class="text-gray"><i class="fa fa-twitter"></i>&nbsp;&nbsp;My Tweet</span>
            <span class="text-white pull-right fontello-wrench-outline"></span>
        </h3>

        <div class="timeline-body">
                                        <span>
                                            <strong>Tweet&nbsp;&nbsp;</strong>from<i> &nbsp;&nbsp;Agus Anak Baik</i>
                                            <small>23/6/2014</small>
                                        </span>
            <br>Take me to your leader! Switzerland is small and neutral! We are more like Germany, ambitious and misunderstood!
        </div>
        <div class='timeline-footer'>
            <a class="btn bg-aqua btn-flat btn-xs">View comment</a>
        </div>
    </div>
</li>
<!-- END timeline item -->

<!-- timeline item -->
<li>
    <i class="fa fontello-cloud-sun-1 bg-red"></i>

    <div class="timeline-item bg-red">
        <h3 style="padding: 15px 20px 0 20px;" class="timeline-header text-red  no-border">
            <span class="text-gray"><i class="fontello-users-outline"></i>&nbsp;&nbsp;Friends List</span>
            <span class="text-white pull-right fontello-wrench-outline"></span>
        </h3>

        <div class="timeline-body">
                                        <span>
                                            <strong>New Frieds Added&nbsp;&nbsp;</strong>from<i> &nbsp;&nbsp;Bruce Wyne</i>
                                            <small>25/6/2014</small>
                                        </span>
            <br>
            <img src="http://api.randomuser.me/portraits/thumb/men/45.jpg" alt="..." class="img-circle">
            <img src="http://api.randomuser.me/portraits/thumb/women/46.jpg" alt="..." class="margin img-circle">
            <img src="http://api.randomuser.me/portraits/thumb/men/47.jpg" alt="..." class="margin img-circle">
            <img src="http://api.randomuser.me/portraits/thumb/women/48.jpg" alt="..." class="margin img-circle">
        </div>
    </div>
</li>
<!-- END timeline item -->

<!-- timeline item -->
<li>
    <i class="fa  fontello-rain-1 bg-orange"></i>

    <div class="timeline-item bg-orange">
        <h3 style="padding: 15px 20px 0 20px;" class="timeline-header text-orange  no-border">
            <span class="text-gray"><i class="fontello-news"></i>&nbsp;&nbsp;News Article</span>
            <span class="text-white pull-right fontello-wrench-outline"></span>
        </h3>

        <div class="timeline-body" style="padding:20px">
                                        <span>
                                            <strong>News&nbsp;&nbsp;</strong>from<i> &nbsp;&nbsp;Jennifer Paijo</i>
                                            <small>25/6/2014</small>
                                        </span>
            <br>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed rhoncus vitae neque eu mattis. Donec sit amet dui lorem. Vestibulum rhoncus mi non quam fringilla, ut rhoncus dolor pellentesque. Sed hendrerit augue sed elit fringilla euismod. Integer nec rhoncus nisl. Pellentesque vel commodo massa, a luctus ligula. Suspendisse mattis blandit dolor. Maecenas ac sollicitudin tellus, a scelerisque lectus. Ut in mi at justo suscipit pretium. Mauris eu ultrices nulla. Phasellus consequat erat odio, vitae dignissim ante fermentum nec.</p>


        </div>
        <div class='timeline-footer'>
            <a class="btn bg-white btn-xs">View comment</a>
        </div>
    </div>
</li>
<!-- END timeline item -->
<!-- timeline item -->
<li>
    <i class="fa fontello-moon-inv bg-blue"></i>

    <div class="timeline-item bg-blue">
        <h3 style="padding: 15px 20px 0 20px;" class="timeline-header text-blue  no-border">
            <span class="text-gray"><i class="fontello-doc-text"></i>&nbsp;&nbsp;Table Content</span>
            <span class="text-white pull-right fontello-wrench-outline"></span>
        </h3>

        <div class="timeline-body">
                                        <span>
                                            <strong>Table&nbsp;&nbsp;</strong>from<i> &nbsp;&nbsp;Jennifer Paijo</i>
                                            <small>25/6/2014</small>
                                        </span>
            <br>
            <table class="table table-bordered table-striped cf bg-amber">
                <thead class="cf">
                <tr>
                    <th>Code</th>
                    <th>Company</th>
                    <th class="numeric">Price</th>
                    <th class="numeric">Change</th>
                    <th class="numeric">Change %</th>
                    <th class="numeric">Open</th>
                    <th class="numeric">High</th>
                    <th class="numeric">Low</th>
                    <th class="numeric">Volume</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>AAC</td>
                    <td>AUSTRALIAN AGRICULTURAL COMPANY LIMITED.</td>
                    <td class="numeric">$1.38</td>
                    <td class="numeric">-0.01</td>
                    <td class="numeric">-0.36%</td>
                    <td class="numeric">$1.39</td>
                    <td class="numeric">$1.39</td>
                    <td class="numeric">$1.38</td>
                    <td class="numeric">9,395</td>
                </tr>
                <tr>
                    <td>AAD</td>
                    <td>ARDENT LEISURE GROUP</td>
                    <td class="numeric">$1.15</td>
                    <td class="numeric">+0.02</td>
                    <td class="numeric">1.32%</td>
                    <td class="numeric">$1.14</td>
                    <td class="numeric">$1.15</td>
                    <td class="numeric">$1.13</td>
                    <td class="numeric">56,431</td>
                </tr>
                <tr>
                    <td>AAX</td>
                    <td>AUSENCO LIMITED</td>
                    <td class="numeric">$4.00</td>
                    <td class="numeric">-0.04</td>
                    <td class="numeric">-0.99%</td>
                    <td class="numeric">$4.01</td>
                    <td class="numeric">$4.05</td>
                    <td class="numeric">$4.00</td>
                    <td class="numeric">90,641</td>
                </tr>
                <tr>
                    <td>ABC</td>
                    <td>ADELAIDE BRIGHTON LIMITED</td>
                    <td class="numeric">$3.00</td>
                    <td class="numeric">+0.06</td>
                    <td class="numeric">2.04%</td>
                    <td class="numeric">$2.98</td>
                    <td class="numeric">$3.00</td>
                    <td class="numeric">$2.96</td>
                    <td class="numeric">862,518</td>
                </tr>
                <tr>
                    <td>ABP</td>
                    <td>ABACUS PROPERTY GROUP</td>
                    <td class="numeric">$1.91</td>
                    <td class="numeric">0.00</td>
                    <td class="numeric">0.00%</td>
                    <td class="numeric">$1.92</td>
                    <td class="numeric">$1.93</td>
                    <td class="numeric">$1.90</td>
                    <td class="numeric">595,701</td>
                </tr>
                <tr>
                    <td>ABY</td>
                    <td>ADITYA BIRLA MINERALS LIMITED</td>
                    <td class="numeric">$0.77</td>
                    <td class="numeric">+0.02</td>
                    <td class="numeric">2.00%</td>
                    <td class="numeric">$0.76</td>
                    <td class="numeric">$0.77</td>
                    <td class="numeric">$0.76</td>
                    <td class="numeric">54,567</td>
                </tr>
                <tr>
                    <td>ACR</td>
                    <td>ACRUX LIMITED</td>
                    <td class="numeric">$3.71</td>
                    <td class="numeric">+0.01</td>
                    <td class="numeric">0.14%</td>
                    <td class="numeric">$3.70</td>
                    <td class="numeric">$3.72</td>
                    <td class="numeric">$3.68</td>
                    <td class="numeric">191,373</td>
                </tr>
                <tr>
                    <td>ADU</td>
                    <td>ADAMUS RESOURCES LIMITED</td>
                    <td class="numeric">$0.72</td>
                    <td class="numeric">0.00</td>
                    <td class="numeric">0.00%</td>
                    <td class="numeric">$0.73</td>
                    <td class="numeric">$0.74</td>
                    <td class="numeric">$0.72</td>
                    <td class="numeric">8,602,291</td>
                </tr>
                <tr>
                    <td>AGG</td>
                    <td>ANGLOGOLD ASHANTI LIMITED</td>
                    <td class="numeric">$7.81</td>
                    <td class="numeric">-0.22</td>
                    <td class="numeric">-2.74%</td>
                    <td class="numeric">$7.82</td>
                    <td class="numeric">$7.82</td>
                    <td class="numeric">$7.81</td>
                    <td class="numeric">148</td>
                </tr>
                <tr>
                    <td>AGK</td>
                    <td>AGL ENERGY LIMITED</td>
                    <td class="numeric">$13.82</td>
                    <td class="numeric">+0.02</td>
                    <td class="numeric">0.14%</td>
                    <td class="numeric">$13.83</td>
                    <td class="numeric">$13.83</td>
                    <td class="numeric">$13.67</td>
                    <td class="numeric">846,403</td>
                </tr>
                <tr>
                    <td>AGO</td>
                    <td>ATLAS IRON LIMITED</td>
                    <td class="numeric">$3.17</td>
                    <td class="numeric">-0.02</td>
                    <td class="numeric">-0.47%</td>
                    <td class="numeric">$3.11</td>
                    <td class="numeric">$3.22</td>
                    <td class="numeric">$3.10</td>
                    <td class="numeric">5,416,303</td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class='timeline-footer'>
            <a class="btn bg-white  btn-xs">View comment</a>
        </div>
    </div>
</li>
<!-- END timeline item -->

<li>
    <i class="fa  fontello-moon-inv bg-balck"></i>
</li>
</ul>
</div>
</div>


<content tag="local_script">
    <script type="text/javascript">
        $(document).ready(function() {

            $("#styleSeq").select2({
                placeholder: "Select a State",
                allowClear: true
            });

        });

        $(function(){
            $(".dropdown-menu li a").click(function(){

                $(".btn:first-child").text($(this).text());
                $(".btn:first-child").val($(this).text());

            });

        });
    </script>
</content>