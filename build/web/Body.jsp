<%-- 
    Document   : Body
    Created on : Mar 12, 2023, 3:45:12 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body>
        <%@include file ="Header.jsp"%>
        <div class="container mx-auto px-5 md:px-10 mb-8 mt-28 min-h-screen">
            <div class="grid grid-cols-1 lg:grid-cols-12 lg:gap-12">
            <div class='lg:col-span-8 col-span-1'>
                <!<!-- Render Posts List -->
                <h1 class="text-white font-bold">POST</h1>
            </div>
            <div class="lg:col-span-4 col-span-1">
                <div class='lg:sticky relative lg:top-20'>
                    <!<!-- recent posts -->
                    <h1 class="text-white font-bold">recent POST</h1>
                    <!<!-- categories -->
                    <h1 class="text-white font-bold">catogory POST</h1>
                </div>
            </div>
        </div>
        </div>
        
    </body>
</html>
