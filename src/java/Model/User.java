/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author User
 */
public class User {
    private String userName;
    private String name;
    private String password;
    private String email;
    private boolean isAdmin;
    private ArrayList<Order> order;

    public User() {
    }

    public User(String userName, String name, String password, String email) {
        this.userName = userName;
        this.name = name;
        this.password = password;
        this.email = email;
    }

    public User(String userName, String name, String password, String email, boolean isAdmin) {
        this.userName = userName;
        this.name = name;
        this.password = password;
        this.email = email;
        this.isAdmin = isAdmin;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }    
}
