/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.webdev.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.CVModel; 


@WebServlet(name = "CVServlet", urlPatterns = {"/CVServlet"})
public class CVServlet extends HttpServlet {

   private String toTitleCase(String input) {
    if (input == null || input.isEmpty()) {
        return input;
    }

    StringBuilder titleCase = new StringBuilder();
    boolean nextTitleCase = true;

    for (char c : input.toLowerCase().toCharArray()) {
        if (Character.isSpaceChar(c)) {
            nextTitleCase = true;
        } else if (nextTitleCase) {
            c = Character.toUpperCase(c);
            nextTitleCase = false;
        }
        titleCase.append(c);
    }

    return titleCase.toString();
}
   
   @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    

    String type = request.getParameter("view");

    if ("example".equals(type)) {
        CVModel example = new CVModel();
        example.setName("Anas Ilham");
        example.setEmail("Anas21@gmail.com");
        example.setAddress("UiTM Kuala Terengganu, Terengganu");
        example.setPhNo("012-3456789");
        example.setEduLevel("Bachelor of Computer Science (Hons)");
        example.setExperience("Web Developer Intern at Tech Corp");
        example.setSkills("Java, Jakarta EE, Tailwind CSS");

        example.setProfileSummary("Anas Ilham is a technically-minded individual focused on efficiency and systems. " 
        + "With a background in Web Developer Intern at Tech Corp, they aim to apply their " 
        + "analytical skills to solve complex infrastructure or technical problems.");
        
        request.setAttribute("cvData", example);
        request.getRequestDispatcher("/WEB-INF/views/cv_template.jsp").forward(request, response);
    } else {
        request.getRequestDispatcher("/WEB-INF/views/CVForm.jsp").forward(request, response);
    }
}
    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    
    String rawName = request.getParameter("name");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String phNo = request.getParameter("phone");
    String eduLevel = request.getParameter("eduLevel");
    String experience = request.getParameter("experience");
    String skills = request.getParameter("skills");
    String stream = request.getParameter("stream");
    String formattedName = toTitleCase(rawName);
    String midSentence = "";
    String closing = "";

switch (stream) {
    case "Technical":
        midSentence = " is a technically-minded individual focused on efficiency and systems.";
        closing = " They aim to apply their analytical skills to solve complex infrastructure or technical problems.";
        break;
    case "Creative":
        midSentence = " is a highly creative individual with a unique perspective and eye for detail.";
        closing = " They are passionate about bringing innovative ideas to life through visual or conceptual design.";
        break;
    case "Business":
        midSentence = " is a strategic thinker with a strong focus on organization and professional communication.";
        closing = " They are dedicated to driving growth and maintaining high standards in a corporate or administrative environment.";
        break;
    default: // General
        midSentence = " is a motivated individual with a diverse range of interests and a strong work ethic.";
        closing = " They are committed to continuous personal growth and contributing effectively to their chosen field.";
        break;
}

    String summary = formattedName + midSentence + " With a background in " + experience + "." + closing;

   
    
    CVModel cv = new CVModel();
    cv.setName(rawName);
    cv.setEmail(email);
    cv.setAddress(address);
    cv.setPhNo(phNo);
    cv.setEduLevel(eduLevel);
    cv.setExperience(experience);
    cv.setSkills(skills);
    cv.setProfileSummary(summary);

    request.setAttribute("cvData", cv);
    request.getRequestDispatcher("/WEB-INF/views/cv_template.jsp").forward(request, response);
}
 
}
