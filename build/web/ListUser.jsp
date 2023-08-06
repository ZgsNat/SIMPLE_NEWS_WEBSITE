<%-- 
    Document   : ListUser
    Created on : Feb 14, 2023, 4:16:05 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Model.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name = "";
            if(request.getAttribute("name")!=null){
                name= (String)request.getAttribute("name");
            }
            ArrayList<User> data = new ArrayList<User>();
            if(request.getAttribute("data")!=null){
                data= (ArrayList<User>)request.getAttribute("data");
            }
        %>
        <h1>Login successfully!</h1>
        Hello <b><%=name%></b>
        
        <br>List User -using JSTL & EL
        <table border="1">
            <tr>
                <td>UserName</td>
                <td>Password</td>
                <td>Name</td>
                <td>Gender</td>
                <td>Dob</td>
                <td>IsAuthor</td>
            </tr>
            <c:forEach items="${data}" var="item">
               <tr>
                   <td><a href="detailuser?acc=${item.getUsername()}">${item.getUsername()}</td>
                   <td>${item.getPassword()}</td>
                   <td>${item.getName()}</td>
                   <td>${item.getGender()}</td>
                   <td>${item.getDob()}</td>
                   <td>${item.isIsAuthor()}</td>
               </tr> 
            </c:forEach>
        </table>
    </body>
</html>
