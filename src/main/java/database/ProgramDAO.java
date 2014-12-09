/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import beans.Program;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import util.ConnectionUtils;
import util.DbUtils;
/**
 *
 * @author Robert
 */
public class ProgramDAO {
    /**
     * This method will insert.
     *
     * @return
     * @author BJ
     * @since 20140615
     */
    public static void insertProgram(Program program) throws Exception {
        System.out.println("inserting program");
        PreparedStatement ps = null;
        String sql = null;
        Connection conn = null;

        /*
         * Setup the sql to update or insert the row.
         */
        try {
            conn = ConnectionUtils.getConnection();

            sql = "INSERT INTO `program`(`program_account_id`,"
                    + "`program_name`)"
                    + "VALUES (?, ?)";

            ps = conn.prepareStatement(sql);
            ps.setInt(1, program.getProgramAccountId());
            ps.setString(2, program.getProgramName());

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

    /**
     * Delete the specified member education (set to inactive)
     * @param memberId
     * @param memberEducationSequence 
     */
    public static void deleteProgram(int programAccountId) throws Exception{
        
        System.out.println("deleting program");
        PreparedStatement ps = null;
        String sql = null;
        Connection conn = null;

        /*
         * Setup the sql to update or insert the row.
         */
        try {
            conn = ConnectionUtils.getConnection();

            sql = "delete from program "
                + "where program_account_id = ? ";

            ps = conn.prepareStatement(sql);
            ps.setInt(1, programAccountId);

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
        

    
    public static ArrayList<Program> getPrograms() {
        ArrayList<Program> programs = new ArrayList();
        PreparedStatement ps = null;
        String sql = null;
        Connection conn = null;
        try {
            conn = ConnectionUtils.getConnection();

            sql = "SELECT * FROM program ORDER BY program_name ASC";

            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Program newProgram = new Program();
                newProgram.setProgramAccountId(rs.getInt("program_account_id"));
                newProgram.setProgramName(rs.getString("program_name"));
                programs.add(newProgram);
            }
        } catch (Exception e) {
            String errorMessage = e.getMessage();
            e.printStackTrace();
        } finally {
            DbUtils.close(ps, conn);
        }
        System.out.println("DEBUGGING-Found "+programs.size()+" programs");
        return programs;
    }
    
}
