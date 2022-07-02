package model;

public class OrderDetailShow
{
    private String bookTitle;
    private int idOrder = 0;
    private int idProduct;
    private int idCart;
    private int quantity;
    private double price;
    private double discountPrice = 0;
    private boolean status = false;
    private double tinhtien;

    public int getIdProduct() {
        return idProduct;
    }
    public void setIdProduct(int iD_Product) {
        idProduct = iD_Product;
    }
    public String getBookTitle()
    {
        return bookTitle;
    }
    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }
    public int getIdOrder() {
        return idOrder;
    }
    public void setIdOrder(int iD_Order) {
        idOrder = iD_Order;
    }
    public int getIdCart() {
        return idCart;
    }
    public void setIdCart(int iD_Cart) {
        idCart = iD_Cart;
    }
    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public double getDiscountPrice() {
        return discountPrice;
    }
    public void setDiscountPrice(double discountPrice) {
        this.discountPrice = discountPrice;
    }
    public boolean isStatus() {
        return status;
    }
    public void setStatus(boolean status) {
        this.status = status;
    }
    public double getTinhTien()
    {
        double _Tinhtien = quantity * price;
        return _Tinhtien;
    }
    public void setTinhtien(double tinhtien) {
        this.tinhtien = tinhtien;
    }
    public OrderDetailShow(String bookTitle, int iD_Order, int iD_Cart, int quantity, double price, double discountPrice,
                           boolean status, double tinhtien) {
        super();
        this.bookTitle = bookTitle;
        idOrder = iD_Order;
        idCart = iD_Cart;
        this.quantity = quantity;
        this.price = price;
        this.discountPrice = discountPrice;
        this.status = status;
        this.tinhtien = tinhtien;
    }
    public OrderDetailShow(String bookTitle, int iD_Order, int iD_Cart, int quantity, double price, boolean status, int iD_Product) {
        super();
        this.bookTitle = bookTitle;
        idOrder = iD_Order;
        idCart = iD_Cart;
        this.quantity = quantity;
        this.price = price;
        this.status = status;
        this.idProduct = iD_Product;
    }

}