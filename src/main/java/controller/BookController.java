/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import beans.Book;
import business.BookBO;
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
@RequestMapping("book")
public class BookController {
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView onSubmit(HttpServletRequest request, @ModelAttribute("book") Book book) {
        //pass validation if they enter "TEST" and "TEST"
        String informationMessage = "";
        String errorMessage = "";
        String bookToDelete = request.getParameter("delete");
        if (!(bookToDelete == null || bookToDelete.isEmpty())) {
            try {
                BookBO.deleteBook(Integer.parseInt(bookToDelete));
                informationMessage = "Book deleted";
            } catch (Exception ex) {
                System.out.println("Error deleting book");
                errorMessage= "Error deleting book";
            }
        } else {

            System.out.println("About to add a book (" + book.getText() + ")");
            try {
                BookBO.insertBook(book);
                informationMessage = "Book added";
            } catch (Exception ex) {
                errorMessage = "Error adding book";
                System.out.println("Error inserting book");
            }
        }

        ModelAndView mv;
        mv = new ModelAndView("book");
        mv.addObject("books", BookBO.getBooks());
        mv.addObject("errorMessage",errorMessage);
        mv.addObject("informationMessage",informationMessage);
        mv.addObject("menu", new Menu());

        return mv;
    }
      
}
