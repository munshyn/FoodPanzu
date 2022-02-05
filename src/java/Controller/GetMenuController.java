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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author khair
 */
@WebServlet(name = "GetMenuController", urlPatterns = {"/GetMenuController"})
public class GetMenuController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
        int menuCode = Integer.parseInt(request.getParameter("menuCode"));
        
        DMenu dao = new DAOImpl();
        Menu m = dao.getMenu(menuCode);
        request.setAttribute("m", m);
        request.getRequestDispatcher("ViewMenu.jsp").forward(request, response);
    }

}
