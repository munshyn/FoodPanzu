/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBUtility.DBConnection;
import Model.Menu;
import Model.Order;
import Model.User;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

/**
 *
 * @author User
 */
public class DAOImpl implements DUser, DOrder, DMenu{
    
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    
    //User DAO implementation
    @Override
    public void register(User u) {
            try{
            String SQL = "INSERT INTO user (username, name, email, password, isAdmin) values (?, ?, ?, ?, ?)";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, u.getUserName());
            ps.setString(2, u.getName());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getPassword());
            ps.setBoolean(5, false);
            ps.executeUpdate();
            
        }catch (Exception ex){
            ex.printStackTrace(out);
        }    
    }

    @Override
    public User getUser(String un) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void updateUser(String un) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    //Order DAO implementation
    @Override
    public Order displayOrder() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void insertOrder(Menu m) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteOrder(String fdn) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void updateOrder(String fdn) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    //Menu DAO implementation
    @Override
    public List<Menu> getAllMenu() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Menu getMenu(String fdn) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void insertMenu(Menu m) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteMenu(String fdn) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void updateMenu(String fdn) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
