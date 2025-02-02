<%--
  Created by IntelliJ IDEA.
  User: 涛声依旧
  Date: 2019/12/18
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章修改</title>
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
<body onload="getArticle()">
<div class="container">
<%--   标题--%>
    <div class="row">
        <div class="col-md-12">
            <h1>帖子信息</h1>
        </div>
    </div>
<%--    显示表格数据--%>
    <div class="row"></div>
    <div class="col-md-12">
        <table class="table table-hover" id="article_table">
            <thead>
            <tr>
                <th>序号</th>
                <th>id</th>
                <th>标题</th>
                <th>发帖时间</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
<%--            <tr>--%>
<%--                <th>0</th>--%>
<%--                <th>15</th>--%>
<%--                <th>论述当前政府与政治</th>--%>
<%--                <th>hello1721</th>--%>
<%--                <th>2019-12-23</th>--%>
<%--                <th>--%>
<%--                    <button class="btn btn-primary btn-sm">--%>
<%--                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>编辑--%>
<%--                    </button>--%>
<%--                    <button class="btn btn-danger btn-sm">--%>
<%--                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>删除--%>
<%--                    </button>--%>
<%--                </th>--%>
<%--            </tr>--%>
            </tbody>
        </table>
    </div>
<%--    显示分页数据--%>
    <div class="row">
<%--        分页文字信息--%>
        <div class="col-md-6"></div>
<%--        分页条信息--%>
<%--    <div class="col-md-6">--%>
<%--        <nav aria-label="Page navigation">--%>
<%--            <ul class="pagination">--%>
<%--                <li><a href="#">首页</a></li>--%>
<%--                <li>--%>
<%--                    <a href="#" aria-label="Previous">--%>
<%--                        <span aria-hidden="true">&laquo;</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li><a href="#">1</a></li>--%>
<%--                <li><a href="#">2</a></li>--%>
<%--                <li><a href="#">3</a></li>--%>
<%--                <li><a href="#">4</a></li>--%>
<%--                <li><a href="#">5</a></li>--%>
<%--                <li>--%>
<%--                    <a href="#" aria-label="Next">--%>
<%--                        <span aria-hidden="true">&raquo;</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li><a href="#">末页</a></li>--%>
<%--            </ul>--%>
<%--        </nav>--%>
<%--    </div>--%>
    </div>
</div>
<script>
//文章展示
function getArticle() {
var userid="121306"
$.ajax({
url:"${APP_PATH}/getArticle",
data:{mainerid:userid},
type:"GET",
success: function (result) {
var s=result.extend.main;
var a=1;
$.each(s,function (index,item) {
    // var num=0;
    var numTd=$("<td></td>").append(index+1);            // 序号显示在表格
    //           num++;
              var Maindate=timestampToTime(item.mMaindate);
              // var titleTd=$("<td></td>").append(item.)         获取数据库帖子的标题
    var contentTd=$("<td></td>").append(item.mContent);
    var mainidTd=$("<td></td>").append(item.mMainid);
    var maineridTd=$("<td></td>").append(item.mMainerid);
    var maindateTd=$("<td></td>").append(Maindate);
    var editBtn=$("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
        .append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
        .append("编辑");
    var deleteBtn=$("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
        .append($("<span></span>").addClass("glyphicon glyphicon-trash"))
        .append("删除");
    $("<tr></tr>").append(numTd).append(mainidTd).append(contentTd)
       .append(maindateTd).append(editBtn).append(deleteBtn)
        .appendTo("#article_table tbody");

});
}
});

}
//自增序号
// function next_id(){
//     var current_id = 0;
//     return function (){
//         return ++current_id;
//     }
// }
//时间格式
function timestampToTime(timestamp) {
    var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
    Y = date.getFullYear() + '/';
    M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '/';
    D = date.getDate() + ' ';
    h = date.getHours() + ':';
    m = date.getMinutes() + ':';
    s = date.getSeconds();
    return Y+M+D+h+m+s;
}

//编辑按钮实现
    $(document).on("click",".edit_btn",function () {
                // alert("1111")
      window.location.href="${APP_PATH}/self";

});
//删除按钮实现
$(document).on("click",".delete_btn",function () {
    // alert("1111")
    window.location.href="${APP_PATH}/view";

});

</script>
</body>
</html>
