package model;

import java.sql.Date;

public class lichsumuahang {
    private String Book_title;
    private int quantity;
    private double Total_price;
    private Date order_date;


    public lichsumuahang(String book_title, int quantity, double total_price, Date order_date) {
        super();
        Book_title = book_title;
        this.quantity = quantity;
        Total_price = total_price;
        this.order_date = order_date;
    }

    public String getBook_title() {
        return Book_title;
    }

    public void setBook_title(String book_title) {
        Book_title = book_title;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal_price() {
        return Total_price;
    }

    public void setTotal_price(double total_price) {
        Total_price = total_price;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }
}

