/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author brandon
 */
public class Staff {
    private String firstName;
    private String lastName;
    private String email;
    private String phoneNumber;
    
    public Staff firstName(String name) {
        setFirstName(name);
        return this;
    }
    
    public Staff lastName(String name) {
        setLastName(name);
        return this;
    }
    
    public Staff email(String email) {
        setEmail(email);
        return this;
    }
    
    public Staff phoneNumber(String number) {
        setPhoneNumber(number);
        return this;
    }

    /*
    Below are the bean methods, used to create and 
    */
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
   
}
