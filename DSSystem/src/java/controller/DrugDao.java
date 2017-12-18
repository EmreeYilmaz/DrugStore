package controller;

import beans.Drug;
import java.sql.*;
import database.ConnectionProvider;
import java.util.ArrayList;
import java.util.*;
import java.util.logging.*;

public class DrugDao {

    public static void addDrug(beans.Drug d) {

        
        String prescriptionid = d.getPrescriptionID();
        String drugname = d.getDrugName();
        String type = d.getType();
        String date = d.getDate();

        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("insert into drug(prescriptionID,drugName,type,date) values(?,?,?,?)");
            ps.setString(1, prescriptionid);
            ps.setString(2, drugname);
            ps.setString(3, type);
            ps.setString(4, date);

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

    public static ResultSet takeAllDrug() throws SQLException {

        Connection con = ConnectionProvider.getCon();

        PreparedStatement pstmt = con.prepareStatement("select * from drug");

        ResultSet rs = pstmt.executeQuery();

        return rs;
    }

}