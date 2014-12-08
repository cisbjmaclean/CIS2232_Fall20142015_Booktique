 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;
import beans.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import util.ConnectionUtils;
import util.DbUtils;
/**
 *
 * @author Nathan Ryan
 */
public class BookDAO {
    public static void insertBook(Book book ) throws Exception {
        System.out.println("inserting book");
        PreparedStatement ps = null;
        String sql = null;
        Connection conn = null;

        /*
         * Setup the sql to update or insert the row.
         */
        try {
            conn = ConnectionUtils.getConnection();

            sql = "INSERT INTO `book`"
                    + "(`book_isbn`,"
                    + "`publisher_id`,"
                    + "`book_text`,"
                    + "`book_author`)"
                    + "VALUES (?, ?, ?, ?)";

            ps = conn.prepareStatement(sql);
            ps.setInt(1, book.getIsbn());
            ps.setInt(2, book.getPublisherId());
            ps.setString(3, book.getText());
            ps.setString(4, book.getAuthor());
            
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

    
    public static void deleteBook(int bookIsbn) throws Exception{
        
        System.out.println("deleting book");
        PreparedStatement ps = null;
        String sql = null;
        Connection conn = null;

        /*
         * Setup the sql to update or insert the row.
         */
        try {
            conn = ConnectionUtils.getConnection();

            sql = "delete from book "
                + "where book_isbn = ? ";

            ps = conn.prepareStatement(sql);
            ps.setInt(1, bookIsbn);

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
        

    
    public static ArrayList<Book> getBooks() {
        ArrayList<Book> books = new ArrayList();
        PreparedStatement ps = null;
        String sql = null;
        Connection conn = null;
        try {
            conn = ConnectionUtils.getConnection();

            sql = "SELECT * FROM book ";

            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Book newBook = new Book();
                newBook.setIsbn(rs.getInt("book_isbn"));
                newBook.setPublisherId(rs.getInt("publisher_id"));
                newBook.setText(rs.getString("book_text"));
                newBook.setAuthor(rs.getString("book_author"));
                books.add(newBook);
            }
        } catch (Exception e) {
            String errorMessage = e.getMessage();
            e.printStackTrace();
        } finally {
            DbUtils.close(ps, conn);
        }
        System.out.println("DEBUGGING-Found "+books.size()+" books");
        return books;
    }
}
