<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id = "dbbean" scope = "session" class = "controller.LoginDao" >
</jsp:useBean>
<jsp:setProperty name = "dbbean" property = "*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles.css" />
    <title>User Page</title>
</head>
<body>
    <%
        if(session.getAttribute("email") == null){
            response.sendRedirect("drugspage.html");
        }
        String email = (String)session.getAttribute("email");
        String firstname = dbbean.takeAdminname(email);
    %>
    <div class="pagewidth">

        <div class="header">
            <!-- TITLE -->
            <h1><a href="index.jsp">Donation Manager System</a></h1>
            <h2>Işık University</h2>
            <!-- END TITLE -->
        </div>

        <div class="nav">
            <ul>	
                <!-- MENU -->
                <li><a href="admin.jsp">Home</a></li>
                <li><a href="logout.jsp">Logout</a></li>
                <!-- END MENU -->
            </ul>
        </div>

        <div class="page-wrap">
            <div class="content">

                <!-- CONTENT -->
                <h2>Admin Page</h2>
                <p>Welcome to Admin Page</p>
                <br></br>
                <li><a href="acceptfoundation.jsp">Accept Foundation</a></li>
                <li><a href="deletefoundation.jsp">Remove Foundation</a></li>
                <li><a href="deletedonator.jsp">Remove Donator</a></li>
                <br/><br/>

                <!-- END CONTENT -->

            </div>

                <div class="sidebar">	

                <!-- SIDEBAR -->	

                <h4 style="color: darkorange;">Welcome Admin: <%= firstname %> </h4>	

                <h4>Links</h4>
                <ul class="blocklist">
                    <li><a href="stocklist.jsp">Stock Room</a></li>
                    <li><a href="alldonations.jsp">All Donations</a></li>
                    <li><a href="checkDonations.jsp">Check Donations</a></li>
                    <li><a href="checkRequests.jsp">Check Requests</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>

                <!-- SIDEBAR -->

                </div> 

            <div class="clear"></div>		
        </div>
        
        <div class="footer">
            <p> &copy; Donation Manager System </p> 
        </div>	
    </div>

</body>
</html>
