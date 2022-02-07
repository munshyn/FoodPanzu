/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DAOImpl;
import DAO.DMenu;
import Model.Menu;
import Model.Order;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
@WebServlet(name = "addToCartController", urlPatterns = {"/addToCartController"})
public class addToCartController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int foodCode = Integer.parseInt(request.getParameter("foodCode"));

            DMenu dm = new DAOImpl();
            Menu m = dm.getMenu(foodCode);
            Order mo = new Order();
            mo.setMenu(m);
            mo.setQuantity(1);

//            List<Order> order = new ArrayList<>();
            HttpSession orderSession = request.getSession();

            List<Order> o = (List<Order>) orderSession.getAttribute("o");

            if (o == null) {
                o = new ArrayList<>();
                o.add(mo);
                orderSession.setAttribute("o", o);
                response.sendRedirect("homeController");
            } else {
                int i = o.indexOf(mo);
                if (i != -1) {
                    int qty = o.get(i).getQuantity();
                    qty++;
                    o.get(i).setQuantity(qty);
//                        orderSession.setAttribute("o", o);
//                        out.println(o.size());
                } else {
                    o.add(mo);
//                        orderSession.setAttribute("o", o);
//                        out.println(o.size());
                }
                orderSession.setAttribute("o", o);
                response.sendRedirect("homeController");
            }

        }
}

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
 * Handles the HTTP <code>GET</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */
@Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
        public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
