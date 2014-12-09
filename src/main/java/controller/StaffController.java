package controller;

import beans.Book;
import beans.Staff;
import business.BookBO;
import business.StaffBO;
import database.StaffDAO;
import forms.Menu;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("staff")
public class StaffController {

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView onSubmit(HttpServletRequest request, @ModelAttribute("staff") Staff staff) {
		String informationMessage = "";
		String errorMessage = "";

		System.out.println(String.format("About to add staff %s %s",staff.getFirstName(),staff.getLastName()));
		StaffBO.insertStaff(staff);

		ModelAndView mv = new ModelAndView("staff");
		mv.addObject("staffMembers", StaffBO.getStaff());
		mv.addObject("menu", new Menu());
		return mv;
	}

}
