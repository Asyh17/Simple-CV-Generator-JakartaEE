<%-- 
    Document   : tutorial
    Created on : 5 May 2026, 2:24:02 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page info = "bukan kita kawan jer ke"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>JSTL Construct</h1>
        <%-- this is comment --%>
        <% 
            String number = "1"; 
            out.print("this is scriplet" + number);
        %>
        
        <%! String nama = "Ali"; %>
        
        <h1> <%=number%></h1>
        <h1> <%=nama%></h1>
        <h1>Hello World!</h1>
        <%= new Date() %>
        
        <%@include file = "alert.jsp"%>
        
        
        <br><!-- comment -->
        <h1>JSTL</h1>
        <c:set var= "nama2" value="Abu" />
        <c:out value ="${nama2}" />
        
     <c:forEach begin="1" end="10" var="num">
            <p>${num}</p>
        </c:forEach>
            
            <table  border="1px black">
                <c:forEach begin="1" end="10" var="num">
                    <tr>
                        <td>
                            ${num}
                        </td>
                    </tr>
                </c:forEach>
            </table>
            
            <table border="1px black">
                    <tr>
                        <c:forEach begin="1" end="10" var="num">
                        <td>
                            ${num}
                        </td>
                        </c:forEach>
                    </tr>
            </table>
<c:forTokens items="Banana|Terung|Cucumber" delims="|" var="Batang">
                <p>${Batang}</p>
            </c:forTokens>
                
                <%
                    out.print(request.getServletPath());
                    session.setAttribute("u_name", "ismail");
                %>
                
                <p></p>
                <%=request.getParameter("name")%>
                <%=session.getAttribute("u_name")%>
    </body>
</html>
