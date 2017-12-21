<%-- 
    Document   : product
    Created on : Dec 17, 2017, 5:52:53 PM
    Author     : sunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="${pageContext.request.contextPath}/saveProduct1" method="POST">
            <P>NAME:<input type="text" name="name" placeholder="Enter your name">
                 <P>Price:<input type="text" name="price" placeholder="Enter your price">
                      <P>Tags:<input type="text" name="tags" placeholder="Enter your tages">
                      <p> <input type="submit" value="Add product"></p>
                          
        </form>>
                          
                
    </body>
</html>
