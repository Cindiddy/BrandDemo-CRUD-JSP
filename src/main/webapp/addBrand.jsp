<%--
  Created by IntelliJ IDEA.
  User: yueqian
  Date: 8/11/22
  Time: 1:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Brand</title>
</head>
<body>
<h3>Add Brand</h3>
<form action="/brand-demo/addServlet" method="post">
    Brand Name：<input name="brandName"><br>
    Company Name：<input name="companyName"><br>
    Ranking：<input name="ordered"><br>
    Description：<textarea rows="5" cols="20" name="description"></textarea><br>
    Status：
    <input type="radio" name="status" value="0">Disabled
    <input type="radio" name="status" value="1">Enabled<br>

    <input type="submit" value="Submit">
</form>
</body>
</html>
