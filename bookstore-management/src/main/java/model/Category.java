package model;

public class Category {
    private int idCategory;
    private String categoryName;
    private String description;

    public Category() {
    }

    public Category(int idCategory, String categoryName, String description) {
        this.idCategory = idCategory;
        this.categoryName = categoryName;
        this.description = description;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
