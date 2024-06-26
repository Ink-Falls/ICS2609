<%-- 
    Document   : error404
    Created on : 05 1, 24, 3:44:07 PM
    Author     : Lennard Flores
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Error 404 - Page Not Found</title>
        <link href="https://db.onlinewebfonts.com/c/7515664cb5fad83d8ce956ad409ccbb7?family=Helvetica+Rounded+LT+Std+Bold" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Nunito' rel='stylesheet'>
        <style>
            *{
                font-family: "Century Gothic";
            }

            body {
                background-image: url('https://i.postimg.cc/CLftr96F/bg.png');
                background-size: 1600px 800px;
                text-align: center;
                display: flex;
                flex-direction: column;
                min-height: 100vh;
                position: fixed;
            }

            .site-login {
                width: 200px;
                color: #1E293B;
                font-size: 60px;
                font-weight: 700;
                position: fixed;
                top: 20px;
            }

            img{
                position: fixed;
                top:180px;
                left:160px;
                height:385px;
                width:auto;
            }

            .Error-message{
                padding:0;
                margin:0;
                width:50%;
                top: 200px;
                left: 743px;
                height:auto;
                text-align: left;
                position: fixed;
                z-index:2;
            }

            .Error-message h1{
                color: red;
                padding:0;
                margin:0;
                font-size:55px;
                font-weight: 900;
            }

            .Error-message h2{
                padding:0;
                margin:0;
                font-size:55px;
                font-weight: 900;
                margin-bottom: 35px;
            }

            .Error-message h3{
                padding:0;
                margin:0;
                font-size:45px;
                font-weight: 900;
                margin-bottom: 35px;
            }

            .Error-message p{
                padding:0;
                margin:6;
                font-size:15px;
                font-weight: lighter;
            }

            .container1-login {
                width: 462px;
                height: 560px;
                left: 808px;
                top: 110px;
                position: fixed;
                background: #F6FAFC;
                box-shadow: 1px 4px 15px rgba(0, 0, 0, 0.25);
                border-radius: 35px;
            }

            .container2-login {
                width: 825px;
                height: 430px;
                left: 342px;
                top: 180px;
                position: fixed;
                background: white;
                box-shadow: 1px 4px 15px rgba(0, 0, 0, 0.25);
                border-radius: 35px;
                z-index:1;
            }

            .container3-login {
                width: 462px;
                height: 580px;
                left: 575px;
                top: 10px;
                position: fixed;
                background: transparent;
                margin: 100px 0px 0px 0px;
                z-index:1;
            }

            .container3-login input[type="submit"] {
                font-weight: 600;
                color: white;
                font-size: 20px;
                width: 185px;
                height: 44px;
                background: #1E293B;
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
                border-radius: 20px;
                position: absolute;
                top: 365px;
                right: 110px;
            }

            input[type="submit"]:hover {
                background-color: #9F79C7;
            }

            #contact-login {
                font-weight: 600;
                color: white;
                font-size: 19px;
                width: 160px;
                height: 45px;
                background: #1E293B;
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
                border-radius: 20px;
                text-align: center;
                position: fixed;
                top: 30px;
                left: 1110px;
            }

            #contact-login:hover {
                background-color: #9F79C7;
            }

            input[type="submit"]:hover {
                background-color: #9F79C7;
            }

            #header {
                font-style: italic;
                color: rgba(30, 41, 59, 0.50);
                margin-top: 0;
                text-align: center;
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
            }

            #footer {
                font-style: italic;
                color: rgba(30, 41, 59, 0.50);
                margin-top: auto;
                text-align: center;
                position: fixed;
                bottom: 0;
                left: 0;
                right: 0;
            }
        </style>
    </head>

    <body>
        <div id="header">
            <p style="font-family: Courier New;"><% out.print(getServletContext().getInitParameter("name")); %> <% out.print(getServletContext().getInitParameter("section"));%></p>
        </div>

        <div class="site-login">al.</div>

        <!--  <form action="https://activelearning.ph/contact/" method="get" target="_blank">
              <input id="contact-login" type="submit" value="Contact Us">
          </form> -->
        <img src="https://i.postimg.cc/YC3DVFY3/POchacho-error.png" alt="Girl in a jacket">

        <div class="Error-message">
            <h1>Oopss!<h1>
                    <h2>Page Not Found</h2>
                    <p>The page you're looking for could not be found on this server.</p>
                    <p>Please check the URL for any mistakes or navigate back to the previous page.</p>
                    </div>

                    <!--<div class="container1-login"></div> --->
                    <!-- <div class="container2-login"></div> -->
                    <div class="container3-login">

                        <form action="http://localhost:8080/ICS2609/index.jsp" method="post">
                            <input type="submit" value="Return">
                        </form>
                    </div>

                    <div id="footer"
                         <p style="font-family: Courier New;"><% out.print(getServletContext().getAttribute("date"));%> <% out.print(getServletContext().getInitParameter("subject")); %> <% out.print(getServletContext().getInitParameter("mp"));%></p>
                    </div>
                    </body>
                    </html>
