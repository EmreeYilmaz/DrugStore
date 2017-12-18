package controller;

import beans.Doctor;
import java.sql.*;
import database.ConnectionProvider;
import java.util.ArrayList;
import java.util.*;
import java.util.logging.*;

public class DoctorDao {

    public static void addDoctor(beans.Doctor d) {

        
        String firstname  = d.getFirstName();
        String lastname = d.getLastName();
        String email = d.getEmail();
        String password = d.getPassword();
        String type = d.getType();

        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("insert into user_info(firstname,lastname,email,password,type) values(?,?,?,?,?)");
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, email);
            ps.setString(4, password);
            ps.setString(5, type);

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

    public static ResultSet takeAllDoctor() throws SQLException {

        Connection con = ConnectionProvider.getCon();

        PreparedStatement pstmt = con.prepareStatement("select * from drug");

        ResultSet rs = pstmt.executeQuery();

        return rs;
    }

}
