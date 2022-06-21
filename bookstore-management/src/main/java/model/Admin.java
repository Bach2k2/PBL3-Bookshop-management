package model;

public class Admin {
    private String idAdmin;
    private String username;
    private String adminName;
    private String email;
    private String phone;

    public Admin() {
    }

    public Admin(String idAdmin, String adminName, String email, String phone) {
        this.idAdmin = idAdmin;
        this.adminName = adminName;
        this.email = email;
        this.phone = phone;
    }

    public String getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(String idAdmin) {
        this.idAdmin = idAdmin;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
