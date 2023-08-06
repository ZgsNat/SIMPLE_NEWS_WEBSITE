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
                border-radius: 10px;
            }
            .content{
                text-align: left;
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
                margin-bottom: 50px;
                margin-top: 50px;
                border: 2px solid #ffff80;
                border-radius: 10px;
                padding: 50px;
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
            <jsp:include page="/detailnews"></jsp:include>

            <c:catch var="ThisNews">
                <div class="content">
                    <image src="${ThisNews.getImagepath()}" class="center">
                    <div class="smallauthoranddate">
                        <div class="author">${ThisNews.getUser_author()}</div>
                        <div class="date">${ThisNews.getDate()}</div>
                    </div>
                    <jsp:include page="/catogory?ID_News=${ThisNews.getId()}"></jsp:include>
                    <c:forEach items="${dataCato}" var="itemCato">
                        <div class="Cato"> ${itemCato.getName()}</div>
                    </c:forEach>
                    <h1>${ThisNews.getName()}</h1>
                    <h2>${ThisNews.getDesc()}</h2>
                    <p class="detail">
                        ${ThisNews.getDetail()}
                    </p>
                    <!--<button class="button"><a href="Login.jsp">DOC TIEP</a></button>-->
                </div>    
            </c:catch>

        </div>
    </body>
</html>