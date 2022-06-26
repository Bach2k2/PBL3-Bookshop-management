package model;

import java.sql.Date;

public class Product {
    private int idProduct;
    private int quantity;
    private double price;
    private double averageRating;//4
  //  private int inventory;
    private String bookTitle;//6
    private String publisher;//7
    private String productDescription;//5
    private Date publishDate;//8
//    private String itemName;
//    private String itemBrand;

    private int idAuthor;
    private int idCategory;

    public Product() {
    }

    public Product(int idProduct, int quantity, double price, double averageRating, String bookTitle, String publisher, String productDescription, Date publishDate, int idAuthor, int categoryId) {
        this.idProduct = idProduct;
        this.quantity = quantity;
        this.price = price;
        this.averageRating = averageRating;
        this.bookTitle = bookTitle;
        this.publisher = publisher;
        this.productDescription = productDescription;
        this.publishDate = publishDate;
        this.idAuthor = idAuthor;
        this.idCategory = categoryId;
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

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public int getIdAuthor() {
        return idAuthor;
    }

    public void setIdAuthor(int idAuthor) {
        this.idAuthor = idAuthor;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }
}
