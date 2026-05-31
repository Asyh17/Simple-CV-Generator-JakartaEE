# Simple CV Generator (Jakarta EE & MVC)

A lightweight, enterprise-ready web application built using **Jakarta EE (Web Profile 10)** following the strict **Model-View-Controller (MVC)** architectural pattern. This platform automates professional resume generation by capturing user metrics and dynamically rendering a polished, industry-standard CV layout.

## 🚀 Core Features
* **Dynamic Profile Summary Engine:** Uses a back-end logic controller to automatically write a customized professional summary based on the user's chosen career focus stream (Technical, Creative, Business).
* **Intelligent Data Normalization:** Incorporates a custom formatting engine to sanitize input strings (e.g., converting uppercase name inputs to grammatically precise Title Case).
* **Secure Resource Routing:** Implements standard enterprise web security by encapsulating view layers inside the protected `WEB-INF` directory to block direct browser access and enforce Controller-first routing.
* **Responsive Frontend:** Styled with the Tailwind CSS utility framework for a clean, minimalist, mobile-friendly interface.

## 🛠️ Tech Stack
* **Language:** Java (JDK 21)
* **Framework:** Jakarta EE 10 (Servlets, Expression Language, JavaBeans)
* **Build Tool:** Apache Maven
* **Frontend:** HTML5, Tailwind CSS
* **Target Server:** Apache Tomcat 10+ (or any Jakarta EE 10 compatible Web Container)

## 📁 Project Architecture & Directory Structure
The repository follows standard Maven conventions separating concerns cleanly across the MVC boundary:
```text
src/main/java/
├── controller/  # CVServlet.java (Handles HTTP GET/POST, routing, processing logic)
├── model/       # CVModel.java (JavaBeans representing stateful user profile data)
└── util/        # Helper algorithms (String capitalization/normalization)
src/main/webapp/
├── WEB-INF/     # Secure, non-public view resources
│   ├── cv_template.jsp
│   └── CVForm.jsp
