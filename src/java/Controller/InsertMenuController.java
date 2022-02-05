/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DAOImpl;
import DAO.DMenu;
import Model.Menu;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author khair
 */
@WebServlet(name = "InsertMenuController", urlPatterns = {"/InsertMenuController"})
public class InsertMenuController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
//        int menuCode = Integer.parseInt(request.getParameter("menuCode"));
        String fdName = request.getParameter("fdName");
        Double price = Double.parseDouble(request.getParameter("price"));
        int category = Integer.parseInt(request.getParameter("category"));
        
        Menu m = new Menu(fdName, price, category);
        
        DMenu dao = new DAOImpl();
        dao.insertMenu(m);
        response.sendRedirect("GetAllMenuController");
    }

}
