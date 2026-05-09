<%-- 
    Document   : myform
    Created on : 21 Apr 2026, 2:25:17 pm
    Author     : HP
--%>
<%@ page import ="java.util.Enumeration" %>
         
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device=width, initial-scale=1.0"/>
        <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    </head>
    <body>
        <div class="container px-5 py-3">
        <h5>My CV</h5>
        <label>Picture</label>
        <form action="home" method="post">
            <label>Name </label>
            <input class= "border rounded w-full" type="text"name ="name" required>
            
            <div class="grid grid-cols-[1fr_2fr] gap-2 mt-3">
             <div>
             <label>Phone number </label>
            <input class = "border rounded w-full" type="text"name ="phone" placeholder= "e.g 0179532056" required>
            </div>
            
            <div>
            <label>Email </label>
            <input class = "border rounded w-full" type="email"name ="email" required> 
            </div>
            </div>
            
            <div class="mt-3">
            <label>Address </label>
            <textarea class= "border rounded w-full" name ="address" ></textarea>
            </div>
            
            <div class="grid grid-cols-2 mt-3">
                <div>   
            <label>Website/Social Media </label>
            <input class= "border rounded" type="text"name ="website">
            </div> 
             
             <div>
            <input class= "border rounded" type="Submit" name=" btnSubmit" value="Submit">
             </div>
        </form>
    </body>
</html>

<%
    //String input = request.getParameter("name");
    //out.print(input);
    
Enumeration<String> paramNames = request.getParameterNames();

while (paramNames.hasMoreElements()){

String name = paramNames.nextElement();

String value = request.getParameter(name);

out.println("<b>" + name + ":</b>" + value + "<br/>");
    }
%>