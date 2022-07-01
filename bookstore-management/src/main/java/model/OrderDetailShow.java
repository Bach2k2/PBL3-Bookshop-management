package model;

public class OrderDetailShow {
    private String Book_title;
    private int ID_Order = 0;
    private int ID_Product;
    private int ID_Cart;
    private int quantity;
    private double price;
    private double discountPrice = 0;
    private boolean status = false;
    private double Tinhtien;

    public int getID_Product() {
        return ID_Product;
    }

    public void setID_Product(int iD_Product) {
        ID_Product = iD_Product;
    }

    public String getBook_title() {
        return Book_title;
    }

    public void setBook_title(String book_title) {
        Book_title = book_title;
    }

    public int getID_Order() {
        return ID_Order;
    }

    public void setID_Order(int iD_Order) {
        ID_Order = iD_Order;
    }

    public int getID_Cart() {
        return ID_Cart;
    }

    public void setID_Cart(int iD_Cart) {
        ID_Cart = iD_Cart;
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

    public double getTinhtien() {
        double _Tinhtien = quantity * price;
        return _Tinhtien;
    }

    public void setTinhtien(double tinhtien) {
        Tinhtien = tinhtien;
    }

    public OrderDetailShow(String book_title, int iD_Order, int iD_Cart, int quantity, double price, double discountPrice,
                           boolean status, double tinhtien) {
        super();
        Book_title = book_title;
        ID_Order = iD_Order;
        ID_Cart = iD_Cart;
        this.quantity = quantity;
        this.price = price;
        this.discountPrice = discountPrice;
        this.status = status;
        Tinhtien = tinhtien;
    }

    public OrderDetailShow(String book_title, int iD_Order, int iD_Cart, int quantity, double price, boolean status, int iD_Product) {
        super();
        Book_title = book_title;
        ID_Order = iD_Order;
        ID_Cart = iD_Cart;
        this.quantity = quantity;
        this.price = price;
        this.status = status;
        this.ID_Product = iD_Product;
    }

}
