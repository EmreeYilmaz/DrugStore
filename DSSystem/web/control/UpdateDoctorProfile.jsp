<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<jsp:useBean id = "user"  class = "controller.PrescriptionDao" >
</jsp:useBean>
<jsp:setProperty name = "user" property = "*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Information Page</title>
    </head>
    <body>
        <%
            String submit = request.getParameter("Edit");

            if (submit.equals("Edit")) {
                (request.getParameter("firstname"));
                dbbean.getLastName(request.getParameter("firstname"));
                dbbean.getEmail(request.getParameter("lastname"));
                dbbean.getPassword(request.getParameter("email"));

                boolean isSuccess = dbbean.editDonator(username);
                if (isSuccess) {%>
        <jsp:forward page="donatorinfosuccess.jsp"/>
        <% } else {%>
        <jsp:forward page="donatorinfoerror.jsp"/>
        <% }
            }
        %>
    </body>
</html>
