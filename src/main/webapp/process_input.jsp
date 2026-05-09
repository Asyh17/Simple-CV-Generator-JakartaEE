<%-- 
    Document   : process_input
    Created on : 14 Apr 2026, 3:13:25 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String name = request.getParameter("fname");
    out.print(name);
    
%>
<br>
Hello, <%= name%>
