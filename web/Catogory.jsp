<%-- 
    Document   : Catogory
    Created on : Mar 12, 2023, 4:16:49 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .catogory{
                background-color: #374758;
                border-right: 10px;
                border: 2px solid #e6f0cf;
                padding: 20px;
                margin-top: 100px;
                margin-bottom: 100px;
                border-radius: 10px;
            }
            
            .catogory h1{
                color: White;
                font-size: 30px;
                text-align: center;
                padding: 50px;
            }
            .catogory a{
                text-decoration: none;
                background-color: #809fff;
                padding: 5px;
                border-radius: 10px;
                display: inline-block;
                margin: 10px;
                color: white;
            }
            
        </style>
    </head>
    <body>
        <div class="catogory">
            <jsp:include page="/catogory"></jsp:include>
            <h1>Category</h1>
        <c:forEach items="${data}" var="item">

            <a href="?idCato=${item.getId()}">${item.getName()}</a>

        </c:forEach>
        </div>
        
    </body>
</html>
