<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Professional CV</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-gray-100 p-10">
        <div class="max-w-3xl mx-auto bg-white p-10 shadow-2xl rounded-lg">
            <!-- Header Section -->
            <div class="border-b-2 border-sky-700 pb-5 mb-8">
                <h1 class="text-4xl font-bold text-gray-800 uppercase">${cvData.name}</h1>
                <p class="text-sky-700 font-medium mt-2">${cvData.email} | ${cvData.phNo}</p>
                <p class="text-gray-500">${cvData.address}</p>
            </div>
      
            <!-- Profile Summary Section -->
<div class="mb-8">
    <h2 class="text-xl font-bold text-gray-800 border-l-4 border-[#005da0] pl-3 mb-3 text-sm tracking-widest uppercase">Profile Summary</h2>
    <div class="bg-gray-50 p-4 rounded border-t-2 border-[#005da0]">
        <p class="text-gray-700 italic leading-relaxed">
            "${cvData.profileSummary}"
        </p>
    </div>
</div>
            <!-- Education Section -->
            <div class="mb-8">
                <h2 class="text-xl font-bold text-gray-800 border-l-4 border-sky-700 pl-3 mb-3">Education</h2>
                <p class="text-gray-700">${cvData.eduLevel}</p>
            </div>

            <!-- Experience Section -->
            <div class="mb-8">
                <h2 class="text-xl font-bold text-gray-800 border-l-4 border-sky-700 pl-3 mb-3">Experience</h2>
                <p class="text-gray-700">${cvData.experience}</p>
            </div>

            <!-- Skills Section -->
            <div>
                <!-- Skills Section -->
<div class="mb-8">
    
    <h2 class="text-xl font-bold text-gray-800 border-l-4 border-[#005da0] pl-3 mb-3">Skills</h2>
    
    <div class="bg-gray-50 p-4 rounded shadow-sm">
        <p class="text-gray-700 text-sm leading-relaxed">${cvData.skills}</p>
    </div>
</div>
         <div class="mt-10 pt-5 border-t text-center">
             
    <a href="${pageContext.request.contextPath}/CVServlet"
       class="inline-block text-[#005da0] font-medium transition-transform duration-200 hover:-translate-y-1 hover:text-blue-800">
        &larr; Re-edit Details
    </a>
</div>
        </div>
    </body>
</html>
