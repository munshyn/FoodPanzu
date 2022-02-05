/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Menu;
import java.util.List;

/**
 *
 * @author User
 */
public interface DMenu {
    public List<Menu> getAllMenu();
    public Menu getMenu(int mcd);
    public void insertMenu(Menu m);
    public void deleteMenu(int mcd);
    public void updateMenu(int mcd, Menu m);
    
}
