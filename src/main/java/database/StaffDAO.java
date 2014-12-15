/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import beans.Staff;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.ConnectionUtils;
import util.DbUtils;

/**
 *
 * @author brandon
 */
public class StaffDAO {
    private static final String INSERT_STATEMENT = "INSERT INTO staff (staff_fname, staff_lname, staff_email, staff_phone) VALUES (?,?,?,?)";
    private static final String RETRIEVE_STAFF = "SELECT * FROM staff";

	public static void insertStaff(Staff staff) {
		insertStaff(staff.getFirstName(),staff.getLastName(),staff.getEmail(),staff.getPhoneNumber());
	}

    public static void insertStaff(String firstName, String lastName, String email, String phoneNumber) {      
        Connection conn = null;

        try {
            conn = ConnectionUtils.getConnection();
        } catch (Exception ex) {
            Logger.getLogger(StaffDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        if (conn == null) {
            return;
        }
        
        try {
            PreparedStatement statement = conn.prepareStatement(INSERT_STATEMENT);
            statement.setString(1, firstName);
            statement.setString(2,lastName);
            statement.setString(3,email);
            statement.setString(4,phoneNumber);
            
            statement.executeUpdate();
            
            System.out.println("Inserted new staff member!");
        } catch (SQLException ex) {
            Logger.getLogger(StaffDAO.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        } finally {
            DbUtils.close(conn);
        }
    }
    
    public static List<Staff> getStaff() {
        Connection conn = null;
        
        List<Staff> staffMembers = new ArrayList();
        
        try {
            conn = ConnectionUtils.getConnection();
        } catch (Exception ex) {
            Logger.getLogger(StaffDAO.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
        
        if (conn == null) {
            return null;
        }
        
        PreparedStatement statement = null;
        
        try {
            statement = conn.prepareStatement(RETRIEVE_STAFF);
        
            ResultSet staffResults = statement.executeQuery();
        
            /*
            For each result that's returned, create and add the staff member to the list of staff.
            */
            while (staffResults.next()) {
                
                staffMembers.add(
                        new Staff()
                        .firstName(staffResults.getString("staff_fname"))
                        .lastName(staffResults.getString("staff_lname"))
                        .email(staffResults.getString("staff_email"))
                        .phoneNumber(staffResults.getString("staff_phone"))
                );
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(StaffDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DbUtils.close(conn);
        }
        
        return staffMembers;
    }
    
}
