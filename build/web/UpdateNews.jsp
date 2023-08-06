<%-- 
    Document   : UpdateNews
    Created on : Mar 14, 2023, 6:21:46 AM
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

            .content{
                text-align: left;
                background-color: #374758;
                border: 2px solid #e6f0cf;
                padding: 20px;
                margin-top: 100px;
                margin-bottom: 100px;
                border-radius: 10px;
                color: white;
                width: 70%;
                margin-left: auto;
                margin-right: auto;
            }
            .center {
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 100%;
                border-radius: 10px;
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
            .InputUP{
                width: 100%;
                padding: 10px;
                margin-top: 20px;
                margin-bottom: 20px;
            }
            .InputUPdesc{
                width: 100%;
                padding: 10px;
                margin-top: 20px;
                margin-bottom: 20px;
            }
            .InputUPdetail{
                width: 100%;
                padding: 10px;
                margin-top: 20px;
                margin-bottom: 20px;
                height: 1000px;
                overflow-y: scroll;
                color: black;
            }
            .UPDATE{
                background-color: greenyellow;
                padding: 10px;
                color: white;
                border-radius: 10px;
                margin: 10px 0 10px 0;
                margin-left: auto;
                margin-right:auto;
                border: 2px solid white;
                width: 30%;
                height: 50px;
            }
            .detail{
                padding: 10px;
                border: 2px solid white;
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp"%>
        <c:catch var="ThisNews">
            <form action="updatenews" method="post">
                <div class="content">
                    <image src="${ThisNews.getImagepath()}" class="center">
                    <div >
                        <input class="InputUP" type="text" name="image" value="${ThisNews.getImagepath()}" required>
                    </div>
                    <div class="smallauthoranddate">
                        <div ><input class="InputUP" type="text" name="username" value="${ThisNews.getUser_author()}" required></div>
                        <div ><input class="InputUP" type="date" name="date" value="${ThisNews.getDate()}" required></div>
                    </div>
                    <jsp:include page="/catogory?ID_News=${ThisNews.getId()}"></jsp:include>
                    <c:forEach items="${dataCato}" var="itemCato">
                        <div class="Cato"> ${itemCato.getName()}</div>
                    </c:forEach>
                    <div><input class="InputUP" type="text" name="name" value="${ThisNews.getName()}" required></div>
                    <div><input class="InputUPdesc" type="text" name="desc" value="${ThisNews.getDesc()}"></div>
                    <div><p class="detail">${ThisNews.getDetail()}</p></div>
                    <input type="hidden" name="IdNews" value="${ThisNews.getId()}">
                    <input type="submit" class="UPDATE" value="UPDATE">
                    <!--<button class="button"><a href="Login.jsp">DOC TIEP</a></button>-->
                </div>  
            </form>

        </c:catch>
        <%@include file="Footer.jsp"%>

    </body>
</html>