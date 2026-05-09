/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.webdev.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author HP
 */
@WebServlet("/home")
public class Home extends HttpServlet {
    
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        //response.setContentType("text/html");
        //response.getWriter().print("This is controller home..");
        
        request.getRequestDispatcher("WEB-INF/views/myform.jsp").forward(request, response);
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        response.setContentType("text/html");
        
        String name = request.getParameter("name");
        response.getWriter().print(name);
//response.getWriter().print("This is controller home access using Post method..");
     
    }
}
