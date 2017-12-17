<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.PrescriptionDao"%>
<jsp:useBean id = "dbbean" scope = "session" class = "controller.LoginDao" >
</jsp:useBean>
<jsp:setProperty name = "dbbean" property = "*" />

<jsp:useBean id = "drug" class = "beans.Drugs" >
</jsp:useBean>
<jsp:setProperty name = "drug" property = "*" />
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
        <%
            String userid = request.getParameter("userID");
            String prescriptionid = request.getParameter("prescriptionID");
            String drugname = request.getParameter("drugName");

            if (prescriptionid != null && drugname != null) {
                System.out.println("presid: " + prescriptionid + " drgunmae: " + drugname);
                PrescriptionDao.createPrescription(drug);
            }
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
                    <h1>Create Prescription</h1>
                    <form action="CreationPrescriptionPage.jsp" method="post" class="message">

                        <label>User ID: </label>
                        <input type="text" name="userID"  placeholder="Prescription ID" onclick=" this.value = ''"/>

                        <label>Prescription ID: </label>
                        <input type="text" name="prescriptionID"  placeholder="Prescription ID" onclick=" this.value = ''"/>

                        <label>Drug Name:  </label>
                        <br>   <input type="text" name="drugName"  placeholder="Drug Name" onclick=" this.value = ''"/></br>

                        &nbsp;
                        <br> <input type="submit" name ="create" value="Create" ></br>
                    </form>
                </div>
            </div>
        </div>


    </body>
</html>
