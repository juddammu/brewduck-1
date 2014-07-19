<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>FileUploader Callback</title>
</head>
<body>
<script type="text/javascript">
    // alert("callback");
    // document.domain 설정
    var oParameter = {callback_func:"${callback_func}",sFileName : "${filename}",sFileURL : "http://localhost:8080/web/resources/uploadimages/${filename}",bNewLine : true }; // query array

    try { document.domain = "http://*.naver.com"; } catch(e) {}

    // execute callback script
    var sUrl = document.location.search.substr(1);
    if (sUrl != "blank") {
        var oParameter = {}; // query array

        sUrl.replace(/([^=]+)=([^&]*)(&|$)/g, function(){
            oParameter[arguments[1]] = arguments[2];
            return "";
        });

        if ((oParameter.errstr || '').length) { // on error
            (parent.jindo.FileUploader._oCallback[oParameter.callback_func+'_error'])(oParameter);
        } else {
            (parent.jindo.FileUploader._oCallback[oParameter.callback_func+'_success'])(oParameter);
        }
    }
</script>
</body>
</html>