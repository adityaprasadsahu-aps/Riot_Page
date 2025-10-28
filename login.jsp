<%-- 
    Document   : login
    Created on : 29 Oct, 2025, 1:15:28 AM
    Author     : adity
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
<%
            String id = request.getParameter("userId");
            String pass = request.getParameter("userPass");
            if (id != null && pass != null) {
                if (id.equals("admin") && pass.equals("1941")) {
                    response.sendRedirect("mainpage.html");
                } else {
                    out.println("<h2 style='color:red;'>Invalid ID or Password. Please try again.</h2>");
                    
                }
            }
        %>
    </body>
</html>
