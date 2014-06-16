<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!doctype html>
<html>
<head>
    <%@ include file="/WEB-INF/views/common/include/home_header.jsp" %>
</head>

<body>
<div class="page-box">
<div class="page-box-content">

<!-- 히든 탑 메뉴 시작 -->
<%@ include file="/WEB-INF/views/common/include/home_top_menu.jsp" %>
<!-- 히든 탑 메뉴 끝 -->

<decorator:body />



</div><!-- .page-box-content -->
</div><!-- .page-box -->

<footer id="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row sidebar">
                <aside class="col-xs-12 col-sm-6 col-md-3 widget social">
                    <div class="title-block">
                        <h3 class="title">Follow Us</h3>
                    </div>
                    <p>Follow us in social media</p>
                    <a class="sbtnf sbtnf-rounded color color-hover icon-facebook" href="#"></a>
                    <a class="sbtnf sbtnf-rounded color color-hover icon-twitter" href="#"></a>
                    <a class="sbtnf sbtnf-rounded color color-hover icon-gplus" href="#"></a>
                    <a class="sbtnf sbtnf-rounded color color-hover icon-linkedin" href="#"></a>
                    <div class="clearfix"></div>
                </aside>

                <aside class="col-xs-12 col-sm-6 col-md-3 widget newsletter">
                    <div class="title-block">
                        <h3 class="title">Newsletter Signup</h3>
                    </div>
                    <div>
                        <p>Sign up for newsletter</p>
                        <div class="clearfix"></div>
                        <form>
                            <input class="form-control" type="email">
                            <button class="submit"><span class="glyphicon glyphicon-arrow-right"></span></button>
                        </form>
                    </div>
                </aside><!-- .newsletter -->

                <aside class="col-xs-12 col-sm-6 col-md-3 widget links">
                    <div class="title-block">
                        <h3 class="title">Information</h3>
                    </div>
                    <nav>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms &amp; Condotions</a></li>
                            <li><a href="#">Secure payment</a></li>
                        </ul>
                    </nav>
                </aside>

                <aside class="col-xs-12 col-sm-6 col-md-3 widget links">
                    <div class="title-block">
                        <h3 class="title">My account</h3>
                    </div>
                    <nav>
                        <ul>
                            <li><a href="#">My account</a></li>
                            <li><a href="#">Order History</a></li>
                            <li><a href="#">Wish List</a></li>
                            <li><a href="#">Newsletter</a></li>
                        </ul>
                    </nav>
                </aside>
            </div>
        </div>
    </div><!-- .footer-top -->
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="copyright col-xs-12 col-sm-3 col-md-3">
                    Copyright © ItemBridge Inc., 2013
                </div>

                <div class="phone col-xs-6 col-sm-3 col-md-3">
                    <div class="footer-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
			  <path fill="#c6c6c6" d="M11.001,0H5C3.896,0,3,0.896,3,2c0,0.273,0,11.727,0,12c0,1.104,0.896,2,2,2h6c1.104,0,2-0.896,2-2
			   c0-0.273,0-11.727,0-12C13.001,0.896,12.105,0,11.001,0z M8,15c-0.552,0-1-0.447-1-1s0.448-1,1-1s1,0.447,1,1S8.553,15,8,15z
				M11.001,12H5V2h6V12z"></path>
			</svg>
                    </div>
                    <strong class="title">Call Us:</strong> +1 (877) 123-45-67 <br>
                    <strong>or</strong> +1 (777) 123-45-67
                </div>

                <div class="address col-xs-6 col-sm-3 col-md-3">
                    <div class="footer-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve">
			  <g>
                  <g>
                      <path fill="#c6c6c6" d="M8,16c-0.256,0-0.512-0.098-0.707-0.293C7.077,15.491,2,10.364,2,6c0-3.309,2.691-6,6-6
					c3.309,0,6,2.691,6,6c0,4.364-5.077,9.491-5.293,9.707C8.512,15.902,8.256,16,8,16z M8,2C5.795,2,4,3.794,4,6
					c0,2.496,2.459,5.799,4,7.536c1.541-1.737,4-5.04,4-7.536C12.001,3.794,10.206,2,8,2z"></path>
                  </g>
                  <g>
                      <circle fill="#c6c6c6" cx="8.001" cy="6" r="2"></circle>
                  </g>
              </g>
			</svg>
                    </div>
                    49 Archdale, 2B Charleston 5655, Excel Tower<br> OPG Rpad, 4538FH
                </div>

                <div class="col-xs-12 col-sm-3 col-md-3">
                    <a href="#" class="up">
                        <span class="glyphicon glyphicon-arrow-up"></span>
                    </a>
                </div>
            </div>
        </div>
    </div><!-- .footer-bottom -->
</footer>



<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/resources/asset/js/bootstrap.min.js"></script>
<script src="/resources/asset/js/price-regulator/jshashtable-2.1_src.js"></script>
<script src="/resources/asset/js/price-regulator/jquery.numberformatter-1.2.3.js"></script>
<script src="/resources/asset/js/price-regulator/tmpl.js"></script>
<script src="/resources/asset/js/price-regulator/jquery.dependClass-0.1.js"></script>
<script src="/resources/asset/js/price-regulator/draggable-0.1.js"></script>
<script src="/resources/asset/js/price-regulator/jquery.slider.js"></script>
<script src="/resources/asset/js/jquery.carouFredSel-6.2.1-packed.js"></script>
<script src="/resources/asset/js/jquery.touchSwipe.min.js"></script>
<script src="/resources/asset/js/jquery.elevateZoom-3.0.8.min.js"></script>
<script src="/resources/asset/js/jquery.imagesloaded.min.js"></script>
<script src="/resources/asset/js/jquery.appear.js"></script>
<script src="/resources/asset/js/jquery.sparkline.min.js"></script>
<script src="/resources/asset/js/jquery.easypiechart.min.js"></script>
<script src="/resources/asset/js/jquery.easing.1.3.js"></script>
<script src="/resources/asset/js/jquery.fancybox.pack.js"></script>
<script src="/resources/asset/js/isotope.pkgd.min.js"></script>
<script src="/resources/asset/js/jquery.knob.js"></script>
<script src="/resources/asset/js/jquery.stellar.min.js"></script>
<script src="/resources/asset/js/jquery.selectBox.min.js"></script>
<script src="/resources/asset/js/jquery.royalslider.min.js"></script>
<script src="/resources/asset/js/jquery.tubular.1.0.js"></script>
<script src="/resources/asset/js/country.js"></script>
<script src="/resources/asset/js/spin.min.js"></script>
<script src="/resources/asset/js/ladda.min.js"></script>
<script src="/resources/asset/js/masonry.pkgd.min.js"></script>
<script src="/resources/asset/js/morris.min.js"></script>
<script src="/resources/asset/js/raphael.min.js"></script>
<script src="/resources/asset/js/video.js"></script>
<script src="/resources/asset/js/pixastic.custom.js"></script>
<script src="/resources/asset/js/livicons-1.3.min.js"></script>
<script src="/resources/asset/js/layerslider/layerslider.transitions.js"></script>
<script src="/resources/asset/js/layerslider/layerslider.kreaturamedia.jquery.js"></script>
<script src="/resources/asset/js/revolution/jquery.themepunch.plugins.min.js"></script>
<script src="/resources/asset/js/revolution/jquery.themepunch.revolution.min.js"></script>
<script src="/resources/asset/js/main.js"></script>

<script src="/resources/asset/js/bootstrap-select.js"></script>

<decorator:getProperty property="page.local_script"></decorator:getProperty>

</body>
</html>