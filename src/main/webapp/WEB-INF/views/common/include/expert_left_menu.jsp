<%@ page import="java.awt.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div id="tree-wrap">
<div class="side-bar">
<ul id="menu-showhide" class="topnav">
<li class="devider-title">
    <h3>
        <span><spring:message code="menu.ingredient"/></span>
    </h3>
</li>
<li>
    <a class="tooltip-tip" href="/style/" title="Dashboard">
        <i class="fontello-beer-1"></i>
        <span><spring:message code="menu.style"/></span>

    </a>
</li>
<li>
    <a class="tooltip-tip" href="/fermentable/" title="Dashboard">
        <i class="fa fa-lemon-o"></i>
        <span><spring:message code="menu.fermentable"/></span>

    </a>
</li>
<li>
    <a class="tooltip-tip" href="/hop/" title="Dashboard">
        <i class="fa fa-leaf"></i>
        <span><spring:message code="menu.hop"/><small class="side-menu-noft bg-aqua">HOT</small></span>

    </a>
</li>
<li>
    <a class="tooltip-tip" href="/yeast/" title="Dashboard">
        <i class=" fontello-beaker"></i>
        <span><spring:message code="menu.yeast"/></span>

    </a>
</li>
<li>
    <a class="tooltip-tip" href="/misc/" title="Dashboard">
        <i class="fa fa-flask"></i>
        <span><spring:message code="menu.extra"/></span>

    </a>
</li>

<li class="devider-horizontal"></li>
<li class="devider-title">
    <h3>
        <span><spring:message code="menu.recipe"/></span>
    </h3>
</li>
<li>
    <a class="tooltip-tip" href="#" title="Form">
        <i class="fontello-doc-1"></i>
        <span><spring:message code="menu.all.recipe"/></span>
    </a>
</li>
<li>
    <a class="tooltip-tip" href="#" title="Tables">
        <i class="fontello-pencil"></i>
        <span><spring:message code="menu.new.recipe"/></span>
    </a>
</li>
<li>
    <a class="tooltip-tip" href="/homebrew/myrecipes" title="Icons">
        <i class="fontello-user"></i>
        <span><spring:message code="menu.my.recipe"/></span>
        <div class="noft-blue bg-green" style="display: inline-block; float: none;">New</div>
    </a>
</li>
<li class="devider-horizontal"></li>
<li>
    <a class="tooltip-tip" href="#" title="Extra">
        <i class="fontello-calculator"></i>
        <span><spring:message code="menu.calculators"/></span>
    </a>
    <ul>
        <li>
            <a href="/calc/abv-calculator" title="Invoice"><spring:message code="menu.alcohol.calculators"/></a>
        </li>
        <li>
            <a href="/calc/color-converter" title="Pricing Table"><spring:message code="menu.color.converter"/></a>
        </li>
    </ul>
</li>

</ul>
<div class="side-dash">
    <h3>
        <span>진행중인 맥주들</span>
    </h3>
    <ul class="side-dashh-list">
        <li>
            <!-- Task item -->
            <a href="#">
                <h3 class="fontello-leaf">
                    좀비 더스트 클론
                    <small class="pull-right">35%</small>
                </h3>
                <div class="progress xs bg-opacity-one height-tiny">
                    <div class="progress-bar bg-blue " style="width: 35%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                        <span class="sr-only">35% Complete</span>
                    </div>
                </div>
            </a>
        </li>
        <!-- end task item -->
        <li>
            <!-- Task item -->
            <a href="#">
                <h3 class="fontello-box">
                    맥만동 공동양조
                    <small class="pull-right">40%</small>
                </h3>
                <div class="progress xs bg-opacity-one height-tiny">
                    <div class="progress-bar bg-aqua" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                        <span class="sr-only">40% Complete</span>
                    </div>
                </div>
            </a>
        </li>
        <!-- end task item -->
        <li>
            <!-- Task item -->
            <a href="#">
                <h3 class="fontello-headphones">
                    대회용 IPA
                    <small class="pull-right">60%</small>
                </h3>
                <div class="progress xs bg-opacity-one height-tiny">
                    <div class="progress-bar bg-red-orange" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                        <span class="sr-only">60% Complete</span>
                    </div>
                </div>
            </a>
        </li>
    </ul>
    <div id="doughnutChart" class="chart"></div>
</div>
</div>
</div>