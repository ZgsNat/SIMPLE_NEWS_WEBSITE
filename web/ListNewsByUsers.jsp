<%-- 
    Document   : ListNewsByUsers
    Created on : Mar 14, 2023, 4:00:21 AM
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

            .currnetnews{
                background-color: #374758;
                border: 2px solid #e6f0cf;
                padding: 20px;
                margin-top: 5%;
                margin-bottom: 100px;
                border-radius: 10px;
                width: 70%;
                margin-left: auto;
                margin-right: auto;
            }
            .tableTop td:first-child{
                width: 20%;
                border: 2px solid #ffff99;
                
            }

            .currnetnews h1{
                color: White;
                font-size: 30px;
                text-align: center;
                padding: 50px;
            }

            .center{
                width: 100%;
                height: 100%;
            }

            .tableTop td{
                color: white;
                text-align: center;
                padding: 5px;
                margin: 10px 5px 10px 5px;
            }
            .tableTop a{
                 color: white;
                 font-size: 200%;
            }
            .tableTop td:last-child{
                width: 20%;
            }
            

        </style>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <div class="currnetnews">
            
            <c:forEach items="${data}" var="item">
                <table class="tableTop" border="1">
                    <tr>
                        <td><image src="${item.getImagepath()}" class="center"></td>
                        <td><a href="updatenews?IdNews=${item.getId()}">${item.getName()}</a></td>
                        <td><a href="listnewsbyusers?id=${item.getId()}&mod=1">Delete</td>
                    </tr>
                </table>
            </c:forEach>       
        </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>
