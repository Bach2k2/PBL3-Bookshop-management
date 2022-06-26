package model;

public class OrderDetail {
    private int idProduct;
    private int idOrder;
    private int quantity;
    private double price;
    private double discountPrice;

    public OrderDetail() {
    }

    public OrderDetail(int idProduct, int idOrder, int quantity, double price, double discountPrice) {
        this.idProduct = idProduct;
        this.idOrder = idOrder;
        this.quantity = quantity;
        this.price = price;
        this.discountPrice = discountPrice;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
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
}
