<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title><decorator:title /> | BREWDUCK - 맥주의 모든것</title>
    <%@ include file="/WEB-INF/views/common/include/expert_header.jsp" %>
</head>

<body >

<%@ include file="/WEB-INF/views/common/include/expert_top_menu.jsp" %>


<!-- BEGIN BASE-->
<div id="base">

<%@ include file="/WEB-INF/views/common/include/expert_left_menu.jsp" %>
<!-- BEGIN SIDEBAR-->

<!-- END SIDEBAR -->

<!-- BEGIN CONTENT-->
<div id="content">
    <decorator:body />
</div><!--end #content-->
<!-- END CONTENT -->

</div><!--end #base-->
<!-- END BASE -->

<!-- BEGIN JAVASCRIPT -->
<script src="/resources/expert/js/libs/jquery/jquery-1.11.0.min.js"></script>
<script src="/resources/expert/js/libs/jquery/jquery-migrate-1.2.1.min.js"></script>
<script src="/resources/expert/js/libs/jquery-ui/jquery-ui-1.10.3.custom.min.js"></script>
<script src="/resources/expert/js/core/BootstrapFixed.js"></script>
<script src="/resources/expert/js/libs/bootstrap/bootstrap.min.js"></script>
<script src="/resources/expert/js/libs/spin.js/spin.min.js"></script>
<script src="/resources/expert/js/libs/select2/select2.min.js"></script>
<script src="/resources/expert/js/libs/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
<script src="/resources/expert/js/libs/multi-select/jquery.multi-select.js"></script>
<script src="/resources/expert/js/libs/inputmask/jquery.inputmask.bundle.min.js"></script>
<script src="/resources/expert/js/libs/moment/moment.min.js"></script>
<script src="/resources/expert/js/libs/typeahead/typeahead.min.js"></script>
<script src="/resources/expert/js/libs/slimscroll/jquery.slimscroll.min.js"></script>
<script src="/resources/expert/js/libs/jquery-validation/dist/jquery.validate.min.js"></script>
<script src="/resources/expert/js/core/demo/DemoFormComponents.js"></script>
<script src="/resources/expert/js/libs/toastr/toastr.min.js"></script>


<script src="/resources/expert/js/core/App.js"></script>
<script src="/resources/expert/js/core/demo/Demo.js"></script>
<!-- END JAVASCRIPT -->
<script type="text/javascript">
    $(document).ready(function(){
        var nowUrl = location.pathname;

        $(".main-menu li a").each(function(){
            if( nowUrl.indexOf($(this).attr("href")) >= 0 ){
                if( $(this).parent("li").parent("ul").html() != "" ) {
                    $(this).addClass("active");
                    $(this).parent("li").parent("ul").parent("li").addClass("active expanded");
                }
            }
        });

    });
</script>
<decorator:getProperty property="page.local_script"></decorator:getProperty>

</body>
</html>