/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import beans.Publisher;
import business.PublisherBO;
import forms.Menu;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author Nathan Ryan
 */
@Controller
@RequestMapping("publisher")
public class PublisherController {
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView onSubmit(HttpServletRequest request, @ModelAttribute("publisher") Publisher publisher) {
        //pass validation if they enter "TEST" and "TEST"
        String informationMessage = "";
        String errorMessage = "";
        String publisherToDelete = request.getParameter("delete");
        if (!(publisherToDelete == null || publisherToDelete.isEmpty())) {
            try {
                PublisherBO.deletePublisher(Integer.parseInt(publisherToDelete));
                informationMessage = "Publisher deleted";
            } catch (Exception ex) {
                System.out.println("Error deleting publisher");
                errorMessage= "Error deleting publisher";
            }
        } else {

            System.out.println("About to add a publisher (" + publisher.getName() + ")");
            try {
                PublisherBO.insertPublisher(publisher);
                informationMessage = "Publisher added";
            } catch (Exception ex) {
                errorMessage = "Error adding publisher";
                System.out.println("Error inserting publisher");
            }
        }

        ModelAndView mv;
        mv = new ModelAndView("publisher");
        mv.addObject("publishers", PublisherBO.getPublishers());
        mv.addObject("errorMessage",errorMessage);
        mv.addObject("informationMessage",informationMessage);
        mv.addObject("menu", new Menu());

        return mv;
    }
      
}
