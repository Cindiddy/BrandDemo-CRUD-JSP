<%--
  Created by IntelliJ IDEA.
  User: yueqian
  Date: 8/11/22
  Time: 1:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Update Brand</title>
</head>
<body>
<h3>Update  Brand</h3>
<form action="/brand-demo/updateServlet" method="post">
<%-- hidden field, submit id--%>
    <input type="hidden" name="id" value="${brand.id}">
    Brand Name：<input name="brandName" value="${brand.brandName}"><br>
    Company Name：<input name="companyName" value="${brand.companyName}"><br>
    Ranking：<input name="ordered" value="${brand.ordered}"><br>
    Description：<textarea rows="5" cols="20" name="description" >${brand.description}</textarea><br>
    Status：

    <c:if test="${brand.status==0}">
        <input type="radio" name="status" value="0" checked>Disabled
        <input type="radio" name="status" value="1">Enabled<br>
    </c:if>

    <c:if test="${brand.status==1}">
        <input type="radio" name="status" value="0" >Disabled
        <input type="radio" name="status" value="1" checked>Enabled<br>
    </c:if>

    <input type="submit" value="Submit">
</form>
</body>
</html>
