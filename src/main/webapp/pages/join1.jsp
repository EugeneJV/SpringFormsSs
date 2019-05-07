<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 5
  Date: 4/12/2019
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%--language="java"--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>join</title>
</head>
<body>

        <%--@elvariable id="carModel" type="antlr"--%>
        <sf:form action="/save/car/user" method="post" modelAttribute="carModel">
            <sf:input path="model"/>
            <sf:select path="user">
                <c:forEach items="${users}" var="user">
                    <sf:option value="${user.id}">
                        ${user.name}
                    </sf:option>
                </c:forEach>
            </sf:select>
            <input type="submit">
        </sf:form>
    <div></div>

</body>
</html>
