package controller;

import java.sql.*;
import database.ConnectionProvider;

public class RegisterDao {

    public static int register(beans.User u) {
        int status = 0;
        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("insert into user_info(firstname,lastname,email,password,type) values(?,?,?,?,?)");
            ps.setString(1, u.getFirstName());
            ps.setString(2, u.getLastName());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getPassword());
            ps.setString(5, u.getType());

            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return status;
    }
}
