<%-- 
    Document   : Captcha.jsp
    Created on : 04 29, 24, 7:41:54 PM
    Author     : Andrea
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>
    <% response.setHeader("Pragma", "no-cache"); %>
    <% response.setDateHeader("Expires", 0); %>
    <%
        if (session.getAttribute("usernamesession") != null && session.getAttribute("captchasession") != null) {
            response.sendRedirect("admin_courses.jsp");
        } else if (session.getAttribute("usernamesession") == null)
            response.sendRedirect("index.jsp");
    %>
    <head>
        <meta charset="UTF-8">
        <title>Captcha</title>
        <link href="https://db.onlinewebfonts.com/c/7515664cb5fad83d8ce956ad409ccbb7?family=Helvetica+Rounded+LT+Std+Bold" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Nunito' rel='stylesheet'>
        <link rel="stylesheet" href="css/styles.css">
        <style>
            body {
                background-image: url('images/bg.png');
                background-size: 1600px 800px;
                text-align: center;
                display: flex;
                flex-direction: column;
                min-height: 100vh;
                position: fixed;
            }
        </style>
    </head>

    <body>
        <div id="header">
            <p style="font-family: Courier New;"><% out.print(getServletContext().getInitParameter("name")); %> <% out.print(getServletContext().getInitParameter("section"));%></p>
        </div>


        <img id="image-code" src="images/code.png" class="box" alt="Intro Image"/>
        <div class="site-login">al.</div>


        <form action="https://activelearning.ph/contact/" method="get" target="_blank">
            <input id="contact-login" type="submit" value="Contact Us">
        </form>


        <div class="container4-login">
            <span style="color: #121212;
                  font-family: Century Gothic; font-weight: 400; word-wrap: break-word">The </span><span style="color: rgba(0, 99.44, 248.61, 0.54);
                  font-family: Courier New; font-weight: 700; word-wrap: break-word">ActiveLearning</span><span style="color: #9F79C7;
                  font-family: Century Gothic; font-weight: 400; word-wrap: break-word"> </span><span style="color: #121212;
                  font-family: Century Gothic; font-weight: 400; word-wrap: break-word">is the Philippines’ leading provider of </span><span style="color: #9F79C7;
                  font-family: Courier New; font-weight: 700; word-wrap: break-word">Information Technology</span><span style="color: #121212;
                  font-family: Century Gothic; font-weight: 400; word-wrap: break-word"> training programs.</span>
        </div>

        <div class="container1-login"></div>
        <div class="container2-login"></div>
        <div class="container3-captcha">

            <!-- display captcha -->
            <h1><% out.print(request.getAttribute("captchatext"));%></h1>

            <!-- enter captcha -->
            <form action="CaptchaServlet" method="post">
                <label for="captcha">Enter the CAPTCHA displayed above:</label><br>
                <input type="text" id="captcha" name="captcha"><br><br>
                <input type="submit" value="Submit">
            </form>

            <script>

                // bawal mag paste
                document.getElementById("captcha").addEventListener("paste", function (e) {
                    e.preventDefault();
                    alert("Copying and pasting is not allowed for CAPTCHA!");
                });
            </script>
        </div>

        <div id="footer"
             <p style="font-family: Courier New;"><% out.print(getServletContext().getAttribute("date"));%> <% out.print(getServletContext().getInitParameter("subject")); %> <% out.print(getServletContext().getInitParameter("mp"));%></p>
    </div>
</body>
</html>



