
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id = "dbbean" scope = "application" class = "beans.drugs" >
</jsp:useBean>
<jsp:setProperty name = "dbbean" property = "*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Foundation Register Page</title>
    </head>
    <body>
        <%
            String submit = request.getParameter("create");
            
            if (submit.equals("submit")) {
                dbbean.setPrescriptionID(request.getParameter("prescriptionid"));
                dbbean.setDrugName(request.getParameter("drugname"));

                boolean isSuccess = dbbean.addFoundation();
                if (isSuccess) {%>
        <jsp:forward page="userRegistered.html"/>
        <% } else {%>
        <jsp:forward page="registererror.html"/>
        <% }
        %>
    </body>
</html>
