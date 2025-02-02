<%--
  Created by IntelliJ IDEA.
  User: 涛声依旧
  Date: 2019/12/18
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
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
    <script>
        function getPass() {
            var userid="121306";
            $.ajax({
                url: "${APP_PATH}/getPassword",
                data:{userid:userid},
                type: "GET",
                success: function (result) {
                    var s = result.extend.paw;
                    $.each(s, function (index, item) {
                        $("#oldPassword").val(item.uPassword);
                    });
                }
            });
        }
    </script>
</head>
<body onload="getPass()">
<div style="text-align: center;">
                                      <div class="form-group">
                        <label for="oldPassword" class="col-sm-2 control-label">原密码</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="oldPassword" placeholder="Password" readonly>
                        </div>
                    </div>
    <div class="form-group">
        <label for="newPassword" class="col-sm-2 control-label">新密码</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="newPassword" placeholder="Password">
        </div>
    </div>
                    <div class="form-group">
                        <label for="makeSure_input" class="col-sm-2 control-label">确认密码</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="makeSure_input" placeholder="Password" onblur="validate_save_form()">
                        </div>
                    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="self_save_btn">保存</button>
    </div>
</div>
<script>
    $("#self_save_btn").click(function () {
        //先进行数据校验
       if(!validate_save_form()) return false;
        /**  获取密码修改后信息  **/
        var password=$("#makeSure_input").val();
        var userid="121306";
        $.ajax({
            url:"${APP_PATH}/selfPass?userid="+userid+"&password="+password,
            type:"POST",
            success: function (result) {
                if (result =="") {
                    alert("修改密码成功！");
                }
                 else {
                    alert("修改密码失败！");
                 }
            }




        });


    });
    //校验数据
    function validate_save_form() {
        var password=$("#oldPassword").val();
        var password1 = $("#newPassword").val();
        var password2 = $("#makeSure_input").val();
       if(password1=="" ||password2==""){
           alert("密码不可为空！！")
           return false;
       }
      else  if (password1 != password2) {
            alert("密码不一致！！")
            return false;
        }
        else if(password==password1){
            alert("原密码与新密码相同！！")
            return false;
        }
        else return true;
    }
</script>
</body>
</html>
