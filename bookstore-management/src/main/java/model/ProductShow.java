package model;

import java.util.Date;

public class ProductShow {
    private int idProduct;
    private int quantity;
    private double price;
    private double averageRating;
    private String productDescription = "No description here";
    private String bookTitle;
    private String publisher;
    private Date publishDate;
    private String authorName;
    private String categoryName;

    public ProductShow() {
    }

    public ProductShow(int idProduct, int quantity, double price, double averageRating, String productDescription, String bookTitle, String publisher, Date publishDate, String authorName, String categoryName) {
        this.idProduct = idProduct;
        this.quantity = quantity;
        this.price = price;
        this.averageRating = averageRating;
        this.productDescription = productDescription;
        this.bookTitle = bookTitle;
        this.publisher = publisher;
        this.publishDate = publishDate;
        this.authorName = authorName;
        this.categoryName = categoryName;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
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

    public double getAverageRating() {
        return averageRating;
    }

    public void setAverageRating(double averageRating) {
        this.averageRating = averageRating;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
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

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
}

