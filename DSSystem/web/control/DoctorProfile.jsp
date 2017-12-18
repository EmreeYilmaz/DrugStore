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
                        <a href="DoctorProfile.jsp">Doctor: <%= firstname%></a>

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
                    <h1>Edit Doctor Profile</h1>
                    <form action="controller/Registration.jsp" method="post" class="message">
                        <label>First Name: </label>
                        <input type="text" name="firstName"  placeholder="First Name" onclick=" this.value = ''"/><br/> 

                        <label>Last Name: </label>
                        <input type="text" name="lastName"  placeholder="Last Name" onclick=" this.value = ''"/><br/> 

                        <label>E-mail: </label>
                        <input type="text" name="email"  placeholder="E-mail" onclick=" this.value = ''"/><br/>  

                        <label>Password: </label>
                        <input type="text" name="password"  placeholder="Password" onclick=" this.value = ''"/><br/>  

                        <input type="submit" value="Register">
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
