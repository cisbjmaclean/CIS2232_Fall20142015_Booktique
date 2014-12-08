package controller;

import beans.*;
import business.*;
import forms.Menu;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Controller for the Welcome
 *
 * @author bjmaclean
 */
@Controller
@RequestMapping("menu")
public class MenuController {

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView onSubmit(@ModelAttribute("menu") Menu menu, HttpServletRequest request) {
        //pass validation if they enter "TEST" and "TEST"
        System.out.println("Menu post invoked");
        ModelAndView mv;
        if (menu.getAction().equalsIgnoreCase("Logout")) {
            mv = new ModelAndView("welcome");
        } else if (menu.getAction().equalsIgnoreCase("Make Payment")) {
            System.out.println("Payment functionaity to be completed");
            mv = new ModelAndView("main");
            mv.addObject("informationMessage", "Payment functionaity to be completed");
        } else if (menu.getAction().equalsIgnoreCase("Reports")) {
            System.out.println("User wants to view reports");
            mv = new ModelAndView("main");
            mv.addObject("informationMessage", "Reports to be determined");
        } else if (menu.getAction().equalsIgnoreCase("My Information")) {
            System.out.println("User wants to view their information");
            mv = new ModelAndView("memberBio");
            mv.addObject("message", "User selected My information");
            mv.addObject("memberSquash",(MemberSquash) request.getSession().getAttribute("loggedInMember"));
        } else if (menu.getAction().equalsIgnoreCase("Add Notification")) {
            System.out.println("User wants to view add a notification");
            mv = new ModelAndView("notificationAdd");
            mv.addObject("notification",new Notification());
        } else if (menu.getAction().equalsIgnoreCase("View Codes")) {
            System.out.println("User wants to view the codes");
            mv = new ModelAndView("viewCodes");
            mv.addObject("message", "User selected view codes");
            mv.addObject("codeValue", new CodeValue());
        } else if (menu.getAction().equalsIgnoreCase("Members")) {
            System.out.println("User wants to view the members");
            mv = new ModelAndView("viewMembers");
            mv.addObject("members",MemberBO.getAllActiveMembers());
        } else if (menu.getAction().equalsIgnoreCase("Change Password")) {
            System.out.println("User wants to change password");
            mv = new ModelAndView("changePassword");
            ChangePassword cp = new ChangePassword();
            cp.setMemberId((String)request.getSession().getAttribute("loggedInUserId"));
            mv.addObject("changePassword",cp);
        } else if (menu.getAction().equalsIgnoreCase("Notifications")) {
            System.out.println("User wants to view the notifications");
            mv = new ModelAndView("notification");
            mv.addObject("notifications",NotificationBO.getNotifications());
            mv.addObject("menu", new Menu());
        }else if(menu.getAction().equalsIgnoreCase("Programs")){
            System.out.println("User wants to view the programs");
            mv = new ModelAndView("program");
            mv.addObject("programs", ProgramBO.getPrograms());
            mv.addObject("menu", new Menu());
        } else if (menu.getAction().equalsIgnoreCase("Add Program")) {
            System.out.println("User wants to view add a program");
            mv = new ModelAndView("programAdd");
            mv.addObject("program",new Program());
        }else if(menu.getAction().equalsIgnoreCase("Courses")){
            System.out.println("User wants to view the courses");
            mv = new ModelAndView("course");
            mv.addObject("courses", CourseBO.getCourses());
            mv.addObject("menu", new Menu());
        } else if (menu.getAction().equalsIgnoreCase("Add Course")) {
            System.out.println("User wants to view add a course");
            mv = new ModelAndView("courseAdd");
            mv.addObject("course",new Course());
        }else if(menu.getAction().equalsIgnoreCase("Books")){
            System.out.println("User wants to view the books");
            mv = new ModelAndView("book");
            mv.addObject("books", BookBO.getBooks());
            mv.addObject("menu", new Menu());
        } else if (menu.getAction().equalsIgnoreCase("Add Book")) {
            System.out.println("User wants to view add a book");
            mv = new ModelAndView("bookAdd");
            mv.addObject("book",new Book());
        }else if(menu.getAction().equalsIgnoreCase("Publishers")){
            System.out.println("User wants to view the publishers");
            mv = new ModelAndView("publisher");
            mv.addObject("publishers", PublisherBO.getPublishers());
            mv.addObject("menu", new Menu());
        } else if (menu.getAction().equalsIgnoreCase("Add Publisher")) {
			System.out.println("User wants to view add a publisher");
			mv = new ModelAndView("publisherAdd");
			mv.addObject("publisher", new Publisher());
		/* The actions related to managing staff and courses */
		} else if (menu.getAction().equalsIgnoreCase("Staff")) {
			mv = new ModelAndView("staff");
			mv.addObject("staffMembers", StaffBO.getStaff());
		} else if (menu.getAction().equalsIgnoreCase("Add Staff")) {
			System.out.println("User wants to add a staff member");
			mv = new ModelAndView("staffAdd");
			mv.addObject("staff", new Staff());
        } else {
            mv = new ModelAndView("welcome");
        }

        return mv;
    }
}
