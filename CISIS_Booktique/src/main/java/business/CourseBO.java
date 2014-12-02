/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import beans.Course;
import database.CourseDAO;
import java.util.ArrayList;

/**
 *
 * @author Robert
 */
public class CourseBO {
    
        public static ArrayList<Course> getCourses(){
    return CourseDAO.getCourses();
}

public static void insertCourse(Course course) throws Exception{
    CourseDAO.insertCourse(course);
}

public static void deleteCourse(int courseId) throws Exception{
    CourseDAO.deleteCourse(courseId);
}
    
}
