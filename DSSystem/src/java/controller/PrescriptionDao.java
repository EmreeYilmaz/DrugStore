package controller;

import beans.Prescription;
import java.sql.*;
import database.ConnectionProvider;
import java.util.ArrayList;
import java.util.*;
import java.util.logging.*;

public class PrescriptionDao {

    public static void createPrescription(beans.Prescription d) {

        String userid = d.getUserID();
        String prescriptionid = d.getPrescriptionID();
        String drugname = d.getDrugName();

        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("insert into prescriptions(userID,prescriptionID,drugname) values(?,?,?)");
            ps.setString(1, userid);
            ps.setString(2, prescriptionid);
            ps.setString(3, drugname);

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

    public static ResultSet takeAllPrescription() throws SQLException {

        Connection con = ConnectionProvider.getCon();

        PreparedStatement pstmt = con.prepareStatement("select * from prescriptions");

        ResultSet rs = pstmt.executeQuery();

        return rs;
    }
    
     public static boolean deletePrescription(String id) throws SQLException {
        try {

            Connection con = ConnectionProvider.getCon();
           
            PreparedStatement pstmt = con.prepareStatement("delete from prescriptions where userID = ?");
            pstmt.setString(1, id);
            pstmt.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }

        return true;
    }
       
    public static boolean editDoctor(beans.User u) throws SQLException {
        try {
            Connection con = ConnectionProvider.getCon();
            ResultSet rs;

            PreparedStatement ps = con.prepareStatement("update user_info set firstname = ?, lastname = ?, email = ?, password = ?");

            ps.setString(1, u.getFirstName());
            ps.setString(2, u.getLastName());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getPassword());
        
            ps.executeUpdate();
        } catch (Exception ex) {
            System.out.println("Exception: " + ex.getMessage());
            return false;
        }
        return true;
    }

}
