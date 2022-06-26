package model;

public class Rating {
    private int idRating;
    private int idCustomer;
    private int idProduct;
    private int ratingStar;
    private String reviewText;

    public Rating() {
    }


    public Rating(int idRating, int idCustomer, int idProduct, int ratingStar, String reviewText) {
        this.idRating = idRating;
        this.idCustomer = idCustomer;
        this.idProduct = idProduct;
        this.ratingStar = ratingStar;
        this.reviewText = reviewText;
    }

    public int getIdRating() {
        return idRating;
    }

    public void setIdRating(int idRating) {
        this.idRating = idRating;
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

    public int getRatingStar() {
        return ratingStar;
    }

    public void setRatingStar(int ratingStar) {
        this.ratingStar = ratingStar;
    }

    public String getReviewText() {
        return reviewText;
    }

    public void setReviewText(String reviewText) {
        this.reviewText = reviewText;
    }
}
