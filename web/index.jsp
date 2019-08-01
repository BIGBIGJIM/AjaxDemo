<%--
  Created by IntelliJ IDEA.
  User: Big-jim
  Date: 2019/7/10
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>login</title>
</head>
    <body>
        <form method="post" action="${pageContext.request.contextPath}/LoginServlet">
            用户名：<input id="name" type="text">
            密码：<input id="password" type="password">
            <input type="button" id="submit" value="提交">


            <script type="text/javascript" src="js/jquery.js"></script>
<%--            <script type="text/javascript" src="js/common.js"></script>--%>

<%--            <script>--%>
<%--                function sendMsg() {--%>
<%--                    var xhr = createXhr();--%>
<%--                    var host = document.location.host;--%>
<%--                    var pathName = document.location.pathname;--%>
<%--                    var projectName = pathName.substr(0,pathName.substr(1).indexOf("/")+1);--%>
<%--                    xhr.open("post","http://"+host+ "/"+ projectName +"/login","true");--%>
<%--                    xhr.onreadystatechange = function () {--%>
<%--                        if(xhr.readyState ==4 && xhr.status == 200){--%>
<%--                            var res = xhr.responseText;--%>
<%--                            alert(res);--%>
<%--                        }--%>
<%--                    }--%>
<%--                    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");--%>
<%--                    var uname = $("name").value;--%>
<%--                    var upwd = $("password").value;--%>
<%--                    var msg = "name=" + uname + "&password=" +upwd;--%>
<%--                    xhr.send(msg);--%>
<%--                }--%>
<%--            </script>--%>
            <script>
                alert(document.location.host);
                alert(document.location.pathname);
                $(function () {

                // })
                // $(document).ready(function () {
                    $("#submit").click(function () {
                        $.post("/ajaxdemo/login",{
                            name:$("#name").val(),
                            password:$("#password").val()
                        },
                        function (data) {
                            alert(data);
                        });
                    })
                });
            </script>
        </form>
    </body>
</html>
