/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DAOImpl;
import DAO.DMenu;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author khair
 */
@WebServlet(name = "DeleteMenuController", urlPatterns = {"/DeleteMenuController"})
public class DeleteMenuController extends HttpServlet {

   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        int menuCode = Integer.parseInt(request.getParameter("menuCode"));

        DMenu dao = new DAOImpl();
        dao.deleteMenu(menuCode);
        response.sendRedirect("GetAllMenuController");
    }

}

