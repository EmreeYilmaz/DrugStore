<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id = "dbbean" scope = "session" class = "controller.LoginDao" >
</jsp:useBean>
<jsp:setProperty name = "dbbean" property = "*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>
</head>
<body>
    <%
        String submit = request.getParameter("Login");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String usertype = request.getParameter("usertype");
        
        int check = Integer.parseInt(usertype);
        
    %>        
    <%  if( check == 1 ) {
            if( dbbean.login(email,password) ){
                session.setAttribute("email", email);
                response.sendRedirect("Doctor.jsp");
            } else {%>
                <jsp:forward page="index.html"/>
            <%}
        } else if ( check == 2 ) {
            if( dbbean.login(email,password) ){
                session.setAttribute("email", email);
                response.sendRedirect("Doctor.jsp");
            } else {%>
                <jsp:forward page="index.html"/>
            <%}
        } else {%>
            <jsp:forward page="index.html"/>
        <%}%>        
</body>
</html>
