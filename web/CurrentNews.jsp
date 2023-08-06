<%-- 
    Document   : CurrentNews
    Created on : Mar 13, 2023, 8:43:58 PM
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
                margin-top: 100px;
                margin-bottom: 100px;
                border-radius: 10px;
            }
            .tableTop td:first-child{
                width: 20%;
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
            
            
        </style>
    </head>
    <body>
        <div class="currnetnews">
            <jsp:include page="/news"></jsp:include>
            <c:catch var="Relativetopic">
                <c:if test="${Relativetopic==1}">
                    <h1>Relative news</h1>
                </c:if>
                    <c:if test="${Relativetopic==null}">
                    <h1>Current News</h1>
                </c:if>
            </c:catch>
            
        <c:forEach items="${datatop}" var="item">
            <table class="tableTop">
                <tr>
                    <td><image src="${item.getImagepath()}" class="center"></td>
                    <td><a href="?IdNews=${item.getId()}&Relativetopic=1">${item.getName()}</a></td>
                </tr>
            </table>

        </c:forEach>
        </div>
        
    </body>
</html>
