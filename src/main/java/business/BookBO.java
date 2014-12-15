/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package business;
import beans.Book;
import database.BookDAO;
import java.util.ArrayList;
/**
 *
 * @author Nathan
 */
public class BookBO {
    public static ArrayList<Book> getBooks(){
        return BookDAO.getBooks();
    }

    public static void insertBook(Book book) throws Exception{
        BookDAO.insertBook(book);
    }

    public static void deleteBook(long bookIsbn) throws Exception{
        BookDAO.deleteBook(bookIsbn);
    }
}
