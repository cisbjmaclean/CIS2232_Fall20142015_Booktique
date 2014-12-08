/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;
import beans.Course;
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
public class CourseDAO {
    public static void insertCourse(Course course) throws Exception {
        System.out.println("inserting course");
        PreparedStatement ps = null;
        String sql = null;
        Connection conn = null;

        /*
         * Setup the sql to update or insert the row.
         */
        try {
            conn = ConnectionUtils.getConnection();

            sql = "INSERT INTO `course`(`course_id`,"
                    + "`course_name`)"
                    + "VALUES (?, ?)";

            ps = conn.prepareStatement(sql);
            ps.setInt(1, course.getCourseId());
            ps.setString(2, course.getCourseName());

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
    public static void deleteCourse(int courseId) throws Exception{
        
        System.out.println("deleting course");
        PreparedStatement ps = null;
        String sql = null;
        Connection conn = null;

        /*
         * Setup the sql to update or insert the row.
         */
        try {
            conn = ConnectionUtils.getConnection();

            sql = "delete from course "
                + "where course_id = ? ";

            ps = conn.prepareStatement(sql);
            ps.setInt(1, courseId);

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
        

    
    public static ArrayList<Course> getCourses() {
        ArrayList<Course> courses = new ArrayList();
        PreparedStatement ps = null;
        String sql = null;
        Connection conn = null;
        try {
            conn = ConnectionUtils.getConnection();

            sql = "SELECT * FROM course ";

            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Course newCourse = new Course();
                newCourse.setCourseId(rs.getInt("course_id"));
                newCourse.setCourseName(rs.getString("course_name"));
                courses.add(newCourse);
            }
        } catch (Exception e) {
            String errorMessage = e.getMessage();
            e.printStackTrace();
        } finally {
            DbUtils.close(ps, conn);
        }
        System.out.println("DEBUGGING-Found "+courses.size()+" courses");
        return courses;
    }
}
