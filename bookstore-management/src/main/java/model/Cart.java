package model;

public class Cart {
    private int idCart;
    private int idCustomer;
    private int idProduct;

    public Cart() {
    }

    public Cart(int idCart, int idCustomer, int idProduct) {
        this.idCart = idCart;
        this.idCustomer = idCustomer;
        this.idProduct = idProduct;
    }

    public int getIdCart() {
        return idCart;
    }

    public void setIdCart(int idCart) {
        this.idCart = idCart;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }
}
