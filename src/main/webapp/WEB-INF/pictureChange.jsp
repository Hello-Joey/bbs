<%--
  Created by IntelliJ IDEA.
  User: 涛声依旧
  Date: 2019/12/18
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更换头像</title>
    <%
        //这个的路径是以斜线开始的，不以斜线结束
        pageContext.setAttribute("APP_PATH",request.getContextPath());
    %>
    <!--引入jquery-->
    <script
            src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>
    <%--    <script src="${APP_PATH}/statics/js/jquery.ajaxfileupload.js"></script>--%>
    <!--引入样式-->
    <link href="${APP_PATH}/statics/css/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
    <script src="${APP_PATH}/statics/css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<script>
<%--//上传图片--%>
<%--function upload() {--%>
<%--    var filename = $("#file").val();--%>
<%--    var userid = "${USER_SESSION.userid}";--%>
<%--    $.ajaxFileUpload({--%>
<%--        url : "${APP_PATH}/fileUpload.action",--%>
<%--        fileElementId : 'file', //文件上传空间的id属性--%>
<%--        type : 'post',--%>
<%--        data:{"userid":userid,"image":filename},--%>
<%--        dataType : 'json', //返回值类型--%>
<%--        success:function(data){--%>
<%--            console.log(data);--%>
<%--            alert("头像更新成功");--%>
<%--        }--%>
<%--    });--%>
<%--    window.location.reload();--%>
<%--}--%>
</script>
</body>
</html>
