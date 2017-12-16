<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id = "dbbean" scope = "session" class = "controller.LoginDao" >
</jsp:useBean>
<jsp:setProperty name = "dbbean" property = "*" />

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Law Firm</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <%
            if (session.getAttribute("email") == null) {
                response.sendRedirect("drugspage.html");
            }
            String email = (String) session.getAttribute("email");
            String firstname = dbbean.takeDoctorName(email);
        %>

        <div class="featured">
            <h2>Drugs</h2>
            <ul class="clearfix">
                <li>
                    <div class="frame1">
                        <div class="box">
                            <img src="images/meeting.jpg" alt="Img" height="130" width="197">
                        </div>
                    </div>
                    <p>
                        <b>Drug 1
                    </p>
                    <a href="index.html" class="more">Add To Cart</a>
                </li>
                <li>
                    <div class="frame1">
                        <div class="box">
                            <img src="images/handshake.jpg" alt="Img" height="130" width="197">
                        </div>
                    </div>
                    <p>
                        <b>Drug 2
                    </p>
                    <a href="index.html" class="more">Add To Cart</a>
                </li>
                <li>
                    <div class="frame1">
                        <div class="box">
                            <img src="images/smile.jpg" alt="Img" height="130" width="197">
                        </div>
                    </div>
                    <p>
                        <b>Drug 3
                    </p>
                    <a href="index.html" class="more">Add To Cart</a>
                </li>
                <li>
                    <div class="frame1">
                        <div class="box">
                            <img src="images/family-small.jpg" alt="Img" height="130" width="197">
                        </div>
                    </div>
                    <p>
                        <b>Drug 4
                    </p>
                    <a href="index.html" class="more">Add To Cart</a>
                </li>
            </ul>
        </div>

    </body>
</html>
