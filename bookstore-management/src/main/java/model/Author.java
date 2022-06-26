package model;

import java.util.Date;

public class Author {
    private int idAuthor;
    private String authorName;
    private Date dateOfBirth;
    private String description = "";

    public Author() {
    }
    public Author(int idAuthor, String authorName, Date dateOfBirth, String description) {
        this.idAuthor = idAuthor;
        this.authorName = authorName;
        this.dateOfBirth = dateOfBirth;
        this.description = description;
    }

    public int getIdAuthor() {
        return idAuthor;
    }

    public void setIdAuthor(int idAuthor) {
        this.idAuthor = idAuthor;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
