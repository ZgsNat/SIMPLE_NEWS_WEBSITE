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
            /*            .DescNew{
                            background-color: #374758;
                            border-right: 10px;
                            border: 2px solid #e6f0cf;
                            padding: 20px;
                            margin-top: 100px;
                            margin-bottom: 100px;
                            border-radius: 10px;
                        }
            
                        .DescNew h1{
                            color: White;
                            font-size: 30px;
                            text-align: center;
                            padding: 50px;
                        }
                        .DescNew a{
                            text-decoration: none;
                            background-color: #809fff;
                            padding: 5px;
                            border-radius: 10px;
                            display: inline-block;
                            margin: 10px;
                            color: white;
                        }*/
            .center {
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 100%;
                height: 20%;
                border-radius: 10px;
            }
            .content{
                text-align: center;
                background-color: #374758;
                border: 2px solid #e6f0cf;
                padding: 20px;
                margin-top: 100px;
                margin-bottom: 100px;
                border-radius: 10px;
                color: white;

            }
            .smallauthoranddate{
                display: block;
                margin-bottom: 10px;
                margin-top: 10px;
                font-size: 15px;
            }
            .content h1{
                font-size: 40px;
                font-weight: bold;
                margin-bottom: 10px;
                margin-top: 10px;
            }
            .content h2{
                font-size: 15px;
                margin-bottom: 10px;
                margin-top: 10px;
            }
            .button{
                width: 20%;
                margin-top: 20px;
                font-weight: bold;
                padding: 20px;
                background-color: #809fff;
                border-radius: 10px;
            }
            .Cato{
                display: inline-block;
                background-color: #809fff; 
                padding: 5px;
                border-radius: 10px;
                margin: 10px;
            }
            /*doriopwop */
        </style>
    </head>
    <body>
        <div class="container">
            <jsp:include page="/news"></jsp:include>

            <c:forEach items="${dataNews}" var="item">
                <div class="content">
                    <image src="${item.getImagepath()}" class="center">
                    <div class="smallauthoranddate">
                        <div class="author">${item.getUser_author()}</div>
                        <div class="date">${item.getDate()}</div>
                    </div>
                    <jsp:include page="/catogory?ID_News=${item.getId()}"></jsp:include>
                    <c:forEach items="${dataCato}" var="itemCato">
                        <div class="Cato"> ${itemCato.getName()}</div>
                    </c:forEach>
                    <h1>${item.getName()}</h1>
                    <h2>${item.getDesc()}</h2>
                    <button class="button"><a href="?IdNews=${item.getId()}&Relativetopic=1">DOC TIEP</a></button>
                </div>    
            </c:forEach>

        </div>
    </body>
</html>
