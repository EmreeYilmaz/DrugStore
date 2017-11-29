<%@ page import ="java.sql.*" %>
<%
    String userEmail = request.getParameter("email");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user_info where email='" + userEmail + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("email", userEmail);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("MainPage.html");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>