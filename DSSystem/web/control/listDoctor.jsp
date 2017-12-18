<%@page import="java.sql.ResultSet"%>
<%@page import="controller.DoctorDao"%>
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
        <title>All Drugs</title>
    </head>
    <body>
        
       <%
      
            ResultSet table = DoctorDao.takeAllDoctor();

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
                    <h1>All Drugs</h1>
                    <form action="addDoctorPage.jsp" method="post" class="message">
                        <table>

                            <tr>
                                

                                <th>First Name</th>

                                <th>Last Name</th>
                                
                                <th>Email</th>
                                
                                <th>Password</th>
                                
                                <th>Type</th>
                            </tr>


                            <% while (table.next()) {%>   
                            <tr>    

                                <td>            
                                    <%out.print(table.getString("firstname"));%> 
                                </td>
                                <td>            
                                    <%out.print(table.getString("lastname"));%> 
                                </td>
                                <td>
                                    <%out.print(table.getString("email"));%>           
                                </td>
                                <td>
                                    <%out.print(table.getString("password"));%>           
                                </td>
                                <td>
                                    <%out.print(table.getString("type"));%>           
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