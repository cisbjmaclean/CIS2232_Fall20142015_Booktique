/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package business;
import beans.Publisher;
import database.PublisherDAO;
import java.util.ArrayList;
/**
 *
 * @author Nathan
 */
public class PublisherBO {
    public static ArrayList<Publisher> getPublishers(){
        return PublisherDAO.getPublishers();
    }

    public static void insertPublisher(Publisher publisher) throws Exception{
        PublisherDAO.insertPublisher(publisher);
    }

    public static void deletePublisher(int publisherId) throws Exception{
        PublisherDAO.deletePublisher(publisherId);
    }
}
