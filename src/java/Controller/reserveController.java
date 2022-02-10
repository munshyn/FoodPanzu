/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DAOImpl;
import DAO.DOrder;
import DAO.DReservation;
import Model.Order;
import Model.Reservation;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.lang.Math;
import java.util.ArrayList;

/**
 *
 * @author User
 */
@WebServlet(name = "reserveController", urlPatterns = {"/reserveController"})
public class reserveController extends HttpServlet {

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
            String name = request.getParameter("name");
            String bookingId = request.getParameter("bookingId");
            int reserveTable = Integer.parseInt(request.getParameter("reserveTable"));
            int person = Integer.parseInt(request.getParameter("person"));

            HttpSession orderSession = request.getSession(false);

            List<Order> o = (List<Order>) orderSession.getAttribute("o");
            double Price = 0;

            for (Order or : o) {
                or.setBookingId(bookingId);
                Price += or.getMenu().getPrice();
            }

            double totPrice = (double) Math.round(Price * 100.00) / 100.0;
            DOrder dorder = new DAOImpl();
            dorder.insertOrder(o);

            DReservation dreserve = new DAOImpl();
            Reservation r = new Reservation(name, bookingId, reserveTable, person, totPrice);

            dreserve.insertReservation(r);

            request.setAttribute("r", r);
            request.setAttribute("o", o);
            List<Order> newOrder = new ArrayList<>();
            orderSession.setAttribute("o", newOrder);
            request.getRequestDispatcher("receipt.jsp").forward(request, response);
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
