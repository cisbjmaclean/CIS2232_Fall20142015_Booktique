/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import beans.Course;
import business.CourseBO;
import forms.Menu;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author Robert
 */
@Controller
@RequestMapping("course")
public class CourseController {
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView onSubmit(HttpServletRequest request, @ModelAttribute("course") Course course) {
        //pass validation if they enter "TEST" and "TEST"
        String informationMessage = "";
        String errorMessage = "";
        String courseToDelete = request.getParameter("delete");
        if (!(courseToDelete == null || courseToDelete.isEmpty())) {
            try {
                CourseBO.deleteCourse(Integer.parseInt(courseToDelete));
                informationMessage = "Course deleted";
            } catch (Exception ex) {
                System.out.println("Error deleting course");
                errorMessage= "Error deleting course";
            }
        } else {

            System.out.println("About to add a course (" + course.getCourseName() + ")");
            try {
                CourseBO.insertCourse(course);
                informationMessage = "Course added";
            } catch (Exception ex) {
                errorMessage = "Error adding course";
                System.out.println("Error inserting course");
            }
        }

        ModelAndView mv;
        mv = new ModelAndView("course");
        mv.addObject("courses", CourseBO.getCourses());
        mv.addObject("errorMessage",errorMessage);
        mv.addObject("informationMessage",informationMessage);
        mv.addObject("menu", new Menu());

        return mv;
    }
      
}
