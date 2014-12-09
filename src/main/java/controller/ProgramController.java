/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.Program;
import business.ProgramBO;
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
@RequestMapping("program")
public class ProgramController {
    
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView onSubmit(HttpServletRequest request, @ModelAttribute("program") Program program) {
        //pass validation if they enter "TEST" and "TEST"
        String informationMessage = "";
        String errorMessage = "";
        String programToDelete = request.getParameter("delete");
        if (!(programToDelete == null || programToDelete.isEmpty())) {
            try {
                ProgramBO.deleteProgram(Integer.parseInt(programToDelete));
                informationMessage = "Program deleted";
            } catch (Exception ex) {
                System.out.println("Error deleting program");
                errorMessage= "Error deleting program";
            }
        } else {

            System.out.println("About to add a program (" + program.getProgramName() + ")");
            try {
                ProgramBO.insertProgram(program);
                informationMessage = "Program added";
            } catch (Exception ex) {
                errorMessage = "Error adding program";
                System.out.println("Error inserting program");
            }
        }

        ModelAndView mv;
        mv = new ModelAndView("program");
        mv.addObject("programs", ProgramBO.getPrograms());
        mv.addObject("errorMessage",errorMessage);
        mv.addObject("informationMessage",informationMessage);
        mv.addObject("menu", new Menu());

        return mv;
    }
      
}
