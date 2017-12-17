package controller;

import java.sql.*;
import database.ConnectionProvider;

public class PrescriptionDao {

    public static int createPrescription(beans.drugs d) {
        int status = 0;
        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("insert into yeni_tablo(prescriptionid,drugname) values(?,?)");
            ps.setString(1, d.getPrescriptionID());
            ps.setString(2, d.getDrugName());
          

            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return status;
    }
    
       public String takeDoctorName(String email) throws SQLException {
        Connection con = ConnectionProvider.getCon();
        ResultSet rs;
        PreparedStatement ps = con.prepareStatement("select firstname from user_info where email = ?");
        ps.setString(1, email);
        rs = ps.executeQuery();
        rs.first();

        return rs.getString("firstname");
    }
}
