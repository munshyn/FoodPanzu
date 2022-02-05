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
    private String fdDesc;
    private String fdImage;
    private double price;
    private String category;

    public Menu() {
    }

    public Menu(String fdName, String fdDesc, String fdImage, double price, String category) {
        this.fdName = fdName;
        this.fdDesc = fdDesc;
        this.fdImage = fdImage;
        this.price = price;
        this.category = category;
    }

    public String getFdDesc() {
        return fdDesc;
    }

    public void setFdDesc(String fdDesc) {
        this.fdDesc = fdDesc;
    }

    public String getFdImage() {
        return fdImage;
    }

    public void setFdImage(String fdImage) {
        this.fdImage = fdImage;
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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
}
