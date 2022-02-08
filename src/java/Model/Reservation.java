/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author User
 */
public class Reservation {
    private String userName;
    private String bookingId;
    private int reserveTable;
    private int person;
    private double price;

    public Reservation() {
    }

    public Reservation(String userName, String bookingId, int reserveTable, int person, double price) {
        this.userName = userName;
        this.bookingId = bookingId;
        this.reserveTable = reserveTable;
        this.person = person;
        this.price = price;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getBookingId() {
        return bookingId;
    }

    public void setBookingId(String bookingId) {
        this.bookingId = bookingId;
    }

    public int getReserveTable() {
        return reserveTable;
    }

    public void setReserveTable(int reserveTable) {
        this.reserveTable = reserveTable;
    }

    public int getPerson() {
        return person;
    }

    public void setPerson(int person) {
        this.person = person;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    
    
    
}
