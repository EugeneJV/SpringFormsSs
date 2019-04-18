<%@ taglib prefix="sm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 5
  Date: 4/8/2019
  Time: 10:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

        <sm:form action="save/user" method="post" modelAttribute="userModel">
            <sf:input path="name"/>
            <sf:errors path="name"/>
            <input type="submit">
        </sm:form>

        <sm:form action="save/car" method="post" modelAttribute="carModel">
            <sf:input path="model"/>
            <input type="submit">
        </sm:form>

        <%--<form action="/save/user" method="post">--%>
        <%--<input type="text" name="name" placeholder="name">--%>
        <%--<input type="submit">--%>
        <%--</form>--%>

        <%--<form action="/save/car" method="post">--%>
        <%--<input type="text" name="model" placeholder="model">--%>
        <%--<input type="submit">--%>
        <%--</form>--%>

</body>
</html>
