package controller;

import database.ConnectionProvider;
import java.sql.*;

public class LoginDao {

    public static boolean login(String email, String password) throws SQLException {
        Connection con = ConnectionProvider.getCon();
        ResultSet rs;
        PreparedStatement ps = con.prepareStatement("select * from user_info where email = ? and password = ?");
        ps.setString(1, email);
        ps.setString(2, password);

        rs = ps.executeQuery();
        rs.first();

        if (rs.first()) {
            return true;
        } else {
            return false;
        }
    }

    public   String takeDoctorName(String email) throws SQLException {
        Connection con = ConnectionProvider.getCon();
        ResultSet rs;
        PreparedStatement ps = con.prepareStatement("select firstname from user_info where email = ?");
        ps.setString(1, email);
        rs = ps.executeQuery();
        rs.first();

        return rs.getString("firstname");
    }

    public static boolean editDoctor(String email) throws SQLException {
        try {
            Connection con = ConnectionProvider.getCon();
            ResultSet rs;

            PreparedStatement ps = con.prepareStatement("update user_info set firstname = ?, lastname = ?, email = ?, password = ?");

            ps.setString(1, email);
       

            ps.executeUpdate();
        } catch (Exception ex) {
            System.out.println("Exception: " + ex.getMessage());
            return false;
        }
        return true;
    }

}
