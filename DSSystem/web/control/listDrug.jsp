<%@page import="java.sql.ResultSet"%>
<%@page import="controller.DrugDao"%>
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

            ResultSet table = DrugDao.takeAllDrug();

        %>
        <div id="header">
            <div class="clearfix">
                <div class="logo">
                    <a href="index.html" title="fff"></a>
                </div>
                <ul class="navigation">
                    
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
                    <form action="addDrugPage.jsp" method="post" class="message">
                        <table>

                            <tr>
                                

                                <th>Prescription ID</th>

                                <th>Drug Name</th>
                                
                                <th>Type</th>
                                
                                <th>Date</th>
                            </tr>


                            <% while (table.next()) {%>   
                            <tr>    

                                <td>            
                                    <%out.print(table.getString("prescriptionID"));%> 
                                </td>
                                <td>            
                                    <%out.print(table.getString("prescriptionID"));%> 
                                </td>
                                <td>
                                    <%out.print(table.getString("type"));%>           
                                </td>
                                <td>
                                    <%out.print(table.getString("date"));%>           
                                </td>
                                <td>            
                                    <input type="radio" name="uid" value="">
                                </td>
                            </tr>
                            <%}%>
                        </table>

                        &nbsp;

                        <center><p><input type = "submit" name = "Submit" value = "Delete"/></p></center>

                    </form>

                </div>
            </div>
        </div>

    </body>
</html>