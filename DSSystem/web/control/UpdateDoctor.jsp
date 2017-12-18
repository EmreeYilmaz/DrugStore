
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id = "dbbean" scope = "session" class = "controller.LoginDao" >
</jsp:useBean>

<jsp:useBean id = "user" scope = "session" class = "beans.User" >
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
           if (session.getAttribute("email") == null) {
                response.sendRedirect("drugspage.html");
            }
            String email = (String) session.getAttribute("email");
            String firstname = dbbean.takeDoctorName(email);

            String submit = request.getParameter("Edit");

            if (submit.equals("submit")) {
                user.setFirstName(request.getParameter("firstName"));
                user.setLastName(request.getParameter("lastName"));
                user.setEmail(request.getParameter("email"));
                user.setPassword(request.getParameter("password"));

                boolean isSuccess = dbbean.editDoctor(email);

            if (isSuccess) {%>
                <jsp:forward page="DoctorProfile.jsp"/>
            <% } else {%>
                <jsp:forward page="DoctorProfile.jsp"/>
            <% }
        }
    %>
</body>
</html>
