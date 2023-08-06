<%-- 
    Document   : DetailUser
    Created on : Mar 12, 2023, 12:06:16 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.User" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Simple Login Form Template | Tutorial Jinni</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body{
                font-family: 'Open Sans', sans-serif;
                background:#374758;
                margin: 0 auto 0 auto;
                width:100%;
                text-align:center;
                margin: 20px 0px 20px 0px;
            }
            p{
                font-size:12px;
                text-decoration: none;
                color:#ffffff;
            }
            h1{
                font-size:1.5em;
                color:#525252;
            }
            .box{
                background:white;
                width:300px;
                border-radius:6px;
                margin: 0 auto 0 auto;
                padding:0px 0px 70px 0px;
                border: #2980b9 4px solid;
            }
            .username{
                background:#ecf0f1;
                border: #ccc 1px solid;
                border-bottom: #ccc 2px solid;
                padding: 8px;
                width:250px;
                color:#AAAAAA;
                margin-top:10px;
                font-size:1em;
                border-radius:4px;
            }
            .button{
                background:#2ecc71;
                width:125px;
                padding-top:5px;
                padding-bottom:5px;
                color:white;
                border-radius:4px;
                border: #27ae60 1px solid;
                margin-top:20px;
                margin-bottom:20px;
                float:left;
                margin-left:88px;
                font-weight:800;
                font-size:0.8em;
            }
            .button:hover{
                background:#2CC06B;
            }
            .fpwd{
                color:#f1c40f;
                text-decoration: underline;
            }
            #center{
                position: absolute;
                top:0;
                bottom: 0;
                left: 0;
                right: 0;
                margin: auto;
                width:400px;
                height: 300px;
                text-align: center;
            }
            .ask{
                background:#ecf0f1;
                border: #ccc 1px solid;
                border-bottom: #ccc 2px solid;
                padding: 8px;
                color:#AAAAAA;
                margin-top:10px;
                border-radius:4px;
            }
            a{
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div id="center">
            <%--<jsp:include page="/profile"></jsp:include>--%>
            <form action="register" method="post" style="margin:auto" class="frm">
                <div class="box">
                    
                    <h1>Profile</h1>
                    UserName:<input class="username" name="username" type="text" placeholder="User Name" value="${user.getUsername()}" readonly>
                    Password:<input class="username" name="password" type="text" value="${user.getPassword()}" readonly>
                    Name:<input class="username" name="name" type="text" value="${user.getName()}" required>
                    Gender:<input class="username" name="gender" type="text" value="${user.getGender()}" required>
                    Dob:<input class="username" name="dob" type="text" value="${user.getDob()}" required>
                    IsAuthor:<input class="username" name="isauthor" type="text" value="${user.isIsAuthor()}" readonly>
                    <br>
                    <input class="button" type="submit" value="UPDATE" name="UPDATE">
                    <c:catch var="check"></c:catch>
                    <c:if test="${check!=null}"><p class="ask">${check}</p></c:if>
                    <a href="login" class="button">GO BACK</a>
                </div>
            </form>
        </div>
    </body>
</html>