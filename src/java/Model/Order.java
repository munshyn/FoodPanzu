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
public class Order implements Serializable {
    private int orderId;
    private List<Menu> menu;
    private double totalPrice;
    private int quantity;

    public Order() {
    }

    public Order(int orderId, List<Menu> menu, double totalPrice, int quantity) {
        this.orderId = orderId;
        this.menu = menu;
        this.totalPrice = totalPrice;
        this.quantity = quantity;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public List<Menu> getMenu() {
        return menu;
    }

    public void setMenu(List<Menu> menu) {
        this.menu = menu;
    }
    
    public void addOrder(Menu menu){
        this.menu.add(menu);
        quantity++;
        totalPrice+=menu.getPrice();
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
}
