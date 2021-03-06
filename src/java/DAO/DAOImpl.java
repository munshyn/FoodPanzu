/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBUtility.DBConnection;
import Model.Menu;
import Model.Order;
import Model.Reservation;
import Model.User;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class DAOImpl implements DUser, DOrder, DMenu, DReservation {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    //User DAO implementation
    @Override
    public void register(User u) {
        try {
            String SQL = "INSERT INTO user (username, name, email, password, isAdmin) values (?, ?, ?, ?, ?)";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, u.getUserName());
            ps.setString(2, u.getName());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getPassword());
            ps.setBoolean(5, u.isIsAdmin());
            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace(out);
        }
    }

    @Override
    public User getUser(String un) {
        User u = new User();
        try {
            String SQL = "SELECT * FROM user WHERE email=?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, un);
            rs = ps.executeQuery();

            while (rs.next()) {
                u.setUserName(rs.getString("username"));
                u.setName(rs.getString("name"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setIsAdmin(rs.getBoolean("isAdmin"));
            }
        } catch (Exception ex) {
            ex.printStackTrace(out);
        }

        return u;
    }

    @Override
    public void updateUser(User u) {
        try {
            String SQL = "Update user SET username=?,name=?,password=? WHERE email=?";
            conn = DBUtility.DBConnection.openConnection();
            ps = conn.prepareCall(SQL);
            ps.setString(1, u.getUserName());
            ps.setString(2, u.getName());
            ps.setString(3, u.getPassword());
            ps.setString(4, u.getEmail());
            ps.executeUpdate();

        } catch (Exception ex) {
        }
    }

    //Order DAO implementation
    @Override
    public void insertOrder(List<Order> o) {
        for (Order or : o) {
            try {
                String SQL = "INSERT INTO orders (bookingid, foodname, quantity) values (?, ?, ?)";
                conn = DBConnection.openConnection();
                ps = conn.prepareStatement(SQL);
                ps.setString(1, or.getBookingId());
                ps.setString(2, or.getMenu().getFdName());
                ps.setInt(3, or.getQuantity());
                ps.executeUpdate();

            } catch (Exception ex) {
                ex.printStackTrace(out);
            }
        }
    }

    //Menu DAO implementation
    @Override
    public List<Menu> getAllMenu() {
        List<Menu> ul = new ArrayList<>();
        try {
            String SQL = "SELECT * FROM menu ORDER BY category";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            rs = ps.executeQuery();

            while (rs.next()) {
                Menu u = new Menu();
                u.setMenuCode(rs.getInt("menuCode"));
                u.setFdName(rs.getString("fdName"));
                u.setFdDesc(rs.getString("fdDesc"));
                u.setFdImage(rs.getString("fdImage"));
                u.setPrice(rs.getDouble("price"));
                u.setCategory(rs.getString("category"));
                ul.add(u);
            }
        } catch (Exception ex) {
            ex.printStackTrace(out);
        }

        return ul;
    }

    @Override
    public Menu getMenu(int mcd) {
        Menu u = new Menu();
        try {
            String SQL = "SELECT * FROM Menu WHERE menuCode=?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setInt(1, mcd);
            rs = ps.executeQuery();

            while (rs.next()) {
                u.setMenuCode(rs.getInt("menuCode"));
                u.setFdName(rs.getString("fdName"));
                u.setFdDesc(rs.getString("fdDesc"));
                u.setFdImage(rs.getString("fdImage"));
                u.setPrice(rs.getDouble("price"));
                u.setCategory(rs.getString("category"));
            }
        } catch (Exception ex) {
            ex.printStackTrace(out);
        }

        return u;
    }

    @Override
    public void insertMenu(Menu m) {
        try {
            String SQL = "INSERT INTO menu (menuCode, fdName, fdDesc, fdImage, price, category) values (?, ?, ?, ?, ?, ?)";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setInt(1, m.getMenuCode());
            ps.setString(2, m.getFdName());
            ps.setString(3, m.getFdDesc());
            ps.setString(4, m.getFdImage());
            ps.setDouble(5, m.getPrice());
            ps.setString(6, m.getCategory());
            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace(out);
        }
    }

    @Override
    public void deleteMenu(int mcd) {
        try {
            String SQL = "DELETE FROM menu WHERE menuCode=?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setInt(1, mcd);
            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace(out);
        }
    }

    @Override
    public void updateMenu(int mcd, Menu m) {
        try {
            String SQL = "UPDATE menu SET fdName=?, fdDesc=?, fdImage=?, price=?, category=? WHERE menuCode=?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, m.getFdName());
            ps.setString(2, m.getFdDesc());
            ps.setString(3, m.getFdImage());
            ps.setDouble(4, m.getPrice());
            ps.setString(5, m.getCategory());
            ps.setInt(6, mcd);
            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace(out);
        }
    }

    @Override
    public void insertReservation(Reservation r) {
        try {
            String SQL = "INSERT INTO reservation (name, bookingid, reserveTable, person, price) values (?, ?, ?, ?, ?)";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, r.getUserName());
            ps.setString(2, r.getBookingId());
            ps.setInt(3, r.getReserveTable());
            ps.setInt(4, r.getPerson());
            ps.setDouble(5, r.getPrice());
            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace(out);
        }
    }

    @Override
    public List<Reservation> getAllReservation() {
        List<Reservation> rl = new ArrayList<>();
        try {
            String SQL = "SELECT * FROM reservation";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            rs = ps.executeQuery();

            while (rs.next()) {
                Reservation r = new Reservation();
                r.setUserName(rs.getString("name"));
                r.setBookingId(rs.getString("bookingid"));
                r.setReserveTable(rs.getInt("reserveTable"));
                r.setPerson(rs.getInt("person"));
                r.setPrice(rs.getDouble("price"));
                rl.add(r);
            }
        } catch (Exception ex) {
            ex.printStackTrace(out);
        }

        return rl;
    }

}
