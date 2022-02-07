/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.User;

/**
 *
 * @author User
 */
public interface DUser {
    public void register(User u);
    public User getUser(String un);
    public void updateUser(User u);
    
}
