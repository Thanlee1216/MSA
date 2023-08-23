<%--
  Created by IntelliJ IDEA.
  User: taehan
  Date: 2023-08-16
  Time: 오후 8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    id : <input type="text" id="email">
</div>
<div>
    pw : <input type="password" id="password">
</div>
<div>
    <input type="button" onclick="fnLogin()">
</div>

</body>
</html>
<script>
    function fnLogin() {
        let param = {
            "email" : $("#email").val()
            , "password" : $("#password").val()
        }
        commAjax.request(
            "/LOGINAPI/loginAct"
            , "POST"
            , param
            , function(data) {
                location.href="/index"
            }
        )
    }
</script>
