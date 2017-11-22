
<%@page import = "java.sql.*"%>
<%
    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String type = request.getParameter("type");
    

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database","root","root");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into user_info(firstname,lastname,email,password,type)values('"+fname+"','"+lname+"','"+email+"','"+password+"','"+type+"')");
    
    if(i>0){
        response.sendRedirect("login.html");
    }
    else{
        
        response.sendRedirect("index.html");
    }
%>