package model;

import java.sql.Date;

public class Order {
    private int idOrder;
    private int idCustomer;
    private double totalPrice;
    private String orderStatus;
    private Date orderDate;
    private String phoneNumber;
    private Date deliveryDate;
    private String orderLocation;

    public Order() {
    }

    public Order(int idOrder, int idCustomer, double totalPrice, String orderStatus, Date orderDate, String phoneNumber, Date deliveryDate, String orderLocation) {
        this.idOrder = idOrder;
        this.idCustomer = idCustomer;
        this.totalPrice = totalPrice;
        this.orderStatus = orderStatus;
        this.orderDate = orderDate;
        this.phoneNumber = phoneNumber;
        this.deliveryDate = deliveryDate;
        this.orderLocation = orderLocation;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Date getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public String getOrderLocation() {
        return orderLocation;
    }

    public void setOrderLocation(String orderLocation) {
        this.orderLocation = orderLocation;
    }
}
