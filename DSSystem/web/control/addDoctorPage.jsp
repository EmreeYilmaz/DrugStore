<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.DoctorDao"%>
<jsp:useBean id = "dbbean" scope = "session" class = "controller.LoginDao" >
</jsp:useBean>
<jsp:setProperty name = "dbbean" property = "*" />

<jsp:useBean id = "doctor" class = "beans.Doctor" >
</jsp:useBean>
<jsp:setProperty name = "doctor" property = "*" />
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
           
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
             String email = request.getParameter("email");
            String password = request.getParameter("password");
             String type = request.getParameter("type");

            if (email != null && password != null) {
                System.out.println("email: " + email + " password " + password);
                DoctorDao.addDoctor(doctor);
                
            }
        %>
        <div id="header">
            <div class="clearfix">
                <div class="logo">
                    <a href="index.html" title="fff"></a>
                </div>
                <ul class="navigation">
                    

                    <li>
                        <a href="Login.html">Logout</a>
                    </li>
                </ul>
            </div>
        </div>

        <div id="contents">
            <div class="clearfix">
                <div class="main">
                    <h1>Add Doctor</h1>
                    <form action="addDoctorPage.jsp" method="post" class="message">

                       

                        <label>First Name: </label>
                        <input type="text" name="firstname"  placeholder="First Name" onclick=" this.value = ''"/>

                        <label>Last Name:  </label>
                          <input type="text" name="lastname"  placeholder="Last Name" onclick=" this.value = ''">
                         
                         <label>Email: </label>
                        <input type="text" name="email"  placeholder="Email" onclick=" this.value = ''"/>
                        
                         <label>Password: </label>
                        <input type="text" name="password"  placeholder="Password" onclick=" this.value = ''"/>
                        
                        <label>Type: </label>
                        <input type="text" name="type"  placeholder="Type" onclick=" this.value = ''"/>
                        &nbsp;
                        <br> <input type="submit" name ="create" value="Create" ></br>
                    </form>
                </div>
            </div>
        </div>


    </body>
</html>