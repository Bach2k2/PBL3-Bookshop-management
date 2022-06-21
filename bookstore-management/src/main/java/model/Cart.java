package model;

public class Cart {
    private String idCart;
    private String idCustomer;
    private String idProduct;

    public Cart() {
    }

    public Cart(String idCart, String idCustomer, String idProduct) {
        this.idCart = idCart;
        this.idCustomer = idCustomer;
        this.idProduct = idProduct;
    }

    public String getIdCart() {
        return idCart;
    }

    public void setIdCart(String idCart) {
        this.idCart = idCart;
    }

    public String getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(String idCustomer) {
        this.idCustomer = idCustomer;
    }

    public String getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(String idProduct) {
        this.idProduct = idProduct;
    }
}
