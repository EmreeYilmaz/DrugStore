package controller;

import beans.Drugs;
import java.sql.*;
import database.ConnectionProvider;
import java.util.ArrayList;
import java.util.*;
import java.util.logging.*;

public class PrescriptionDao {

    public static void createPrescription(beans.Drugs d) {

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

}
