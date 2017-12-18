<%@page import="java.sql.ResultSet"%>
<%@page import="controller.PrescriptionDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id = "dbbean" class = "controller.LoginDao" >
</jsp:useBean>
<jsp:setProperty name = "dbbean" property = "*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tableStyle.css" />
        <title>All Donations</title>
    </head>
    <body>
        <%
            if (session.getAttribute("email") == null) {
                response.sendRedirect("drugspage.html");
            }
            String email = (String) session.getAttribute("email");
            String firstname = dbbean.takeDoctorName(email);

            ResultSet table = PrescriptionDao.takeAllPrescription();


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
                    <h1>All Prescriptions</h1>
                    <form action="DeletePrescription.jsp" method="post" class="message">
                        <table>

                            <tr>
                                <th>User ID</th>

                                <th>Prescription ID</th>

                                <th>Drug Name</th>
                            </tr>


                            <% while (table.next()) {%>   
                            <tr>    

                                <td>            
                                    <%out.print(table.getString("userID"));%> 
                                </td>
                                <td>            
                                    <%out.print(table.getString("prescriptionID"));%> 
                                </td>
                                <td>
                                    <%out.print(table.getString("drugname"));%>           
                                </td>
                                <td>            
                                    <input type="radio" name="userID" value="<%out.print(table.getString("userID"));%>"> <%out.print(table.getString("userID"));%>
                                </td>
                            </tr>
                            <%}%>
                        </table>

                        &nbsp;


                        <center><p><input type = "submit" name = "Delete" value = "Delete"/></p></center>



                    </form>


                </div>
            </div>
        </div>

    </body>
</html>

