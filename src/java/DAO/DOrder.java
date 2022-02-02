/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Menu;
import Model.Order;

/**
 *
 * @author User
 */
public interface DOrder {
    public Order displayOrder();
    public void insertOrder(Menu m);
    public void deleteOrder(String fdn);
    public void updateOrder(String fdn);
}
