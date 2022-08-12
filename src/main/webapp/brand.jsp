<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<input type="button" value="Add" id="add"><br>
<hr>
<table border="1" cellspacing="0" width="800">
    <tr>
        <th>No.</th>
        <th>Brand Name</th>
        <th>Company Name</th>
        <th>Ranking</th>
        <th>Description</th>
        <th>Status</th>
        <th>Action</th>

    </tr>


    <c:forEach items="${brands}" var="brand" varStatus="status">
        <tr align="center">
            <%--<td>${brand.id}</td>--%>
            <td>${status.count}</td>
            <td>${brand.brandName}</td>
            <td>${brand.companyName}</td>
            <td>${brand.ordered}</td>
            <td>${brand.description}</td>
            <c:if test="${brand.status == 1}">
                <td>Enable</td>
            </c:if>
            <c:if test="${brand.status != 1}">
                <td>Disabled</td>
            </c:if>

            <td><a href="/brand-demo/selectByIdServlet?id=${brand.id}">Update</a> <a href="/brand-demo/deleteByIdServlet?id=${brand.id}">Delete</a></td>
        </tr>

    </c:forEach>

</table>

<script>
document.getElementById("add").onclick=function (){
    location.href="/brand-demo/addBrand.jsp"
}
</script>

</body>
</html>