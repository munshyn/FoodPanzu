/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import java.util.List;

/**
 *
 * @author User
 */
public class User implements Serializable {
    private String userName;
    private String name;
    private String password;
    private String email;
    private boolean isAdmin;

    public User() {
        this.userName ="";
        this.name = "";
        this.password = "";
        this.email = "";
    }
    

    public User(String userName, String name, String email, String password, boolean isAdmin) {
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
