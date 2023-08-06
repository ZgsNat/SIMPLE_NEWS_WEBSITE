<%-- 
    Document   : PostNews
    Created on : Mar 14, 2023, 1:11:51 AM
    Author     : ASUS
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="addNews">
            <form action="detailnews" method="post">
                <div class="text">Name:</div><input type="Text" name="name" required>
                <div class="text">Description:</div><input type="Text" name="desc">
                <div class="text">Detail:</div><input type="Text" name="detail" required>
                <div class="text">Image path:</div><input type="Text" name="image" required>
                <jsp:include page="/catogory"></jsp:include>
                <div class="catogory">
                    <c:forEach items="${data}" var="item">
                        <input type="checkbox" name="catogory" value="${item.getId()}"> ${item.getName()}<br>
                    </c:forEach>
                    </div>

                <input type="submit" Value="ADD">
                <a href="index.jsp" class="button">GO BACK</a>
            </form>
        </div>
    </body>
</html>
