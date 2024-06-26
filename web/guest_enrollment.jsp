<%-- 
    Document   : guest
    Created on : 04 29, 24, 3:59:00 PM
    Author     : Micah
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>
    <% response.setHeader("Pragma", "no-cache"); %>
    <% response.setDateHeader("Expires", 0); %>
    <%
        if (session.getAttribute("usernamesession") == null) {
            response.sendRedirect("index.jsp");
        } else if (session.getAttribute("usernamesession") != null && session.getAttribute("captchasession") == null) {
            response.sendRedirect("CaptchaServlet");
        } else if (session.getAttribute("usernamesession") != null && session.getAttribute("coursessession") == null) {
            response.sendRedirect("StudentServlet");
        }
        session.setAttribute("coursessession", null);
    %>


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Active Learning</title>
        <link rel="stylesheet" href="css/guest_enrollment.css?v=3">
        <link href="https://use.typekit.net/oov2wcw.css" rel="stylesheet">
        <style>
            .modal-content {
                background-image: url(images/classroom.png);
                background-size: cover;
                border-radius: 15px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
                width: 400px;
                padding: 30px;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }
        </style>
    </head>

    <body>
         <div id="header">
            <p style="font-family: Courier New;"><% out.print(getServletContext().getInitParameter("name")); %> <% out.print(getServletContext().getInitParameter("section"));%></p>
        </div>
        <h1 class="al">al.</h1>
        <div class="mainbg">
            <div class="bg"></div>
        </div>


        <div class="container-course">
            <p1 class="hello">Hello, <%= session.getAttribute("fullnamesession")%>!</p1>
            <p1 class="role"><%= session.getAttribute("userrolesession")%></p1>
        </div>

        <div class="container2-course">
            <form action="StudentServlet" method="get">
                <input id="courses" type="submit" name="place" value="MyCourses">
            </form>

            <form action="StudentServlet" method="get">
                <input id="enroll" type="submit" name="place" value="Enrollment">
            </form>
        </div>


        <div class="left-container">
            <img id="image-con" src="images/container1-admin.png" class="box" alt="bg image"/>       
            <img id="cover" src="images/cover.png" class="box" alt="cover classroom"/>
            <img id="profile" src="images/profile.png" class="box" alt="profile picture"/>
            <img id="line" src="images/line.png" class="box" alt="separator"/>

            <div class="con-item">
                <div class="navbar-item">
                    <a href="guest_courses.jsp" class="navbar-item-text">
                        <img src="images/courses.png" class="img-courses">
                        Courses
                    </a>
                </div>

                <div class="navbar-item">
                    <a href="https://activelearning.ph/news/" class="navbar-item-text">
                        <img src="images/news.png" class="img-news">
                        News
                    </a>
                </div>

                <div class="navbar-item">
                    <a href="https://activelearning.ph/careers/" class="navbar-item-text">
                        <img src="images/careers.png" class="img-careers">
                        Careers
                    </a>
                </div>

                <div class="navbar-item">
                    <a href="https://activelearning.ph/about/" class="navbar-item-text">
                        <img src="images/company.png" class="img-comp">
                        The Company
                    </a>
                </div>

                <div class="navbar-item">
                    <a href="https://activelearning.ph/contact/" class="navbar-item-text">
                        <img src="images/contactus.png" class="img-contact">
                        Contact Us
                    </a>
                </div>

                <form action="LoginServlet" method="post">
                    <input id="logout" type="submit" value="Logout" name="logout">
                </form>   
            </div>
        </div>

        <div class="ge-container-1">
            <main class="table">
                <section class="table_header">
                    <h1>

                    </h1>
                </section>
                <section class="table_body">
                    <table>
                        <thead>
                            <tr>
                                <th> Available Courses </th>
                                <th> Start Date </th>
                                <th> End Date </th>
                                <th> Add Course to Enroll </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                try {
                                    ArrayList<ArrayList<String>> courses = (ArrayList<ArrayList<String>>) request.getAttribute("allCourses");
                                    HashMap<String, String> courseDescriptions = (HashMap<String, String>) request.getAttribute("courseDescriptions");
                                    for (ArrayList<String> course : courses) {
                                        String courseName = course.get(0);
                                        String startDate = course.get(1);
                                        String endDate = course.get(2);
                                        String durationHours = course.get(3);
                                        String instructor = course.get(4);
                                         String link = course.get(5);
                                        String img = course.get(6);
                                        String description = courseDescriptions.get(courseName);
                            %>
                            <tr>
                                <td class="course-name"> <img src="images/dropdown.png" class="img-dropdown"> <strong> <%= courseName%> </strong> </td>
                                <td><%= startDate%></td>
                                <td><%= endDate%></td>
                                <td>
                                    <form action="StudentServlet" method="POST">
                                        <input type="hidden" name="course" value="<%= courseName%>">
                                        <input type="hidden" name="startdate" value="<%= startDate%>">
                                        <input type="hidden" name="enddate" value="<%= endDate%>">
                                        <input type="hidden" name="durationhours" value="<%= durationHours%>">
                                        <input type="hidden" name="instructor" value="<%= instructor%>">
                                        <input type="hidden" name="link" value="<%= link%>">
                                        <input type="hidden" name="img" value="<%= img%>">
                                        <button type="submit" name="enrollCourse" value="enrollCourse" style="border: none; background: none; padding: 0;">
                                            <img src="images/plus.png" alt="add" style="width: 44px; height: 26px; margin-left: 55px;">
                                        </button>                                        
                                    </form>
                                </td>
                            </tr>
                            <tr class="course-description" style="display: none;">
                                <td colspan="4">
                                    <p><%= description%></p>
                                </td>
                            </tr>
                            <%
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
                        </tbody>
                    </table>
                </section>
            </main>
        </div>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const courseRows = document.querySelectorAll('.course-name');

                courseRows.forEach(row => {
                    row.addEventListener('click', function () {
                        const description = this.parentElement.nextElementSibling;

                        if (description.style.display === 'none' || description.style.display === '') {
                            description.style.display = 'table-row';
                        } else {
                            description.style.display = 'none';
                        }
                    });
                });
            });
        </script>


    <div id="footer"
             <p style="font-family: Courier New;"><% out.print(getServletContext().getAttribute("date"));%> <% out.print(getServletContext().getInitParameter("subject")); %> <% out.print(getServletContext().getInitParameter("mp"));%></p>
    </div>
    </body>

</html>
