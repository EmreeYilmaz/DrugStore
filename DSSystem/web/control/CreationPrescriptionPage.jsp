<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id = "dbbean" scope = "session" class = "controller.LoginDao" >
</jsp:useBean>
<jsp:setProperty name = "dbbean" property = "*" />

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Drug Store</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" /> 
    </head>
    <body>
        <%
            if (session.getAttribute("email") == null) {
                response.sendRedirect("drugspage.html");
            }
            String email = (String) session.getAttribute("email");
            String firstname = dbbean.takeDoctorName(email);
        %>

        <div id="header">
            <div class="clearfix">
                <div class="logo">
                    <a href="index.html" title="fff"></a>
                </div>
                <ul class="navigation">
                    <li>
                        <a href="Register.html">Doctor: <%= firstname%></a>

                    </li>

                    <li>
                        <a href="Register.html">Logout</a>
                    </li>
                </ul>
            </div>
        </div>

        <div id="contents">
            <div class="clearfix">
                <div class="main">
                    <h1>Login</h1>
                    <form action="control/Login.jsp" method="post" class="message">
                        <label>E-mail: </label>
                        <input type="text" name="email"  placeholder="E-mail" onclick=" this.value = ''"/>

                        <label>Password: </label>
                        <input type="text" name="password"  placeholder="Password" onclick=" this.value = ''"/>

                        <label>User Type :</label>   

                        <input type="radio" name="usertype" value="1">User<br>
                        <input type="radio" name="usertype" value="2" checked>Doctor<br>


                        <input type="submit" value="Login">
                    </form>
                </div>
            </div>
        </div>


    </body>
</html>
