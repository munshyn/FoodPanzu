/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;

/**
 *
 * @author User
 */
public class Menu implements Serializable {
    private int menuCode;
    private String fdName;
    private double price;
    private int category;

    public Menu() {
    }

    public Menu(String fdName, double price, int category, int menuCode) {
        this.fdName = fdName;
        this.price = price;
        this.category = category;
        this.menuCode = menuCode;
    }
    
    public Menu(String fdName, double price, int category) {
        this.fdName = fdName;
        this.price = price;
        this.category = category;
    }

    public int getMenuCode() {
        return menuCode;
    }

    public void setMenuCode(int menuCode) {
        this.menuCode = menuCode;
    }

    public String getFdName() {
        return fdName;
    }

    public void setFdName(String fdName) {
        this.fdName = fdName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }
    
}
