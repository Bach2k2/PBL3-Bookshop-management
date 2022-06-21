package model;

import java.sql.Date;

public class Product {
    private String idProduct;
    private int quantity;
    private double price;
    private int averageRating;
    private int inventory;
    private String idAuthor;
    private String genreName;
    private String bookTitle;
    private String publisher;
    private String bookDescription;
    private Date publishDate;
    private String itemName;
    private String itemBrand;

    public Product() {
    }

    public Product(String idProduct, int quantity, double price, int averageRating, int inventory, String idAuthor, String genreName, String bookTitle, String publisher, String bookDescription, String itemName, String itemBrand) {
        this.idProduct = idProduct;
        this.quantity = quantity;
        this.price = price;
        this.averageRating = averageRating;
        this.inventory = inventory;
        this.idAuthor = idAuthor;
        this.genreName = genreName;
        this.bookTitle = bookTitle;
        this.publisher = publisher;
        this.bookDescription = bookDescription;
        this.itemName = itemName;
        this.itemBrand = itemBrand;
    }

    public String getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(String idProduct) {
        this.idProduct = idProduct;
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

    public int getAverageRating() {
        return averageRating;
    }

    public void setAverageRating(int averageRating) {
        this.averageRating = averageRating;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public String getIdAuthor() {
        return idAuthor;
    }

    public void setIdAuthor(String idAuthor) {
        this.idAuthor = idAuthor;
    }

    public String getGenreName() {
        return genreName;
    }

    public void setGenreName(String genreName) {
        this.genreName = genreName;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getBookDescription() {
        return bookDescription;
    }

    public void setBookDescription(String bookDescription) {
        this.bookDescription = bookDescription;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getItemBrand() {
        return itemBrand;
    }

    public void setItemBrand(String itemBrand) {
        this.itemBrand = itemBrand;
    }
}
