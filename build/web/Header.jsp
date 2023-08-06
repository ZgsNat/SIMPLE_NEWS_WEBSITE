<%-- 
    Document   : Header
    Created on : Mar 11, 2023, 3:09:41 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<Html>     
    <Head>      
        <Title>     
            Navigation Bar  
        </Title>
        <script src="https://cdn.tailwindcss.com"></script>
        <style type=text/css>
            body
            {
                background-image: url('Image/Tech.jpg');
                -webkit-background-size: cover;
                background-attachment: fixed;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
                height: 125vh;
            }
            header {
                background-color: #374758;
                position: fixed;
                left: 0;
                right: 0;
                top: 5px;
                height: 100px;
                align-items: center;
                box-shadow: 0 0 25px 0 black;
                font-size: 30px;
                border: 2px solid #e6f0cf;
            }
            header * {
                display: inline;

            }
            nav ul{
                display:flex;
                list-style:none;
                padding: 0px;
                justify-content: space-between;
            }
            header li {
                color: white;
                margin: 20px;
                margin: auto;
                align-items: center;
            }
            input{
                padding: 5px;
                width: 100%;
                font-size: 20px;
                color: white;
                border-radius: 10px;
                background-color: #4f657d;
                height: 30px;
                width: 150%;
            }

            ::placeholder{
                font-size: 20px;
                color: white;
            }
            header li a{
                color: white;
                text-decoration: none;
            }

            /*this is dropdown*/
            .dropbtn {
                background-color: #4CAF50;
                color: white;
                height: 20px;
                width: 50px;
                font-size: 16px;
                border: none;
                cursor: pointer;
            }

            /* The container <div> - needed to position the dropdown content */
            .dropdown {
                position: relative;
                display: inline-block;
            }

            /* Dropdown Content (Hidden by Default) */
            .dropdown-content {
                font-size: 15px;
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            /* Links inside the dropdown */
            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            /* Change color of dropdown links on hover */
            .dropdown-content a:hover {
                background-color: #f1f1f1
            }

            /* Show the dropdown menu on hover */
            .dropdown:hover .dropdown-content {
                display: block;
            }

            /* Change the background color of the dropdown button when the dropdown content is shown */
            .dropdown:hover .dropbtn {
                background-color: #3e8e41;
            }


            /*//*/
            /* The container <div> - needed to position the dropdown content */
            .dropdown {
                position: relative;
                display: inline-block;
            }

            /* Dropdown Content (Hidden by Default) */
            .dropdown-content {
                position: absolute;
                background-color: #f6f6f6;
                border: 1px solid #ddd;
                z-index: 1;
            }

            /* Links inside the dropdown */
            .dropdown-content a {
                padding: 5px;
                color: black;
                text-decoration: none;
                display: block;
            }

            /* Change color of dropdown links on hover */
            .dropdown-content a:hover {
                background-color: #f1f1f1
            }

            /* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
            .show {
                display:block;
            }
        </style>   
    </Head>  
    <Body>   
        <header class="w-full z-50">  
            <nav class="h-full">  
                <ul class="flex items-center justify-between h-full">  
                    <li>  
                        <jsp:include page="/news?headersearch=1"></jsp:include>
                            <input onclick="myFunction()" id="myInput" onkeyup="filterFunction()" type="text" name="search" placeholder="What you want to search?">
                            <div id="myDropdown" class="dropdown-content">
                                <table class="search">
                                <c:forEach items="${datahearder}" var="item">  
                                    <tr>
                                        <td><a href="?IdNews=${item.getId()}&Relativetopic=1">${item.getName()}</a></td>
                                    </tr> 
                                </c:forEach>
                            </table>
                        </div>
                    </li>  
                    <li>  
                        <a href="index.jsp"> Home </a>
                    </li>  
                    <li>  
                        <c:catch var="account"></c:catch>
                        <c:if test="${account!=null}">
                            <c:catch var="account"> 
                                <p>Welcome: ${sessionScope.username}</p>
                                <div class="dropdown">
                                    <button class="dropbtn"></button>
                                    <div class="dropdown-content">
                                        <a href="Logout.jsp">LogOut</a>
                                        <a href="profile?username=${sessionScope.username}">View Profile</a>
                                        <a href="PostNews.jsp">Post</a>
                                        <a href="listnewsbyusers">Check List News</a>
                                        <c:catch var="isauthor"></c:catch>
                                        <c:if test="${isauthor=='1'}">
                                            <a href="listnewsbyusers?isAdmin=1">List for admin</a>
                                        </c:if>
                                    </div>
                                </div>
                            </c:catch>
                        </c:if>
                        <c:if test="${account==null}">
                            <a href="Login.jsp"> Login </a> </c:if> 
                    </li>  
                </ul>  
            </nav>  
        </header> 
        <SCRIPT>
            function myFunction() {
                document.getElementById("myDropdown").classList.toggle("show");
            }

            function filterFunction() {

                var input, filter, ul, li, a, i;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                div = document.getElementById("myDropdown");
                a = div.getElementsByTagName("a");
                for (i = 0; i < a.length; i++) {
                    txtValue = a[i].textContent || a[i].innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        a[i].style.display = "";
                    } else {
                        a[i].style.display = "none";
                    }

                }
            }
        </SCRIPT>
    </Body>   
</Html>  

