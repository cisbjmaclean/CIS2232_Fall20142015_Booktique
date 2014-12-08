 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;
import beans.Publisher;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import util.ConnectionUtils;
import util.DbUtils;
/**
 *
 * @author Nathan Ryan
 */
public class PublisherDAO {
    public static void insertPublisher(Publisher publisher ) throws Exception {
        System.out.println("inserting publisher");
        PreparedStatement ps = null;
        String sql = null;
        Connection conn = null;

        /*
         * Setup the sql to update or insert the row.
         */
        try {
            conn = ConnectionUtils.getConnection();

            sql = "INSERT INTO `publisher`"
                    + "(`publisher_id`,"
                    + "`publisher_name`,"
                    + "`publisher_return_address`,"
                    + "`publisher_email`,"
                    + "`publisher_phone`,"
                    + "`publisher_fax`,"
                    + "`publisher_notes`)"
                    + "VALUES (?, ?, ?, ?, ?, ?, ?)";

            ps = conn.prepareStatement(sql);
            ps.setInt(1, publisher.getPublisherId());
            ps.setString(2, publisher.getName());
            ps.setString(3, publisher.getReturnAddress());
            ps.setString(4, publisher.getEmail());
            ps.setString(5, publisher.getPhone());
            ps.setString(6, publisher.getFax());
            ps.setString(7, publisher.getNotes());

            ps.executeUpdate();

        } catch (Exception e) {
            String errorMessage = e.getMessage();
            e.printStackTrace();
            throw e;
        } finally {
            DbUtils.close(ps, conn);
        }
        return;

    }

    
    public static void deletePublisher(int publisherId) throws Exception{
        
        System.out.println("deleting publisher");
        PreparedStatement ps = null;
        String sql = null;
        Connection conn = null;

        /*
         * Setup the sql to update or insert the row.
         */
        try {
            conn = ConnectionUtils.getConnection();

            sql = "delete from publisher "
                + "where publisher_id = ? ";

            ps = conn.prepareStatement(sql);
            ps.setInt(1, publisherId);

            ps.executeUpdate();

        } catch (Exception e) {
            String errorMessage = e.getMessage();
            e.printStackTrace();
            throw e;
        } finally {
            DbUtils.close(ps, conn);
        }
        return;

    }
        

    
    public static ArrayList<Publisher> getPublishers() {
        ArrayList<Publisher> publishers = new ArrayList();
        PreparedStatement ps = null;
        String sql = null;
        Connection conn = null;
        try {
            conn = ConnectionUtils.getConnection();

            sql = "SELECT * FROM publisher ";

            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Publisher newPublisher = new Publisher();
                newPublisher.setPublisherId(rs.getInt("publisher_id"));
                newPublisher.setName(rs.getString("publisher_name"));
                newPublisher.setReturnAddress(rs.getString("publisher_return_address"));
                newPublisher.setEmail(rs.getString("publisher_email"));
                newPublisher.setPhone(rs.getString("publisher_phone"));
                newPublisher.setFax(rs.getString("publisher_fax"));
                newPublisher.setNotes(rs.getString("publisher_notes"));
                publishers.add(newPublisher);
            }
        } catch (Exception e) {
            String errorMessage = e.getMessage();
            e.printStackTrace();
        } finally {
            DbUtils.close(ps, conn);
        }
        System.out.println("DEBUGGING-Found "+publishers.size()+" publishers");
        return publishers;
    }
}
