<%@page import="java.sql.ResultSet"%>
<%@page import="controller.PrescriptionDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:setProperty name = "dbbean" property = "*" />


<jsp:useBean id = "prescription" class = "beans.Prescription" >
</jsp:useBean>
<jsp:setProperty name = "prescription" property = "*" /> 


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Donation Action</title>
    </head>
    <body>
        <%

            String submit = request.getParameter("Delete");

            if (submit.equals("Delete")) {
                String userid = request.getParameter("userID");

                boolean isSuccess = PrescriptionDao.deletePrescription(userid);

                if (isSuccess) {%>
        <jsp:forward page="ListPrescription.jsp"/>
        <% } else {%>
        <jsp:forward page="ListPrescription.jsp"/>
        <% }
            }
        %>

    </body>
</html>
