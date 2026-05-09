
<%@ page import ="java.util.Enumeration" %>
         
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>CV Web Application - Form</title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device=width, initial-scale=1.0"/>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
   <body class="bg-gray-50 p-6">
        <div class="max-w-2xl mx-auto bg-white shadow-md rounded-lg p-8">
            <h2 class="text-2xl font-bold text-gray-800 mb-6 border-b pb-2">Curriculum Vitae Information</h2>
        
            <form action="CVServlet" method="post" class="space-y-4" >
            <!-- Personal Info -->
                <div>
                    <label class="block font-medium text-gray-700">Full Name</label>
                    <input class="border rounded w-full p-2 focus:ring-2 focus:ring-sky-700 outline-none" type="text" name="name" required>
                </div>
                
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>
                        <label class="block font-medium text-gray-700">Phone Number</label>
                        <input class="border rounded w-full p-2 focus:ring-2 focus:ring-sky-700 outline-none" type="text" name="phone" placeholder="e.g 0179532056" required>
                    </div>
                    <div>
                        <label class="block font-medium text-gray-700">Email</label>
                        <input class="border rounded w-full p-2 focus:ring-2 focus:ring-sky-700 outline-none" type="email" name="email" required> 
                    </div>
                </div>
                
                <div>
                    <label class="block font-medium text-gray-700">Address</label>
                    <textarea class="border rounded w-full p-2 focus:ring-2 focus:ring-sky-700 outline-none" name="address" rows="2"></textarea>
                </div>
                
    <div class="mb-4">
             <label class="block text-sm font-semibold text-gray-700 mb-1">Professional Focus</label>
             <select name="stream" class="w-full p-2.5 border border-gray-300 rounded-lg focus:ring-2 focus:ring-[#005da0] focus:border-transparent outline-none bg-white transition-all">
                    <option value="Technical">Technical & Engineering</option>
                    <option value="Creative">Creative & Arts</option>
                    <option value="Business">Business & Management</option>
                    <option value="General">General / Academic</option>
            </select>
        <p class="text-xs text-gray-500 mt-1 italic">This helps us craft a more personalized profile summary for you.</p>
   </div>
            
                <!-- Education & Experience -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>   
                        <label class="block font-medium text-gray-700">Education Level</label>
                        <input class="border rounded w-full p-2 focus:ring-2 focus:ring-sky-700 outline-none" type="text" name="eduLevel">
                    </div> 
                    
                    <div>   
                        <label class="block font-medium text-gray-700">Experience</label>
                        <input class="border rounded w-full p-2 focus:ring-2 focus:ring-sky-700 outline-none" type="text" name="experience">
                    </div>
                </div>

                <div>   
                    <label class="block font-medium text-gray-700">Skills</label>
                    <input class="border rounded w-full p-2 focus:ring-2 focus:ring-sky-700 outline-none" type="text" name="skills" placeholder="e.g. Java, Python, AI">
                </div> 
                 
                <div class="pt-4">
                    <button type="submit" class="w-full bg-sky-600 text-white font-bold py-2 rounded hover:bg-sky-700 transition duration-200">
                        Generate CV
                    </button>
                    
                   <a href="CVServlet?view=example" class="text-center text-sm text-gray-600 hover:text-[#005da0] underline transition duration-200">
                        View Example CV (Hardcoded)
                     </a>
   
                </div>
            </form>
        </div>
    </body>
</html>